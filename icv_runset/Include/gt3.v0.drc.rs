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


rV0_1 @= { @ "V0.1 : Exact horizontal width of V0 = 14 nm";
       gV01_check = internal1( aV0, == 0.014, extension = NONE, direction = HORIZONTAL);
       aV0 not gV01_check;
}

rV0_2 @= { @ "V0.2 : Exact vertical width of V0 = 12 nm";
       gV02_check = internal1( aV0, == 0.012, extension = NONE, direction = VERTICAL);
       aV0 not gV02_check;
}

rV0_3 @= { @ "V0.3 : V0 must be rectangle";
        not_rectangles(aV0);
}

rV0_4 @= { @ "V0.4 : V0 must not be outside M0";
        not_inside( aV0, aM0, include_touch = ALL);
}

rV0_5 @= { @ "V0.5 : V0 must not be outside M1";
        not_inside(aV0, aM1, include_touch = ALL);
}

rV0_6 @= { @ "V0.6 : V0 corner-to-corner spacing >= 18 nm";
        external_corner1( aV0, distance < 0.018, type = CONVEX_TO_CONVEX);
}

// V0.7 minimum spacing of V0 on the same M0 track
rV0_7 @= { @ "V0.7 : Minimum spacing between V0 on the same M0 track >= 14nm";
}

rV0_8 @= { @ "V0.M0.1 : V0 enclosure by M0 on opposite sides in horizontal direction >= 4 nm";
        enclose( aV0, aM0, < 0.004, extension = NONE, direction = HORIZONTAL);
}

rV0_9 @= { @ "V0.M1.1 : V0 enclosure by M1 on opposite sides in vertical direction >= 4 nm";
        enclose(aV0, aM1, < 0.004, extension = NONE, direction = VERTICAL);
}

rV0_10 @= { @ "V0.7 : Vertical edges of V0 should align with M1";
        gV0_vert_edges = angle_edge( aV0, angles = 90);
        not_inside_touching_edge( gV0_vert_edges, aM1);
}

rV0_11 @= { @ "V0.8 : Horizontal edges of V0 should align with M0";
        gV0_horz_edges = angle_edge( aV0, angles = 0);
        not_inside_touching_edge( gV0_horz_edges, aM0);
}

