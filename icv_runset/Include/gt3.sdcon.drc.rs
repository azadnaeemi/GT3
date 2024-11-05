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



rSDCON_1 @= { @ "SDCON.1 : Horizontal width of SDCON = 15 nm";
        gSDCON1_check = internal1( aSDCON, == 0.015, extension = NONE, direction = HORIZONTAL);
        aSDCON not gSDCON1_check;
}

// only for SDCON on different net, exceoptions for BPR connection to VDD/VSS
rSDCON_2 @= { @ "SDCON.2 : Vertical (TtT) spacing between SDCON >= 20 nm";
        external1( aSDCON, < 0.020, extension = NONE, direction = VERTICAL, connectivity = DIFFERENT_NET);
}

rSDCON_3 @= { @ "SDCON.3 : SDCON may not bend";
        not_rectangles( aSDCON);
}

rSDCON_4 @= { @ "SDCON.ACT.1 : Vertical extension of SDCON past ACT >= 5 nm";
        enclose( aACT, aSDCON, < 0.005, extension = NONE, direction = VERTICAL);
}

// checking only for < 6nm
rSDCON_5 @= { @ "SDCON.GATE.1 : Horizonal spacing between SDCON and GATE = 6 nm";
        external2( aSDCON, aGATE, < 0.006, extension = NONE, direction = HORIZONTAL);
        //gSDCON5_check = external2( aSDCON, aGATE, == 0.006, extension = NONE, direction = HORIZONTAL);
        //aSDCON not gSDCON5_check;
}
