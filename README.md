## Seriality

Seriality is a library for serializing and de-serializing all the Solidity types in a very efficient way which mostly written in solidity-assembly

---
#### Important points you need to know befor using this library:

* Seriality supports all the solidity types.
* Please be aware that this library is written with assembly and could be unsafe, so use it if you really know what you are doing and how you should use the library.

* The buffer size must be chosen very carefully, if you are not sure about that choose your biggest guess.

* You must start serializing from the end of the buffer as well as deserializing.

* You can use the SizeOf library independently to get the size of your variables.


#### Example :

```js

pragma solidity ^0.4.16;

import "./Seriality.sol";

contract SerialitySample is Seriality {

    function Test2() public returns(bytes memory out,int8 n1,int24 n2,uint32 n3,int128 n4,address n5,address n6) {
        
        bytes memory _buff = new bytes(64);
        int8    _n1 = -12;
        int24   _n2 = 838860;
        uint32  _n3 = 333333333;
        int128  _n4 = -44444444444;
        address _n5 = 0x15B7926835A7C2FD6D297E3ADECC5B45F7309F59;
        address _n6 = 0x1CB5CF010E407AFC6249627BFD769D82D8DBBF71;
        
        // Serializing
        uint _offst = 64;
        
        intToBytes(_offst,_n1,_buff);
        _offst -= sizeOfInt(8);
        
        intToBytes(_offst,_n2,_buff);
        _offst -= sizeOfUint(24);
        
        uintToBytes(_offst,_n3,_buff);
        _offst -= sizeOfInt(32);
        
        intToBytes(_offst,_n4,_buff);
        _offst -= sizeOfUint(128);
        
        addressToBytes(_offst,_n5,_buff);
        _offst -= sizeOfAddress();
        
        addressToBytes(_offst,_n6,_buff);
        
        out = _buff;
        // Deserializing
        _offst = 64; 
       
        n1 = bytesToInt8(_offst,_buff);
        _offst -= sizeOfInt(8);
        
        n2 = bytesToInt24(_offst,_buff);
        _offst -= sizeOfUint(24);
        
        n3 = bytesToUint8(_offst,_buff);
        _offst -= sizeOfInt(32);
        
        n4 = bytesToInt128(_offst,_buff);
        _offst -= sizeOfUint(128);
        
        n5 = bytesToAddress(_offst,_buff);
        _offst -= sizeOfAddress();
        
        n6 = bytesToAddress(_offst,_buff);

    }
```
    output buffer:
    
	1cb5cf010e407afc6249627bfd769d82d8dbbf7115b7926835a7c2fd6d297e3a
	decc5b45f7309f59fffffffffffffffffffffff5a6e798e413de43550cccccf4

```js
"1": "int8: 	n1 -12",
"2": "int24: 	n2 838860",
"3": "uint32: 	n3 85",
"4": "int128: 	n4 -44444444444",
"5": "address: 	n5 0x15b7926835a7c2fd6d297e3adecc5b45f7309f59",
"6": "address: 	n6 0x1cb5cf010e407afc6249627bfd769d82d8dbbf71"
```

#### Serializing types including string example :
```js
pragma solidity ^0.4.16;

import "./Seriality.sol";

contract SerialitySample is Seriality {
 function Test1() public returns(int n1, int8 n2, uint24 n3, string memory n4,string memory n5) {
        
    bytes memory _buff;
    string memory _n4 = new string(32);        
    string memory _n5 = new string(32);
    n4 = new string(32);
    n5 = new string(32);
    
    int     _n1 = 34444445;
    int8    _n2 = 87;
    uint24  _n3 = 76545;
    _n4 = "Copy kon lashi";
    _n5 = "Bia inja dahan service";
    
    uint buff_size = sizeOfInt(8) + sizeOfUint(24) +
    sizeOfString(_n5) + sizeOfString(_n4) + sizeOfInt(256);
    
    _buff = new  bytes(buff_size);
    
    // Serializing
    uint _offst = buff_size;
    
    intToBytes(_offst,_n2,_buff);
    _offst -= sizeOfInt(8);
    
    uintToBytes(_offst,_n3,_buff);
    _offst -= sizeOfUint(24);
    
    stringToBytes(_offst,bytes(_n5),_buff);
    _offst -= sizeOfString(_n5);
    
    stringToBytes(_offst,bytes(_n4),_buff);
    _offst -= sizeOfString(_n4);       
    
    intToBytes(_offst,_n1,_buff);
    
    out = _buff;
    
    // Deserializing
    _offst = buff_size; 
    
    n2 = bytesToInt8(_offst,_buff);
    _offst -= sizeOfInt(8);
    
    n3= bytesToUint24(_offst,_buff);
    _offst -= sizeOfUint(24);
    
    bytesToString(_offst,_buff,bytes(n5));
    _offst -= sizeOfString(_n5);
    
    bytesToString(_offst,_buff,bytes(n4));
    _offst -= sizeOfString(_n4);
    
    n1 = bytesToInt256(_offst,_buff);
  
    }
}	

```
output buffer :
```
00000000000000000000000000000000000000000000000000000000020d949d
436f7079206b6f6e206c61736869000000000000000000000000000000000000
000000000000000000000000000000000000000000000000000000000000000e
42696120696e6a6120646168616e207365727669636500000000000000000000
0000000000000000000000000000000000000000000000000000000000000016
012b0157


"1": int256: n1 34444445
"2": int8:   n2 87
"3": uint24: n3 76545
"4": string: n4 Copy kon lashi
"5": string: n5 Bia inja dahan service
```
