
======= simple.sol:SimpleStorage =======
EVM assembly:
    /* "simple.sol":25:505  contract SimpleStorage {... */
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
    /* "simple.sol":25:505  contract SimpleStorage {... */
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
        /* "simple.sol":25:505  contract SimpleStorage {... */
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
        /* "simple.sol":150:424  function set(uint x) {... */
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
        /* "simple.sol":150:424  function set(uint x) {... */
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
        /* "simple.sol":430:503  function get() constant returns (uint) {... */
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
        /* "simple.sol":430:503  function get() constant returns (uint) {... */
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
        /* "simple.sol":150:424  function set(uint x) {... */
    tag_6:
        /* "simple.sol":194:195  x */
      dup1
        /* "simple.sol":181:191  storedData */
      0x0
        /* "simple.sol":181:195  storedData = x */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":218:219  0 */
      0x0
        /* "simple.sol":205:215  someNumber */
      0x1
        /* "simple.sol":205:219  someNumber = 0 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":229:308  while (someNumber < (x/2)) {... */
    tag_11:
        /* "simple.sol":252:253  2 */
      0x2
        /* "simple.sol":250:251  x */
      dup2
        /* "simple.sol":250:253  x/2 */
      dup2
      iszero
      iszero
      tag_13
      jumpi
      invalid
    tag_13:
      div
        /* "simple.sol":236:246  someNumber */
      sload(0x1)
        /* "simple.sol":236:254  someNumber < (x/2) */
      lt
        /* "simple.sol":229:308  while (someNumber < (x/2)) {... */
      iszero
      tag_12
      jumpi
        /* "simple.sol":296:297  1 */
      0x1
        /* "simple.sol":283:293  someNumber */
      dup1
      sload
        /* "simple.sol":283:297  someNumber + 1 */
      add
        /* "simple.sol":270:280  someNumber */
      0x1
        /* "simple.sol":270:297  someNumber = someNumber + 1 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":229:308  while (someNumber < (x/2)) {... */
      jump(tag_11)
    tag_12:
        /* "simple.sol":317:356  hello = "Greetings from Simple Storage" */
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
        /* "simple.sol":317:322  hello */
      0x3
        /* "simple.sol":317:356  hello = "Greetings from Simple Storage" */
      swap1
      dup1
      mload
      swap1
      0x20
      add
      swap1
      tag_14
      swap3
      swap2
      swap1
      jump	// in(tag_15)
    tag_14:
      pop
        /* "simple.sol":395:398  100 */
      0x64
        /* "simple.sol":382:392  someNumber */
      sload(0x1)
        /* "simple.sol":382:398  someNumber + 100 */
      add
        /* "simple.sol":366:379  anotherNumber */
      0x2
        /* "simple.sol":366:398  anotherNumber = someNumber + 100 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":416:417  2 */
      0x2
        /* "simple.sol":412:413  x */
      dup2
        /* "simple.sol":412:417  x / 2 */
      dup2
      iszero
      iszero
      tag_16
      jumpi
      invalid
    tag_16:
      div
        /* "simple.sol":408:409  y */
      0x4
        /* "simple.sol":408:417  y = x / 2 */
      dup2
      swap1
      sstore
      pop
        /* "simple.sol":150:424  function set(uint x) {... */
      pop
      jump	// out
        /* "simple.sol":430:503  function get() constant returns (uint) {... */
    tag_9:
        /* "simple.sol":463:467  uint */
      0x0
        /* "simple.sol":486:496  storedData */
      dup1
      sload
        /* "simple.sol":479:496  return storedData */
      swap1
      pop
        /* "simple.sol":430:503  function get() constant returns (uint) {... */
      swap1
      jump	// out
        /* "simple.sol":25:505  contract SimpleStorage {... */
    tag_15:
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
      tag_19
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
      jump(tag_18)
    tag_19:
      dup3
      dup1
      add
      0x1
      add
      dup6
      sstore
      dup3
      iszero
      tag_18
      jumpi
      swap2
      dup3
      add
    tag_20:
      dup3
      dup2
      gt
      iszero
      tag_21
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
      jump(tag_20)
    tag_21:
    tag_18:
      pop
      swap1
      pop
      tag_22
      swap2
      swap1
      jump	// in(tag_23)
    tag_22:
      pop
      swap1
      jump	// out
    tag_23:
      tag_24
      swap2
      swap1
    tag_25:
      dup1
      dup3
      gt
      iszero
      tag_26
      jumpi
      0x0
      dup2
      0x0
      swap1
      sstore
      pop
      0x1
      add
      jump(tag_25)
    tag_26:
      pop
      swap1
      jump
    tag_24:
      swap1
      jump	// out

    auxdata: 0xa165627a7a723058204b15325b0cd3dbad88c7ebe9b3bc83f1f0051c66c357ca84b24cc2d103a1ce580029
}

