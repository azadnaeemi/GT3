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


rACT_1 @= { @ "ACT.1 : Minimum vertical width of ACT >= 21 nm";
        internal1(aACT, <0.021, extension = NONE, direction = VERTICAL);
}

rACT_2 @= { @ "ACT.2 : Minimum horizontal width of ACT >= 84 nm";
        internal1(aACT, <0.084, extension = NONE, direction = HORIZONTAL);
}

// check if separate rules are needed for N-N and N-P spacing
rACT_3 @= { @ "ACT.3 : Vertical spacing between ACT >= 30 nm";
        external1(aACT, <0.030, extension = RADIAL, direction = VERTICAL);
}

// ACT.4 : ACT should be continuous

//rACT_5 @= { @ "ACT.5 : ACT should not bend";
//        not_rectangles(aACT);
//}

// ACT.6 : ACT must end inside a DUMMY layer
rACT_6 @= { @ "ACT.6 : ACT must end inside a DUMMY layer";
    gACT_vert_edges = angle_edge( aACT, angles = 90);
    not_interacting_edge( gACT_vert_edges, aDUMMY);
}

rACT_7 @= { @ "ACT.BPR.1 : Vertical spacing between ACT and BPR >= 10 nm";
        external2(aACT, aBPR, < 0.010, extension = NONE, direction = VERTICAL);
}

