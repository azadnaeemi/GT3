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


rVSD_1 @= { @ "VSD.1 : Horizontal width of VSD = 13 nm";
        gVSD1_check = internal1( aVSD, == 0.013, extension = NONE, direction = HORIZONTAL);
        aVSD not gVSD1_check;
}

rVSD_2 @= { @ "VSD.2 : Vertical width of VSD = 12 nm";
        gVSD2_check = internal1( aVSD, == 0.012, extension = NONE, direction = VERTICAL);
        aVSD not gVSD2_check;
}

rVSD_3 @= { @ "VSD.3 : VSD must be rectangular";
        not_rectangles(aVSD);
}

rVSD_4 @= { @ "VSD.4 : VSD must not be outside of SDCON";
        not_inside( aVSD, aSDCON, include_touch = ALL);
}

rVSD_5 @= { @ "VSD.5 : VSD must not be outside of M0";
        not_inside( aVSD, aM0, include_touch = ALL);
}

rVSD_6 @= { @ "VSD.SDCON.1 : VSD enclosure by SDCON on opposite sides in horizontal direction >= 1 nm";
        enclose( aVSD, aSDCON, < 0.001, extension = NONE, direction = HORIZONTAL);
}

rVSD_7 @= { @ "VSD.M0.1 VSD enclosure by M0 on opposite sides in horizontal direction >= 4 nm";
        enclose( aVSD, aM0, < 0.004, extension = NONE, direction = HORIZONTAL);
}
