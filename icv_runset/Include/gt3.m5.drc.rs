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


rM5_1 @= { @ "M5.1 : Horizontal width of M5 >= 21 nm";
        internal1(aM5, < 0.021, extension = NONE, direction = HORIZONTAL);
}

rM5_2 @= { @ "M5.2 : Vertical length of M5 >= 42 nm";
        internal1(aM5, < 0.042, extension = NONE, direction = VERTICAL);
}

rM5_3 @= { @ "M5.3 : Horizontal spacing between M5 layers >= 21 nm";
        external1(aM5, < 0.021, extension = NONE, direction = HORIZONTAL);
}

rM5_4 @= { @ "M5.4 : Vertical (TtT) spacing between M5 layers on same track >= 30 nm";
        external1(aM5, < 0.030, extension = NONE, direction = VERTICAL);
}

rM5_5 @= { @ "M5.5 : M5 corner-to-corner spacing >= 24 nm";
        external_corner1( aM5, distance < 0.024, type = CONVEX_TO_CONVEX);
}

rM5_6 @= { @ "M5.6 : M5 must not bend";
        not_rectangles(aM5);
}
