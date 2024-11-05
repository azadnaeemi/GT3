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

rDUMMY_1 @= { @ "DUMMY.1 : Exact horizontal width of DUMMY = 15 nm";
        gDUMMY1_check = internal1( aDUMMY, distance == 0.015, extension = NONE, direction = HORIZONTAL);
        aDUMMY not gDUMMY1_check;
}

rDUMMY_2 @= { @ "DUMMY.2 : DUMMY may not exist without GATE";
        not_interacting( aDUMMY, aGATE, include_touch = NONE);
}

rDUMMY_3 @= { @ "DUMMY.3 : DUMMY may not bend";
        not_rectangles( aDUMMY);
}

// exact overlap ensured if inside due to same width
rDUMMY_4 @= { @ "DUMMY.4 : DUMMY should exactly overlap GATE in the horizontal direction";
        not_inside( aDUMMY, aGATE, include_touch = ALL);
}

//rDUMMY_5 @= { @ "DUMMY.5 : DUMMY horizo"}

