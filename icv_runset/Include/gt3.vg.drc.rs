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



rVG_1 @= { @ "VG.1 : Exact horizontal width of VG = 15 nm";
        gVG1_check = internal1( aVG, == 0.015, extension = NONE, direction = HORIZONTAL);
        aVG not gVG1_check;
}

rVG_2 @= { @ "VG.2 : Exact vertical width of VG = 12 nm";
        gVG2_check = internal1( aVG, == 0.012, extension = NONE, direction = VERTICAL);
        aVG not gVG2_check;
}

rVG_3 @= { @ "VG.3 : VG must not interact with GCUT or DUMMY";
        gVG3_check = or(aGCUT, aDUMMY);
        interacting(aVG, gVG3_check, include_touch = ALL);
}

rVG_4 @= { @ "VG.4 : VG may not exist without GATE";
        not_interacting(aVG, aGATE, include_touch = NONE);
}

// not_inside might be sufficient as they have same min width
rVG_5 @= { @ "VG.5 : VG must completely lie inside GATE and its vertical edges must coincide with those of GATE";
        not_inside(aVG, aGATE, include_touch = ALL);
}


// VG.6 vertical spacing between VG

rVG_7 @= { @ "VG.7 : VG must be rectangle";
        not_rectangles(aVG);
}


// VG.GCUT.1 vertical spacing between VG and GCUT


rVG_9 @= { @ "VG.M0.1 : VG must completely lie inside M0";
        not_inside(aVG, aM0, include_touch = ALL);
}

rVG_10 @= { @ "VG.M0.2 : VG enclosure by M0 on two opposite sides in the horizontal direction: minimum 4 nm";
        enclose(aVG, aM0, < 0.004, extension = NONE, direction = HORIZONTAL);
}

// VG.M0.3 VG horizontal edges must align with M0 (may be redundant)

rVG_12 @= { @ "VG.ACT.1 : VG and ACT vertical spacing >= 6 nm";
        external2( aVG, aACT, distance < 0.006, extension = RADIAL, direction = VERTICAL);
}
