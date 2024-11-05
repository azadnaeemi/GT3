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


rGATE_1 @= { @ "GATE.1 : Exact horizontal width of GATE = 15 nm";
        gGATE1_check = internal1( aGATE, distance == 0.015, extension = NONE, direction = HORIZONTAL);
        aGATE not gGATE1_check;
}

// may give false DRC errors if the gates are not aligned
rGATE_2 @= { @ "GATE.2 : Exact horizontal spacing of GATE = 27 nm";
        gGATE2_check = external1( aGATE, distance == 0.027, extension = NONE, direction = HORIZONTAL);
        gGATE2_check_extent = layer_extent(aGATE);
        gGATE2_check_extent not aGATE not gGATE2_check;
        //aGATE not gGATE2_check;
        //external1( aGATE, distance == 0.027, extension = NONE, direction = HORIZONTAL);
}

// GATE.3 Gate must be continous

rGATE_4 @= { @ "GATE.4 : GATE must not bend";
        not_rectangles(aGATE);
}
