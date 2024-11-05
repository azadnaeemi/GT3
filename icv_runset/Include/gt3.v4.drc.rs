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


rV4_1 @= { @ "V4.1 : Horizontal width of V4 >= 21 nm";
       internal1( aV4, < 0.021, extension = NONE, direction = HORIZONTAL);
}

rV4_2 @= { @ "V4.2 : Vertical height of V4 >= 21 nm";
       internal1( aV4, < 0.021, extension = NONE, direction = VERTICAL);
}

rV4_3 @= { @ "V4.3 : Vertical edges of V4 should align with M5";
        gV4_vert_edges = angle_edge( aV4, angles = 90);
        not_inside_touching_edge( gV4_vert_edges, aM5);

}

rV4_4 @= { @ "V4.4 : Horizontal edges of V4 should align with M4";
        gV4_horz_edges = angle_edge( aV4, angles = 0);
        not_inside_touching_edge( gV4_horz_edges, aM4);
}

// V4.5 minimum spacing between V4

// V4.6 minimum corner-to-corner spacing
rV4_6 @= { @ "V4.6 : V4 corner-to-corner spacing >= 27 nm";
        external_corner1( aV4, distance < 0.027, type = CONVEX_TO_CONVEX);
}


rV4_7 @= { @ "V4.7 : V4 must interact with M4";
        not_interacting( aV4, aM4, include_touch = NONE);
}

rV4_8 @= { @ "V4.8 : V4 must interact with M5";
        not_interacting( aV4, aM5, include_touch = NONE);
}


rV4_9 @= { @ "V4.M4.EN : V4 enclosure by M4 on opposite sides in the horizontal direction >= 5 nm";
        enclose( aV4, aM4, < 0.005, extension = NONE, direction = HORIZONTAL);
}

rV4_10 @= { @ "V4.M3.EN : V4 enclosure by M5 on opposite sides in the vertical direction >= 5 nm";
        enclose( aV4, aM5, < 0.005, extension = NONE, direction = VERTICAL);
}
