//! A Quick and Dirty Demo to have something to present
#[macro_use] extern crate log;
extern crate pretty_env_logger;
extern crate edb_core;
extern crate clap;
extern crate web3;
#[macro_use] extern crate text_io;
extern crate ethabi;
extern crate bigint;
extern crate sputnikvm;
extern crate rustc_hex;
extern crate failure;

use edb_core::{Debugger, Solidity};
use failure::Error;
use clap::{Arg, App};
use sputnikvm::{ValidTransaction, HeaderParams, TransactionAction, VM};
use ethabi::{Address, Token};
use std::rc::Rc;
use std::str::FromStr;
use web3::futures::Future;
use web3::types::{BlockId, BlockNumber};
use web3::contract::{Contract, Options};
use std::time;
use rustc_hex::FromHex;
use std::path::PathBuf;

fn main() {
    let res = prog();

    match res {
        Ok(v) => println!("Exited without error"),
        Err(e) => {
            error!("{}", e);
            error!("Exited with error");
        }
    }
}


fn prog() -> Result<(), Error> {
    pretty_env_logger::init();
    let matches = App::new("Welcome to EDB -- The Demo")
        .version("0.0.1-pre-historic")
        .author("Andrew P. <aplaza@liquidthink.net>")
        .about("Debugs one solidity file")
        .arg(Arg::with_name("file")
             .short("f")
             .long("file")
             .value_name("FILE")
             .help("file to debug")
             .takes_value(true))
        .get_matches();

    let file_path = matches.value_of("file").unwrap();


    let (_eloop, http) = web3::transports::Http::new("http://localhost:8545").unwrap();
    let client = web3::Web3::new(http);
    let addr = deploy_simple(&client);
    let contract = ethabi::Contract::load(include_bytes!("./simple.abi") as &[u8]).expect("Could not load abi");
    let (header, tx) = create_mock_transactions(&client, addr, contract);

    println!("The file path is: {}", file_path);
    println!("Dropping into TUI");

    let mut file = Debugger::new(PathBuf::from(file_path), Solidity::default(), client, tx, header)?;

    file.set_breakpoint(11);
    file.run(Some("SimpleStorage"));
/*
    'main: loop {
        let current_input: String = read!();
        match current_input.as_str() {
            "q"|"quit"|"exit" => break 'main,
            "run" => {
                println!("Sending Mock Transaction");
                println!("Enter name of contract: ");
 //               let name: String = read!();
                file.run(Some("SimpleStorage"))?;
            },
            "step" => {
                file.step()?;
            },
            "step_back" => {
                // emul.fire(Action::StepBack).expect("Failed to step back");
                println!("Not yet");
            },
            "step_num" => {
                print!("enter number of steps to take ");
                // let steps: usize = read!();
                println!("Taking {} steps", steps);
                for i in 0..=3 {
                    file.step()?;
                }
            },
            "break" => {
                // println!("Enter Breakpoint:" );
                // let bp: usize = read!();
                println!("setting breakpoint at line: {}", bp);
                file.set_breakpoint(bp)?;
            }
            "print" => { // prints current line
                let (line, stri) = file.current_line()?;
                println!("{}: {}", line, stri);
            },
            "stack" => {
                /*emul.read_raw(|vm| {
                    let state = vm.current_state().expect("Could not acquire current state");
                    let stack = &state.stack;
                    for i in 0..stack.len() {
                        println!("{}, {:#x}", i, stack.peek(i).unwrap());
                    }
                    Ok(())
                });
                */
                println!("Nothing");
            },
            _=> { }
        };
    }
*/
    println!("Leaving EDB Demo. Bye!");
    Ok(())
}


fn create_mock_transactions(client: &web3::Web3<web3::transports::Http>, addr: web3::types::Address, abi: ethabi::Contract) -> (HeaderParams, ValidTransaction) {
    let set = abi.function("set").expect("no Set ABI").encode_input(&[ethabi::Token::Uint(web3::types::U256::from("1337"))]).expect("No Encode Input");
    let acc_one = get_account(client, 1);
    let tx = ValidTransaction {
        caller: Some(bigint::H160(acc_one.0)),
        gas_price: bigint::Gas::one(),
        gas_limit: bigint::Gas::from(10000000 as u64),
        action: TransactionAction::Call(bigint::H160(addr.0)),
        value: bigint::U256::zero(),
        input: Rc::new(set),
        nonce: bigint::U256::zero(),
    };
    (get_headers(client), tx)
}


fn deploy_simple(client: &web3::Web3<web3::transports::Http>) -> web3::types::Address {

    let accounts = client.eth().accounts().wait().expect("Could not get acounts");

    let balance = client.eth().balance(accounts[0], None).wait().expect("Could not get balance");
    let code: Vec<u8> = include_str!("./simple.bin")
        .from_hex()
        .unwrap();
    let contract = Contract::deploy(client.eth(), include_bytes!("./simple.abi"))
        .expect("Could not deploy step 1")
        .confirmations(0)
        .poll_interval(time::Duration::from_secs(10))
        .options(Options::with(|opt| {
            opt.gas = Some(3_000_000.into())
        }))
        .execute(code, (), accounts[0])
        .expect("Could not execute")
        .wait()
        .expect("Could not wait");
    info!("Contract Address: {:?}", contract.address());
    contract.address()
}

fn get_account(client: &web3::Web3<web3::transports::Http>, idx: usize) -> web3::types::Address {
    let accounts = client.eth().accounts().wait().expect("Could not get accounts");
    accounts[idx]
}


fn get_headers(client: &web3::Web3<web3::transports::Http>) -> HeaderParams {
    let block = client.eth().block(BlockId::Number(BlockNumber::Latest)).wait().expect("Could not get latest block").unwrap();
    let latest = client.eth().block_number().wait().unwrap();
    HeaderParams {
        beneficiary: bigint::H160(block.author.0),
        timestamp: block.timestamp.as_u64(),
        number: bigint::U256(latest.0),
        difficulty: bigint::U256(block.difficulty.0),
        gas_limit: bigint::Gas::from(block.gas_limit.as_u64())
    }
}


