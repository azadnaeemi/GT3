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


rV1_1 @= { @ "V1.1 : Horizontal width of V1 >= 14 nm";
       internal1( aV1, < 0.014, extension = NONE, direction = HORIZONTAL);
}

rV1_2 @= { @ "V1.2 : Vertical height of V1 >= 12 nm";
       internal1( aV1, < 0.012, extension = NONE, direction = VERTICAL);
}

// not_inside_touching_edge + angle_edge
rV1_3 @= { @ "V1.3 : Vertical edges of V1 should align with M1";
        gV1_vert_edges = angle_edge( aV1, angles = 90);
        not_inside_touching_edge( gV1_vert_edges, aM1);
}

rV1_4 @= { @ "V1.4 : Horizontal edges of V1 should align with M2";
        gV1_horz_edges = angle_edge( aV1, angles = 0);
        not_inside_touching_edge( gV1_horz_edges, aM2);
}

// V1.5 minimum spacing between V1

// V1.6 minimum corner-to-corner spacing
rV1_6 @= { @ "V1.6 : V1 corner-to-corner spacing >= 18 nm";
        external_corner1( aV1, distance < 0.018, type = CONVEX_TO_CONVEX);
}

rV1_7 @= { @ "V1.7 : V1 must interact with M1";
        not_interacting( aV1, aM1, include_touch = NONE);
}

rV1_8 @= { @ "V1.8 : V1 must interact with M2";
        not_interacting( aV1, aM2, include_touch = NONE);
}


rV1_9 @= { @ "V1.M1.EN : V1 enclosure by M1 on opposite sides in the vertical direction >= 4 nm";
        enclose( aV1, aM1, < 0.004, extension = NONE, direction = VERTICAL);
}

rV1_10 @= { @ "V1.M2.EN : V1 enclosure by M2 on opposite sides in the horizontal direction >= 4 nm";
        enclose( aV1, aM2, < 0.004, extension = NONE, direction = HORIZONTAL);
}
