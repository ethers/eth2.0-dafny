/*
 * Copyright 2020 ConsenSys AG.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may 
 * not use this file except in compliance with the License. You may obtain 
 * a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software dis-
 * tributed under the License is distributed on an "AS IS" BASIS, WITHOUT 
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the 
 * License for the specific language governing permissions and limitations 
 * under the License.
 */

include "../utils/NativeTypes.dfy"
include "../utils/Eth2Types.dfy"

/**
 *  Integers serialisation, desrialisation.
 *
 */
module IntSeDes {

    import opened NativeTypes
    import opened Eth2Types

    //  Uintk serialisation and deserielisation.

    /** Uint8. */
    function method uint8ToBytes(n: uint8) : seq<Byte> 
        ensures |uint8ToBytes(n)| == 1
    {
        [n as Byte]
    }
 

    function method byteToUint8(b: Byte) : uint8
    {
        (b as uint8)
    }


    /** Encode/decode Uint8 yields Identity. */
    lemma uint8AsBytesInvolutive(n : uint8) 
        ensures byteToUint8(uint8ToBytes(n)[0]) == n
    {   //  Thanks Dafny
    }

}