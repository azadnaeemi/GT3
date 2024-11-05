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


rM6_1 @= { @ "M6.1 : Vertical width of M6 >= 38 nm";
        internal1(aM6, < 0.038, extension = NONE, direction = VERTICAL);
}

rM6_2 @= { @ "M6.2 : Horizontal length of M6 >= 55 nm";
        internal1(aM6, < 0.055, extension = NONE, direction = HORIZONTAL);
}

rM6_3 @= { @ "M6.3 : Vertical spacing between M6 layers >= 38 nm";
        external1(aM6, < 0.038, extension = NONE, direction = VERTICAL);
}

rM6_4 @= { @ "M6.4 : Horizontal (TtT) spacing between M6 layers on same track >= 55 nm";
        external1(aM6, < 0.055, extension = NONE, direction = HORIZONTAL);
}

rM6_5 @= { @ "M6.5 : M6 corner-to-corner spacing >= 45 nm";
        external_corner1( aM6, distance < 0.045, type = CONVEX_TO_CONVEX);
}

rM6_6 @= { @ "M6.6 : M6 must not bend";
        not_rectangles(aM6);
}
