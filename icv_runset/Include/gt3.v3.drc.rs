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



rV3_1 @= { @ "V3.1 : Horizontal width of V3 >= 14 nm";
       internal1( aV3, < 0.014, extension = NONE, direction = HORIZONTAL);
}

rV3_2 @= { @ "V3.2 : Vertical height of V3 >= 21 nm";
       internal1( aV3, < 0.021, extension = NONE, direction = VERTICAL);
}

// not_inside_touching_edge + angle_edge
rV3_3 @= { @ "V3.3 : Vertical edges of V3 should align with M3";
        gV3_vert_edges = angle_edge( aV3, angles = 90);
        not_inside_touching_edge( gV3_vert_edges, aM3);
}

rV3_4 @= { @ "V3.4 : Horizontal edges of V3 should align with M4";
        gV3_horz_edges = angle_edge( aV3, angles = 0);
        not_inside_touching_edge( gV3_horz_edges, aM4);
}

// V3.5 minimum spacing between V3

// V3.6 minimum corner-to-corner spacing
rV3_6 @= { @ "V3.6 : V3 corner-to-corner spacing >= 18 nm";
        external_corner1( aV3, distance < 0.018, type = CONVEX_TO_CONVEX);
}

rV3_7 @= { @ "V3.7 : V3 must interact with M3";
        not_interacting( aV3, aM3, include_touch = NONE);
}

rV3_8 @= { @ "V3.8 : V3 must interact with M4";
        not_interacting( aV3, aM4, include_touch = NONE);
}


rV3_9 @= { @ "V3.M3.EN : V3 enclosure by M3 on opposite sides in the vertical direction >= 4 nm";
        enclose( aV3, aM3, < 0.004, extension = NONE, direction = VERTICAL);
}

rV3_10 @= { @ "V3.M4.EN : V3 enclosure by M4 on opposite sides in the horizontal direction >= 4 nm";
        enclose( aV3, aM4, < 0.004, extension = NONE, direction = HORIZONTAL);
}
