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
//


// gt3 drc main file

#define SELECTABLE_VIOLATION_NAMES
#define ICV_ENABLE_WIDE_ANGLED
#include <icv.rh>
#include "string.rh"

// Layer name mapping to IDs
aBPR	    = assign({ { 8 } });
tBPR	    = assign_text({ { 8 } });
aVBPR	    = assign({ { 9 } });
aNW	    = assign({ { 1 } });
aACT	    = assign({ { 2 } });
aGATE	    = assign({ { 3 } });
aGCUT       = assign({ { 5 } });
aDUMMY	    = assign({ { 4 } });
aNSEL        = assign({ { 6 } });
aPSEL        = assign({ { 7 } });
aSDCON      = assign({ { 10 } });
tSDCON	    = assign_text({ { 10 } });
aVSD        = assign({ { 11 } });
aVG         = assign({ { 12 } });
aM0         = assign({ { 20 } });
tM0	    = assign_text({ { 20 } });
aV0         = assign({ { 22 } });
aM1         = assign({ { 25 } });
tM1	    = assign_text({ { 25 } });
aV1	    = assign({ { 27 } });
aM2	    = assign({ { 30 } });
tM2	    = assign_text({ { 30 } });
aV2         = assign({ { 32 } });
aM3         = assign({ { 35 } }); 
tM3         = assign_text({ { 35 } }); 
aV3         = assign({ { 37 } }); 
aM4         = assign({ { 40 } }); 
tM4         = assign_text({ { 40 } }); 
aV4         = assign({ { 42 } }); 
aM5         = assign({ { 45 } }); 
tM5         = assign_text({ { 45 } }); 
aV5         = assign({ { 47 } }); 
aM6         = assign({ { 50 } }); 
tM6         = assign_text({ { 50 } }); 
aV6         = assign({ { 52 } }); 
aM7         = assign({ { 55 } }); 
tM7         = assign_text({ { 55 } }); 
aV7         = assign({ { 57 } }); 
aM8         = assign({ { 60 } }); 
tM8         = assign_text({ { 60 } }); 
aV8         = assign({ { 62 } }); 
aM9         = assign({ { 65 } }); 
tM9         = assign_text({ { 65 } }); 
aV9         = assign({ { 67 } }); 
aM10        = assign({ { 70 } }); 
tM10        = assign_text({ { 70 } }); 
aV10        = assign({ { 72 } }); 
aM11        = assign({ { 75 } }); 
tM11        = assign_text({ { 75 } }); 
aV11        = assign({ { 77 } }); 
aM12        = assign({ { 80 } }); 
tM12        = assign_text({ { 80 } }); 
aV12        = assign({ { 82 } }); 
aM13        = assign({ { 85 } }); 
tM13        = assign_text({ { 85 } }); 
aV13        = assign({ { 87 } }); 
aRDL        = assign({ { 90 } }); 
tRDL        = assign_text({ { 90 } }); 




CONNECT_DB : connect_database = NULL_CONNECT_DATABASE;

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aBPR, aSDCON }, aVBPR, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aSDCON, aM0 }, aVSD, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM0, aM1 }, aV0, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM1, aM2 }, aV1, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM2, aM3 }, aV2, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM3, aM4 }, aV3, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM4, aM5 }, aV4, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM5, aM6 }, aV5, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM6, aM7 }, aV6, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM7, aM8 }, aV7, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM8, aM9 }, aV8, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM9, aM10 }, aV9, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM10, aM11 }, aV10, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM11, aM12 }, aV11, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM12, aM13 }, aV12, NONE, SHIELDED_OVERLAP }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM13, aRDL }, aV13, NONE, SHIELDED_OVERLAP }} );

gPOLY = ( ( aGATE ) ) not aGCUT;
gCHANNEL = gPOLY and aACT;
gN_GATE = gCHANNEL and aNSEL; 
gP_GATE = gCHANNEL and aPSEL;

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gPOLY, aM0 }, aVG, NONE, SHIELDED_OVERLAP }} ); 

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gPOLY, aACT }}} ); 

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aGATE, aVG }}} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gN_GATE, aVG }}} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gP_GATE, aVG }}} );

gP_GATE_or_gN_GATE = gP_GATE or gN_GATE;

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gP_GATE_or_gN_GATE , aVG }}} );


#include "Include/gt3.bpr.drc.rs"
#include "Include/gt3.vbpr.drc.rs"
#include "Include/gt3.gate.drc.rs"
#include "Include/gt3.dummy.drc.rs"
#include "Include/gt3.gcut.drc.rs"
#include "Include/gt3.vg.drc.rs"
#include "Include/gt3.act.drc.rs"
#include "Include/gt3.npsel.drc.rs"
#include "Include/gt3.sdcon.drc.rs"
#include "Include/gt3.vsd.drc.rs"
#include "Include/gt3.m0.drc.rs"
#include "Include/gt3.v0.drc.rs"
#include "Include/gt3.m1.drc.rs"
#include "Include/gt3.v1.drc.rs"
#include "Include/gt3.m2.drc.rs"
#include "Include/gt3.v2.drc.rs"
#include "Include/gt3.m3.drc.rs"
#include "Include/gt3.v3.drc.rs"
#include "Include/gt3.m4.drc.rs"
#include "Include/gt3.v4.drc.rs"
#include "Include/gt3.m5.drc.rs"
#include "Include/gt3.v5.drc.rs"
#include "Include/gt3.m6.drc.rs"


