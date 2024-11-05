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

rM0_1 @= { @ "M0.1 : Exact Vertical width of M0 = 12 nm";
	gM01_check = internal1( aM0, == 0.012, extension = NONE, direction = VERTICAL);	
        aM0 not gM01_check;
}

rM0_2 @= { @ "M0.2 : Minimum Horizontal width of M0 >= 24 nm";
	internal1( aM0, < 0.024, extension = NONE, direction = HORIZONTAL);
}

rM0_3 @= { @ "M0.3 : Minimum Vertical spacing of M0 >= 12 nm";
	external1(aM0, < 0.012, extension = RADIAL, direction = VERTICAL); 
}

rM0_4 @= { @ "M0.4 : Minimum Horizontal (TtT) spacing between two M0 layers on the same track >=17 nm";
        external1(aM0, < 0.017, extension = NONE, intersecting = { }, direction = HORIZONTAL, orientation = {PARALLEL}, look_thru = NONE);
}

rM0_5 @= { @ "M0.5 : M0 corner-to-corner spacing >= 15 nm";
        external_corner1( aM0, distance < 0.015, type = CONVEX_TO_CONVEX);
}

// M0.7 track pattern

rM0_6 @= { @ "M0.6 : M0 must not bend";
    not_rectangles(aM0);
}


