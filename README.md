## Seriality

Seriality is a mixture of libraries for serializing and de-serializing all the Solidity types in a very efficient way which mostly written in solidity-assembly

---
Some points you need to know befor using this library:

* Please be aware that this library is written with assembly and could be pretty unsafe, so use it if you really know what you are doing and how you should use the library.

* The buffer size must be chosen very carefully, if you are not sure about that choose your biggest guess.

* The must start serializing from end of buffer as well as deserializing.

* You can use the SizeOf library independently to get the size of your variables.

* You can use TypesToBytes and BytesToTypes together for unsafe casting too, but its not recommended.
