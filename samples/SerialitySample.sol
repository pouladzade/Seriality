pragma solidity ^0.4.16;

import "./Seriality.sol";

contract SerialitySample is Seriality {

      function Test1() public returns(int n1, int8 n2, uint24 n3, string memory n4,string memory n5) {
        
        bytes memory _buff = new  bytes(200);
        string memory _n4 = new string(32);        
        string memory _n5 = new string(32);
        n4 = new string(32);
        n5 = new string(32);

        int     _n1 = 34444445;
        int8    _n2 = 87;
        uint24  _n3 = 76545;
        _n4 = "Copy kon lashi";
        _n5 = "Bia inja dahan service";


        // Serializing
        uint _offst = 200;

        intToBytes(_offst,_n2,_buff);
        _offst -= sizeOfInt(8);

        uintToBytes(_offst,_n3,_buff);
        _offst -= sizeOfUint(24);

        stringToBytes(_offst,bytes(_n5),_buff);
        _offst -= sizeOfString(_n5);

        stringToBytes(_offst,bytes(_n4),_buff);
        _offst -= sizeOfString(_n4);       

        intToBytes(_offst,_n1,_buff);
        _offst -= sizeOfInt(256);

        // Deserializing
        _offst = 200; 
            
        n2 = bytesToInt8(_offst,_buff);
        _offst -= sizeOfInt(8);

        n3= bytesToUint24(_offst,_buff);
        _offst -= sizeOfUint(24);

        bytesToString(_offst,_buff,bytes(n5));
        _offst -= sizeOfString(_n5);

        bytesToString(_offst,_buff,bytes(n4));
        _offst -= sizeOfString(_n4);

        n1 = bytesToInt256(_offst,_buff);
        _offst -= sizeOfInt(256);

    }
    
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
    
}
//