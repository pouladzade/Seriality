pragma solidity ^0.4.16;

import "./BytesToTypes.sol";
import "./TypesToBytes.sol";
import "./SizeOf.sol";

contract ByteCasting {

    function ByteCasting() public {
        
    }
   
    function Test1() public returns(bytes out,string _outS3,uint16 _out2, int240 _out3,int8 _out4, int56 _out5) {

        bytes memory _buff = new  bytes(256);
        string memory _str = new string(32);
        _outS3 = new string(SizeOf.sizeOfString(_str));
        
        _str = " Salam bar hameye lashi ha";
        uint    _offst ;
        uint16 _in2 = 123;
        int240 _in3 = 768687686868;
        int8   _in4 = -12;
        int56  _in5 = -9999;
        
        
        
        // Serializing
        _offst = 256;
        
        TypesToBytes.int240ToBytes(_offst,_in3,_buff);
         _offst -= SizeOf.sizeOfInt240();
        
         TypesToBytes.int8ToBytes(_offst,_in4,_buff);
         _offst -= SizeOf.sizeOfInt8();
                 
        TypesToBytes.uint16ToBytes(_offst,_in2,_buff);
         _offst -= SizeOf.sizeOfUint16();
         
        TypesToBytes.stringToBytes(_offst,bytes(_str),_buff);
        _offst -= SizeOf.sizeOfString(_str);
        
        TypesToBytes.int56ToBytes(_offst,_in5,_buff);
         _offst -= SizeOf.sizeOfInt56();
         
        out = _buff;

        // Deserializing
        _offst = 256;

        _out3 = BytesToTypes.bytesToInt240(_offst,_buff);
        _offst -= SizeOf.sizeOfInt240();

        _out4 = BytesToTypes.bytesToInt8(_offst,_buff);
        _offst -= SizeOf.sizeOfInt8();
        
        _out2 = BytesToTypes.bytesToUint16(_offst,_buff);
        _offst -= SizeOf.sizeOfUint16();
        
        BytesToTypes.bytesToString(_offst,_buff,bytes(_outS3));
        _offst -= SizeOf.sizeOfString(_str);
        
        _out5 = BytesToTypes.bytesToInt56(_offst,_buff);
        _offst -= SizeOf.sizeOfInt56();


    }
    
}
