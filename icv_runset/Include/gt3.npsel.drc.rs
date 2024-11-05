// BSD 3-Clause License
//
// Copyright 2024 Piyush Kumar, Da Eun Shim, Azad Naeemi, or Georgia Institute of Technology
//
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, 
// this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice, 
// this list of conditions and the following disclaimer in the documentation 
// and/or other materials provided with the distribution.
//
// 3. Neither the name of the copyright holder nor the names of its contributors 
// may be used to endorse or promote products derived from this software without 
// specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” 
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE 
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.



rNSEL_1 @={ @ "NSEL.1 : Minimum vertical width of NSEL >= 72 nm";
        internal1( aNSEL, distance < 0.072, extension = NONE, direction = VERTICAL);
}

rNSEL_2 @={ @ "NSEL.2 : Minimum horizontal width of NSEL >= 84 nm";
        internal1( aNSEL, distance < 0.084, extension = NONE, direction = HORIZONTAL);
}

rNSEL_3 @={ @ "NSEL.3 : Minimum enclosure of ACT by NSEL in the vertical direction >= 15 nm";
        enclose( aACT, aNSEL, distance < 0.015, extension = NONE, direction = VERTICAL);
}


rPSEL_1 @={ @ "PSEL.1 : Minimum vertical width of PSEL >= 72 nm";
        internal1( aPSEL, distance < 0.072, extension = NONE, direction = VERTICAL);
}

rPSEL_2 @={ @ "PSEL.2 : Minimum horizontal width of PSEL >= 84 nm";
        internal1( aPSEL, distance < 0.084, extension = NONE, direction = HORIZONTAL);
}

rPSEL_3 @={ @ "PSEL.3 : Minimum enclosure of ACT by PSEL in the vertical direction >= 15 nm";
        enclose( aACT, aPSEL, distance < 0.015, extension = NONE, direction = VERTICAL);
}


rNSEL_PSEL_1 @= { @ "NSEL.PSEL.1 : NSEL and PSEL should not overlap";
        interacting( aNSEL, aPSEL, include_touch = NONE);
}
