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


rM4_1 @= { @ "M4.1 : Vertical width of M4 >= 21 nm";
        internal1(aM4, < 0.021, extension = NONE, direction = VERTICAL);
}

rM4_2 @= { @ "M4.2 : Horizontal length of M4 >= 42 nm";
        internal1(aM4, < 0.042, extension = NONE, direction = HORIZONTAL);
}

rM4_3 @= { @ "M4.3 : Vertical spacing between M4 layers >= 21 nm";
        external1(aM4, < 0.021, extension = NONE, direction = VERTICAL);
}

rM4_4 @= { @ "M4.4 : Horizontal (TtT) spacing between M4 layers on same track >= 30 nm";
        external1(aM4, < 0.030, extension = NONE, direction = HORIZONTAL);
}

rM4_5 @= { @ "M4.5 : M4 corner-to-corner spacing >= 24 nm";
        external_corner1( aM4, distance < 0.024, type = CONVEX_TO_CONVEX);
}

rM4_6 @= { @ "M4.6 : M4 must not bend";
        not_rectangles(aM4);
}
