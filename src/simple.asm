
======= simple.sol:SimpleStorage =======
EVM assembly:
    /* "simple.sol":26:634  contract SimpleStorage {... */
  mstore(0x40, 0x80)
  callvalue
    /* "--CODEGEN--":8:17   */
  dup1
    /* "--CODEGEN--":5:7   */
  iszero
  tag_1
  jumpi
    /* "--CODEGEN--":30:31   */
  0x0
    /* "--CODEGEN--":27:28   */
  dup1
    /* "--CODEGEN--":20:32   */
  revert
    /* "--CODEGEN--":5:7   */
tag_1:
    /* "simple.sol":26:634  contract SimpleStorage {... */
  pop
  dataSize(sub_0)
  dup1
  dataOffset(sub_0)
  0x0
  codecopy
  0x0
  return
stop

sub_0: assembly {
        /* "simple.sol":26:634  contract SimpleStorage {... */
      mstore(0x40, 0x80)
      jumpi(tag_1, lt(calldatasize, 0x4))
      calldataload(0x0)
      0x100000000000000000000000000000000000000000000000000000000
      swap1
      div
      0xffffffff
      and
      dup1
      0x60fe47b1
      eq
      tag_2
      jumpi
      dup1
      0x6d4ce63c
      eq
      tag_3
      jumpi
    tag_1:
      0x0
      dup1
      revert
        /* "simple.sol":140:550  function set(uint x) public {... */
    tag_2:
      callvalue
        /* "--CODEGEN--":8:17   */
      dup1
        /* "--CODEGEN--":5:7   */
      iszero
      tag_4
      jumpi
        /* "--CODEGEN--":30:31   */
      0x0
        /* "--CODEGEN--":27:28   */
      dup1
        /* "--CODEGEN--":20:32   */
      revert
        /* "--CODEGEN--":5:7   */
    tag_4:
        /* "simple.sol":140:550  function set(uint x) public {... */
      pop
      tag_5
      0x4
      dup1
      calldatasize
      sub
      dup2
      add
      swap1
      dup1
      dup1
      calldataload
      swap1
      0x20
      add
      swap1
      swap3
      swap2
      swap1
      pop
      pop
      pop
      jump(tag_6)
    tag_5:
      stop
        /* "simple.sol":556:632  function get() view public returns (uint) {... */
    tag_3:
      callvalue
        /* "--CODEGEN--":8:17   */
      dup1
        /* "--CODEGEN--":5:7   */
      iszero
      tag_7
      jumpi
        /* "--CODEGEN--":30:31   */
      0x0
        /* "--CODEGEN--":27:28   */
      dup1
        /* "--CODEGEN--":20:32   */
      revert
        /* "--CODEGEN--":5:7   */
    tag_7:
        /* "simple.sol":556:632  function get() view public returns (uint) {... */
      pop
      tag_8
      jump(tag_9)
    tag_8:
      mload(0x40)
      dup1
      dup3
      dup2
      mstore
      0x20
      add
      swap2
      pop
      pop
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
        /* "simple.sol":140:550  function set(uint x) public {... */
    tag_6:
        /* "simple.sol":178:184  uint y */
      0x0
        /* "simple.sol":207:208  x */
      dup2
        /* "simple.sol":194:204  storedData */
      0x0
        /* "simple.sol":194:208  storedData = x */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":231:232  0 */
      0x0
        /* "simple.sol":218:228  someNumber */
      0x1
        /* "simple.sol":218:232  someNumber = 0 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":242:322  while (someNumber < (10/2)) {... */
    tag_11:
        /* "simple.sol":263:267  10/2 */
      0x5
        /* "simple.sol":249:259  someNumber */
      sload(0x1)
        /* "simple.sol":249:268  someNumber < (10/2) */
      lt
        /* "simple.sol":242:322  while (someNumber < (10/2)) {... */
      iszero
      tag_12
      jumpi
        /* "simple.sol":310:311  1 */
      0x1
        /* "simple.sol":297:307  someNumber */
      dup1
      sload
        /* "simple.sol":297:311  someNumber + 1 */
      add
        /* "simple.sol":284:294  someNumber */
      0x1
        /* "simple.sol":284:311  someNumber = someNumber + 1 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":242:322  while (someNumber < (10/2)) {... */
      jump(tag_11)
    tag_12:
        /* "simple.sol":331:370  hello = "Greetings from Simple Storage" */
      0x40
      dup1
      mload
      swap1
      dup2
      add
      0x40
      mstore
      dup1
      0x1d
      dup2
      mstore
      0x20
      add
      0x4772656574696e67732066726f6d2053696d706c652053746f72616765000000
      dup2
      mstore
      pop
        /* "simple.sol":331:336  hello */
      0x3
        /* "simple.sol":331:370  hello = "Greetings from Simple Storage" */
      swap1
      dup1
      mload
      swap1
      0x20
      add
      swap1
      tag_13
      swap3
      swap2
      swap1
      jump	// in(tag_14)
    tag_13:
      pop
        /* "simple.sol":409:412  100 */
      0x64
        /* "simple.sol":396:406  someNumber */
      sload(0x1)
        /* "simple.sol":396:412  someNumber + 100 */
      add
        /* "simple.sol":380:393  anotherNumber */
      0x2
        /* "simple.sol":380:412  anotherNumber = someNumber + 100 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":430:431  2 */
      0x2
        /* "simple.sol":426:427  x */
      dup3
        /* "simple.sol":426:431  x / 2 */
      dup2
      iszero
      iszero
      tag_15
      jumpi
      invalid
    tag_15:
      div
        /* "simple.sol":422:431  y = x / 2 */
      swap1
      pop
        /* "simple.sol":449:462  anotherNumber */
      sload(0x2)
        /* "simple.sol":445:446  y */
      dup2
        /* "simple.sol":445:462  y > anotherNumber */
      gt
        /* "simple.sol":441:517  if (y > anotherNumber) {... */
      iszero
      tag_16
      jumpi
        /* "simple.sol":478:506  hello = "Hello Greater Than" */
      0x40
      dup1
      mload
      swap1
      dup2
      add
      0x40
      mstore
      dup1
      0x12
      dup2
      mstore
      0x20
      add
      0x48656c6c6f2047726561746572205468616e0000000000000000000000000000
      dup2
      mstore
      pop
        /* "simple.sol":478:483  hello */
      0x3
        /* "simple.sol":478:506  hello = "Hello Greater Than" */
      swap1
      dup1
      mload
      swap1
      0x20
      add
      swap1
      tag_17
      swap3
      swap2
      swap1
      jump	// in(tag_14)
    tag_17:
      pop
        /* "simple.sol":441:517  if (y > anotherNumber) {... */
    tag_16:
        /* "simple.sol":539:543  4919 */
      0x1337
        /* "simple.sol":526:536  storedData */
      0x0
        /* "simple.sol":526:543  storedData = 4919 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":140:550  function set(uint x) public {... */
      pop
      pop
      jump	// out
        /* "simple.sol":556:632  function get() view public returns (uint) {... */
    tag_9:
        /* "simple.sol":592:596  uint */
      0x0
        /* "simple.sol":615:625  storedData */
      dup1
      sload
        /* "simple.sol":608:625  return storedData */
      swap1
      pop
        /* "simple.sol":556:632  function get() view public returns (uint) {... */
      swap1
      jump	// out
        /* "simple.sol":26:634  contract SimpleStorage {... */
    tag_14:
      dup3
      dup1
      sload
      0x1
      dup2
      0x1
      and
      iszero
      0x100
      mul
      sub
      and
      0x2
      swap1
      div
      swap1
      0x0
      mstore
      keccak256(0x0, 0x20)
      swap1
      0x1f
      add
      0x20
      swap1
      div
      dup2
      add
      swap3
      dup3
      0x1f
      lt
      tag_20
      jumpi
      dup1
      mload
      not(0xff)
      and
      dup4
      dup1
      add
      or
      dup6
      sstore
      jump(tag_19)
    tag_20:
      dup3
      dup1
      add
      0x1
      add
      dup6
      sstore
      dup3
      iszero
      tag_19
      jumpi
      swap2
      dup3
      add
    tag_21:
      dup3
      dup2
      gt
      iszero
      tag_22
      jumpi
      dup3
      mload
      dup3
      sstore
      swap2
      0x20
      add
      swap2
      swap1
      0x1
      add
      swap1
      jump(tag_21)
    tag_22:
    tag_19:
      pop
      swap1
      pop
      tag_23
      swap2
      swap1
      jump	// in(tag_24)
    tag_23:
      pop
      swap1
      jump	// out
    tag_24:
      tag_25
      swap2
      swap1
    tag_26:
      dup1
      dup3
      gt
      iszero
      tag_27
      jumpi
      0x0
      dup2
      0x0
      swap1
      sstore
      pop
      0x1
      add
      jump(tag_26)
    tag_27:
      pop
      swap1
      jump
    tag_25:
      swap1
      jump	// out

    auxdata: 0xa165627a7a72305820e16123d81e9ff05c7eaca4a3414506cf214c1fe8a1b228619245c1851a4157a60029
}

