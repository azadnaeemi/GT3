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


rM1_1 @= { @ "M1.1 : Horizontal width of M1 >= 14 nm";
        internal1(aM1, < 0.014, extension = NONE, direction = HORIZONTAL);
}

rM1_2 @= { @ "M1.2 : Vertical length of M1 >= 28 nm";
        internal1(aM1, < 0.028, extension = NONE, direction = VERTICAL);
}

rM1_3 @= { @ "M1.3 : Horizontal spacing between M1 layers >= 14 nm";
        external1(aM1, < 0.014, extension = NONE, direction = HORIZONTAL);
}

rM1_4 @= { @ "M1.4 : Vertical (TtT) spacing between M1 layers on same track >= 20 nm";
        external1(aM1, < 0.020, extension = NONE, direction = VERTICAL);
}

// M1.5 Corner to corner spacing between M1 layers
rM1_5 @= { @ "M1.5 : M1 corner-to-corner spacing >= 16 nm";
        external_corner1( aM1, distance < 0.016, type = CONVEX_TO_CONVEX);
}

rM1_6 @= { @ "M1.6 : M1 must not bend";
        not_rectangles(aM1);
}