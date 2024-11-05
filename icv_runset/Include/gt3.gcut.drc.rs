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


rGCUT_1 @= { @ "GCUT.1 : GCUT vertical width >= 10 nm";
        internal1( aGCUT, distance < 0.010, extension = NONE, direction = VERTICAL);
}

rGCUT_2 @= { @ "GCUT.2 : GCUT horizontal length >= 42 nm";
        internal1( aGCUT, distance < 0.042, extension = NONE, direction = HORIZONTAL);
}

// GCUT.3 GCUT horizontal spacing

// GCUT.4 GCUT vertical spacing

rGCUT_5 @= { @ "GCUT.5 : GCUT may not bend";
        not_rectangles( aGCUT);
}

rGCUT_6 @= { @ "GCUT.6 : GCUT may not exist without GATE";
        not_interacting( aGCUT, aGATE, include_touch = NONE);
}

rGCUT_7 @= { @ "GCUT.7 : GCUT vertical edge may not lie inside or coincide with GATE vertical edge";
        gGCUT_edge = angle_edge( aGCUT, angles = {90.0});
        gGATE1 = aGATE not aDUMMY;
        interacting_edge( gGCUT_edge, gGATE1);
}

rGCUT_8 @= { @ "GCUT.8 : GCUT may not interact with ACT";
        interacting( aGCUT, aACT, include_touch = ALL);
}

rGCUT_9 @= { @ "GCUT.ACT.1 : Vertical spacing between GCUT and ACT >= 10 nm";
        external2( aGCUT, aACT, distance < 0.010, extension = NONE, direction = VERTICAL);
}

