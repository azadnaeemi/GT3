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


rV2_1 @= { @ "V2.1 : Horizontal width of V2 >= 14 nm";
       internal1( aV2, < 0.014, extension = NONE, direction = HORIZONTAL);
}

rV2_2 @= { @ "V2.2 : Vertical height of V2 >= 12 nm";
       internal1( aV2, < 0.012, extension = NONE, direction = VERTICAL);
}

rV2_3 @= { @ "V2.3 : Vertical edges of V2 should align with M3";
        gV2_vert_edges = angle_edge( aV2, angles = 90);
        not_inside_touching_edge( gV2_vert_edges, aM3);

}

rV2_4 @= { @ "V2.4 : Horizontal edges of V2 should align with M2";
        gV2_horz_edges = angle_edge( aV2, angles = 0);
        not_inside_touching_edge( gV2_horz_edges, aM2);
}

// V2.5 minimum spacing between V2

// V2.6 minimum corner-to-corner spacing
rV2_6 @= { @ "V2.6 : V2 corner-to-corner spacing >= 18 nm";
        external_corner1( aV2, distance < 0.018, type = CONVEX_TO_CONVEX);
}


rV2_7 @= { @ "V2.7 : V2 must interact with M2";
        not_interacting( aV2, aM2, include_touch = NONE);
}

rV2_8 @= { @ "V2.8 : V2 must interact with M3";
        not_interacting( aV2, aM3, include_touch = NONE);
}


rV2_9 @= { @ "V2.M2.EN : V2 enclosure by M2 on opposite sides in the horizontal direction >= 4 nm";
        enclose( aV2, aM2, < 0.004, extension = NONE, direction = HORIZONTAL);
}

rV2_10 @= { @ "V2.M3.EN : V2 enclosure by M3 on opposite sides in the vertical direction >= 4 nm";
        enclose( aV2, aM3, < 0.004, extension = NONE, direction = VERTICAL);
}
