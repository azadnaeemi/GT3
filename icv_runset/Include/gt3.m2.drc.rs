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


rM2_1 @= { @ "M2.1 : Vertical width of M2 >= 12 nm";
        internal1(aM2, < 0.012, extension = NONE, direction = VERTICAL);
}

rM2_2 @= { @ "M2.2 : Horizontal length of M2 >= 24 nm";
        internal1(aM2, < 0.024, extension = NONE, direction = HORIZONTAL);
}

rM2_3 @= { @ "M2.3 : Vertical spacing between M2 layers >= 12 nm";
        external1(aM2, < 0.012, extension = NONE, direction = VERTICAL);
}

rM2_4 @= { @ "M2.4 : Horizontal (TtT) spacing between M2 layers on same track >= 17 nm";
        external1(aM2, < 0.017, extension = NONE, direction = HORIZONTAL);
}

rM2_5 @= { @ "M2.5 : M2 corner-to-corner spacing >= 15 nm";
        external_corner1( aM2, distance < 0.015, type = CONVEX_TO_CONVEX);
}

rM2_6 @= { @ "M2.6 : M2 must not bend";
        not_rectangles(aM2);
}
