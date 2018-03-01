pragma solidity ^0.4.19;

/**
 * @title TypesToBytes
 * @dev The TypesToBytes library converts the standard solidity types to the byte array
 * @author pouladzade@gmail.com
 */

contract TypesToBytes {
 
    function addressToBytes(uint _offst, address _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }

    function boolToBytes(uint _offst, bool _input, bytes _output) public pure {
        uint8 x = _input == false ? 0 : 1;
        assembly {
            mstore(add(_output, _offst), x)
        }
    }
    
    function stringToBytes(uint _offst, bytes _input, bytes _output) public  {
        uint256 stack_size = _input.length / 32;
        if(_input.length % 32 > 0) stack_size++;
        
        assembly {
            let index := 0
            stack_size := add(stack_size,1)//adding because of 32 first bytes as the length
        loop:
            
            mstore(add(_output, _offst), mload(add(_input,mul(index,32))))
            _offst := sub(_offst , 32)
            index := add(index ,1)
            jumpi(loop , lt(index,stack_size))
        }
    }

    function int8ToBytes(uint _offst, int8 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 
    
    function uint8ToBytes(uint _offst, uint8 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int16ToBytes(uint _offst, int16 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint16ToBytes(uint _offst, uint16 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int24ToBytes(uint _offst, int24 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint24ToBytes(uint _offst, uint24 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int32ToBytes(uint _offst, int32 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint32ToBytes(uint _offst, uint32 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int40ToBytes(uint _offst, int40 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint40ToBytes(uint _offst, uint40 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int48ToBytes(uint _offst, int48 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint48ToBytes(uint _offst, uint48 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int56ToBytes(uint _offst, int56 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint56ToBytes(uint _offst, uint56 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int64ToBytes(uint _offst, int64 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint64ToBytes(uint _offst, uint64 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int72ToBytes(uint _offst, int72 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint72ToBytes(uint _offst, uint72 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int80ToBytes(uint _offst, int80 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint80ToBytes(uint _offst, uint80 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int88ToBytes(uint _offst, int88 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint88ToBytes(uint _offst, uint88 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int96ToBytes(uint _offst, int96 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint96ToBytes(uint _offst, uint96 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 
   
    function int104ToBytes(uint _offst, int104 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint104ToBytes(uint _offst, uint104 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int112ToBytes(uint _offst, int112 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint112ToBytes(uint _offst, uint112 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int120ToBytes(uint _offst, int120 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint120ToBytes(uint _offst, uint120 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int128ToBytes(uint _offst, int128 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint128ToBytes(uint _offst, uint128 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int136ToBytes(uint _offst, int136 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint136ToBytes(uint _offst, uint136 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int144ToBytes(uint _offst, int144 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint144ToBytes(uint _offst, uint144 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int152ToBytes(uint _offst, int152 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint152ToBytes(uint _offst, uint152 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int160ToBytes(uint _offst, int160 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint160ToBytes(uint _offst, uint160 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int168ToBytes(uint _offst, int168 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint168ToBytes(uint _offst, uint168 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int176ToBytes(uint _offst, int176 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint176ToBytes(uint _offst, uint176 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int184ToBytes(uint _offst, int184 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint184ToBytes(uint _offst, uint184 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int192ToBytes(uint _offst, int192 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint192ToBytes(uint _offst, uint192 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int200ToBytes(uint _offst, int200 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint200ToBytes(uint _offst, uint200 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int208ToBytes(uint _offst, int208 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint208ToBytes(uint _offst, uint208 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int216ToBytes(uint _offst, int216 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint216ToBytes(uint _offst, uint216 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int224ToBytes(uint _offst, int224 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint224ToBytes(uint _offst, uint224 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int232ToBytes(uint _offst, int232 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint232ToBytes(uint _offst, uint232 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 

    function int240ToBytes(uint _offst, int240 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint240ToBytes(uint _offst, uint240 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 
    function int248ToBytes(uint _offst, int248 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint248ToBytes(uint _offst, uint248 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    } 	

    function int256ToBytes(uint _offst, int256 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }
    
    function uint256ToBytes(uint _offst, uint256 _input, bytes _output) public pure {

        assembly {
            mstore(add(_output, _offst), _input)
        }
    }    

}
