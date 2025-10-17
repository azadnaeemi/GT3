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


#define ICV_ENABLE_LVS_SEN_EXCLUDE_TOLERANCE
#include <icv.rh>

#ifdef OVERRIDE_FILE
#include "override_file.rs"
#endif

// gt3 lvs rulesets
// Written by Piyush Kumar (pkumar315@gatech.edu)
// v0.3
// Last updated : 10/12/2024


// Device properties
dev_properties : function (void) returning void
{
    vL      : double;
    vW      : double;

    vGATE = dev_recognition_layer();
    vS = dev_pin("SRC");
    vD = dev_pin("DRN");

    vL = ( ( dev_polygon_perim ( vGATE ) - dev_touch_length ( vGATE , vS ) - dev_touch_length ( vGATE , vD ) ) * 0.5 );
    vW = ( ( dev_touch_length ( vGATE , vS ) + dev_touch_length ( vGATE , vD ) ) * 0.5 );

    dev_save_double_properties({
        { "WGAA", vW },
        { "L", vL }
    });

}


library(
    cell         = "cell",
    format       = GDSII,
    library_name = "inlib"
);

schematic_netlist_db = schematic(
    schematic_file = {{"sch", SPICE}}
);

vLVS_POWER_NAMES : list of string = { "VDD", "vdd", "vdd!", "VDD!" };
vLVS_GROUND_NAMES : list of string = { "VSS", "GND!", "gnd!", "vss", "vss!", "VSS!", "Vss!" };


text_options(
    allow_all_numeric             = true,
    colon_text                    = REGULAR_TEXT,
    layout_ground                 = vLVS_GROUND_NAMES,
    layout_power                  = vLVS_POWER_NAMES,
    semicolon_text                = REGULAR_TEXT
);

net_options(
    schematic_ground = vLVS_GROUND_NAMES,
    schematic_power  = vLVS_POWER_NAMES
);

////////////////////////////////////////////////////////////////////////////////////////
//
//     GT3 PDK Rules
//
////////////////////////////////////////////////////////////////////////////////////////

// Layer name mapping to IDs
aNWELL	    = assign({ { 1 } });
aACT	    = assign({ { 2 } });
aGATE	    = assign({ { 3 } });
aDUMMY	    = assign({ { 4 } });
aGCUT       = assign({ { 5 } });
aNSEL       = assign({ { 6 } });
aPSEL       = assign({ { 7 } });
aBPR	    = assign({ { 8 } });
tBPR	    = assign_text({ { 8 } });
aVBPR	    = assign({ { 9 } });
aSDCON      = assign({ { 10 } });
tSDCON	    = assign_text({ { 10 } });
aVSD        = assign({ { 11 } });
aVG         = assign({ { 12 } });
aM0         = assign({ { 20 } });
tM0	        = assign_text({ { 20 } });
aV0         = assign({ { 22 } });
aM1         = assign({ { 25 } });
tM1	        = assign_text({ { 25 } });
aV1	        = assign({ { 27 } });
aM2	        = assign({ { 30 } });
tM2	        = assign_text({ { 30 } });
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


gBULK = cell_extent( cell_list = { "*" }, exclude_text_layers = false );
gPSUB = gBULK not aNWELL;
gNWELL = gBULK and aNWELL;

gPOLY = (( ( aGATE ) ) not aGCUT) not aDUMMY;
gN_ACTIVE_AREA = gPSUB and aACT;
gN_NS_AREA = gN_ACTIVE_AREA and aNSEL;
NGATE1 = gN_NS_AREA and gPOLY;
N_src_drn = (gN_NS_AREA not NGATE1) not aDUMMY;
gN_GATE_cont = gPOLY not NGATE1;

gP_ACTIVE_AREA = gNWELL and aACT;
gP_NS_AREA = gP_ACTIVE_AREA and aPSEL;
PGATE1 = gP_NS_AREA and gPOLY;
P_src_drn = (gP_NS_AREA not PGATE1) not aDUMMY;
gP_GATE_cont = gPOLY not PGATE1;

gVPW1 = aPSEL and aACT;
gVPW = gVPW1 and gPSUB;
gVNW1 = aNSEL and aSDCON;
gVNW = gVNW1 and gNWELL;


CONNECT_DB : connect_database = NULL_CONNECT_DATABASE;
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gPOLY, aM0 }, aVG, NONE, SHIELDED_OVERLAP }} ); 
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

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aSDCON}, N_src_drn}} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aSDCON}, P_src_drn}} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aSDCON, gPSUB }, gVPW }} );
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aSDCON, gNWELL }, gVNW }} );

CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gN_GATE_cont}, NGATE1}});
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gN_GATE_cont}, aVG}});
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gP_GATE_cont}, PGATE1}});
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ gP_GATE_cont}, aVG}});
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ PGATE1, NGATE1}, gN_GATE_cont}});
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ PGATE1, NGATE1}, gP_GATE_cont}});

aBPR_mark = text_origin(tBPR, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aBPR_pin = and(aBPR_mark, aBPR, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aBPR}, aBPR_pin}} );

aM0_mark = text_origin(tM0, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM0_pin = and(aM0_mark, aM0, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM0}, aM0_pin}} );

aM1_mark = text_origin(tM1, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM1_pin = and(aM1_mark, aM1, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM1}, aM1_pin}} );

aM2_mark = text_origin(tM2, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM2_pin = and(aM2_mark, aM2, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM2}, aM2_pin}} );

aM3_mark = text_origin(tM3, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM3_pin = and(aM3_mark, aM3, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM3}, aM3_pin}} );

aM4_mark = text_origin(tM4, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM4_pin = and(aM4_mark, aM4, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM4}, aM4_pin}} );

aM5_mark = text_origin(tM5, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM5_pin = and(aM5_mark, aM5, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM5}, aM5_pin}} );

aM6_mark = text_origin(tM6, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM6_pin = and(aM6_mark, aM6, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM6}, aM6_pin}} );

aM7_mark = text_origin(tM7, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM7_pin = and(aM7_mark, aM7, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM7}, aM7_pin}} );

aM8_mark = text_origin(tM8, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM8_pin = and(aM8_mark, aM8, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM8}, aM8_pin}} );

aM9_mark = text_origin(tM9, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM9_pin = and(aM9_mark, aM9, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM9}, aM9_pin}} );

aM10_mark = text_origin(tM10, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM10_pin = and(aM10_mark, aM10, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM10}, aM10_pin}} );

aM11_mark = text_origin(tM11, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM11_pin = and(aM11_mark, aM11, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM11}, aM11_pin}} );

aM12_mark = text_origin(tM12, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM12_pin = and(aM12_mark, aM12, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM12}, aM12_pin}} );

aM13_mark = text_origin(tM13, cells = {"*"}, text = {"*"}, shape_size = 0.005);
aM13_pin = and(aM13_mark, aM13, processing_mode = CELL_LEVEL);
CONNECT_DB = incremental_connect( CONNECT_DB, {{{ aM13}, aM13_pin}} );

CONNECT_DB = create_ports(CONNECT_DB, { {aBPR_pin, aBPR_mark}, {aM0_pin, aM0_mark}, {aM1_pin, aM1_mark}, {aM2_pin, aM2_mark}, {aM3_pin, aM3_mark}, {aM4_pin, aM4_mark}, {aM5_pin, aM5_mark}, {aM6_pin, aM6_mark}, {aM7_pin, aM7_mark}, {aM8_pin, aM8_mark}, {aM9_pin, aM9_mark}, {aM10_pin, aM10_mark}, {aM11_pin, aM11_mark}, {aM12_pin, aM12_mark}, {aM13_pin, aM13_mark}, {aRDL, aRDL} }, report = {UNUSED_MARKERS});

//report = {CREATED_PORTS, UNUSED_MARKERS}

netlist_cdb = text_net(
    connect_sequence = CONNECT_DB,
    text_layer_items= {
    {aBPR, tBPR},
	{aM0, tM0},
	{aM1, tM1},
	{aM2, tM2},
	{aM3, tM3},
	{aM4, tM4},
	{aM5, tM5},
	{aM6, tM6},
	{aM7, tM7},
	{aM8, tM8},
	{aM9, tM9},
	{aM10, tM10},
	{aM11, tM11},
	{aM12, tM12},
	{aM13, tM13},
    {aRDL, tRDL}
    },
    attach_text= ALL,
    // shorts = {},
    report_errors = {UNUSED}
    // report_errors = {UNUSED, SHORTED, MERGED, RENAMED, REASSIGN_SHORTED}
);

//CONNECT_DB = create_ports(CONNECT_DB, { {aBPR, aBPR}, {aM0, aM0}, {aM1_pin, aM1_mark}, {aM2, aM2}, {aM3, aM3}, {aM4, aM4}, {aM5, aM5}, {aM6, aM6}, {aM7, aM7}, {aM8, aM8}, {aM9, aM9}, {aM10, aM10}, {aM11, aM11}, {aM12, aM12}, {aM13, aM13}, {aRDL, aRDL} });


dev_matrix = init_device_matrix(connect_sequence = netlist_cdb);


//nmos(bulk_relationship = INTERACT, device_name= "nmos", recognition_layer = ( NGATE1 interacting gPSUB ), drain = N_src_drn, gate=NGATE1, source = N_src_drn, optional_pins = { }, properties = {{"wgaa", DOUBLE, MICRO}, {"l", DOUBLE, MICRO}}, property_function = dev_properties, matrix = dev_matrix );

//pmos(bulk_relationship = INTERACT, device_name= "pmos", recognition_layer = ( PGATE1 interacting gNWELL ), drain = P_src_drn, gate=PGATE1, source = P_src_drn, optional_pins = { }, properties = {{"wgaa", DOUBLE, MICRO}, {"l", DOUBLE, MICRO}}, property_function = dev_properties, matrix = dev_matrix );

nmos(bulk_relationship = INTERACT, device_name= "nmos_rvt", recognition_layer = ( NGATE1 interacting gPSUB ), drain = N_src_drn, gate=NGATE1, source = N_src_drn, optional_pins = { }, properties = {{"wgaa", DOUBLE, MICRO}, {"l", DOUBLE, MICRO}}, property_function = dev_properties, matrix = dev_matrix );

pmos(bulk_relationship = INTERACT, device_name= "pmos_rvt", recognition_layer = ( PGATE1 interacting gNWELL ), drain = P_src_drn, gate=PGATE1, source = P_src_drn, optional_pins = { }, properties = {{"wgaa", DOUBLE, MICRO}, {"l", DOUBLE, MICRO}}, property_function = dev_properties, matrix = dev_matrix );

device_db = extract_devices(dev_matrix);

layout_netlist_db = netlist(device_db);

compare_settings = init_compare_matrix();

// merge devices in parallel
merge_parallel(state = compare_settings, device_type = PMOS);
merge_parallel(state = compare_settings, device_type = NMOS);

match(
    state=compare_settings,
    match_condition={nets_matched_with_different_name = WARNING, top_layout_ports_without_name = ERROR, top_schematic_port_net_match_non_port_net = ERROR, top_layout_port_net_match_non_port_net = ERROR, top_ports_matched_with_different_name = WARNING, top_schematic_ports_matched_with_different_or_missing_name = WARNING}
);

compare(
    state=compare_settings,
    schematic = schematic_netlist_db,
    layout = layout_netlist_db
);

pex_matrix = init_pex_layer_matrix(device_db);


pex_conducting_layer_map(pex_matrix, gNWELL, "SUBSTRATE", tagname="SUBSTRATENWELL");
pex_conducting_layer_map(pex_matrix, gPSUB, "SUBSTRATE", tagname="SUBSTRATEPWELL");
pex_conducting_layer_map(pex_matrix, gVNW, "SUBSTRATE", tagname="SUBSTRATEVNW");
pex_conducting_layer_map(pex_matrix, gVPW, "SUBSTRATE", tagname="SUBSTRATEVPW");
pex_conducting_layer_map(pex_matrix, N_src_drn, "ACT", tagname="ACTNNS");
pex_conducting_layer_map(pex_matrix, P_src_drn, "ACT", tagname="ACTPNS");
pex_conducting_layer_map(pex_matrix, gPOLY, "GATE", tagname="GATEPOLY");
pex_conducting_layer_map(pex_matrix, NGATE1, "GATE", tagname="NGATE1");
pex_conducting_layer_map(pex_matrix, PGATE1, "GATE", tagname="PGATE1");
pex_conducting_layer_map(pex_matrix, gN_GATE_cont, "GATE", tagname="gN_GATE_cont");
pex_conducting_layer_map(pex_matrix, gP_GATE_cont, "GATE", tagname="gP_GATE_cont");
pex_conducting_layer_map(pex_matrix, aSDCON, "SDCON", tagname="SDCON");
pex_conducting_layer_map(pex_matrix, aM0, "M0", tagname="M0");
pex_conducting_layer_map(pex_matrix, aM0_pin, "M0", tagname="M0_pin");
pex_conducting_layer_map(pex_matrix, aM1, "M1", tagname="M1");
pex_conducting_layer_map(pex_matrix, aM1_pin, "M1", tagname="M1_pin");
pex_conducting_layer_map(pex_matrix, aM2, "M2", tagname="M2");
pex_conducting_layer_map(pex_matrix, aM2_pin, "M2", tagname="M2_pin");
pex_conducting_layer_map(pex_matrix, aM3, "M3", tagname="M3");
pex_conducting_layer_map(pex_matrix, aM3_pin, "M3", tagname="M3_pin");
pex_conducting_layer_map(pex_matrix, aM4, "M4", tagname="M4");
pex_conducting_layer_map(pex_matrix, aM4_pin, "M4", tagname="M4_pin");
pex_conducting_layer_map(pex_matrix, aM5, "M5", tagname="M5");
pex_conducting_layer_map(pex_matrix, aM5_pin, "M5", tagname="M5_pin");
pex_conducting_layer_map(pex_matrix, aM6, "M6", tagname="M6");
pex_conducting_layer_map(pex_matrix, aM6_pin, "M6", tagname="M6_pin");
pex_conducting_layer_map(pex_matrix, aM7, "M7", tagname="M7");
pex_conducting_layer_map(pex_matrix, aM7_pin, "M7", tagname="M7_pin");
pex_conducting_layer_map(pex_matrix, aM8, "M8", tagname="M8");
pex_conducting_layer_map(pex_matrix, aM8_pin, "M8", tagname="M8_pin");
pex_conducting_layer_map(pex_matrix, aM9, "M9", tagname="M9");
pex_conducting_layer_map(pex_matrix, aM9_pin, "M9", tagname="M9_pin");
pex_conducting_layer_map(pex_matrix, aM10, "M10", tagname="M10");
pex_conducting_layer_map(pex_matrix, aM10_pin, "M10", tagname="M10_pin");
pex_conducting_layer_map(pex_matrix, aM11, "M11", tagname="M11");
pex_conducting_layer_map(pex_matrix, aM11_pin, "M11", tagname="M11_pin");
pex_conducting_layer_map(pex_matrix, aM12, "M12", tagname="M12");
pex_conducting_layer_map(pex_matrix, aM12_pin, "M12", tagname="M12_pin");
pex_conducting_layer_map(pex_matrix, aM13, "M13", tagname="M13");
pex_conducting_layer_map(pex_matrix, aM13_pin, "M13", tagname="M13_pin");
pex_conducting_layer_map(pex_matrix, aRDL, "RDL", tagname="RDL");
pex_conducting_layer_map(pex_matrix, aBPR, "BPR", tagname="BPR");
pex_conducting_layer_map(pex_matrix, aBPR_pin, "BPR", tagname="BPR_pin");

pex_via_layer_map(pex_matrix, aVBPR, "VBPR", tagname="VBPR");
pex_via_layer_map(pex_matrix, aVG, "VG", tagname="VG");
pex_via_layer_map(pex_matrix, aVSD, "VSD", tagname="VSD");
pex_via_layer_map(pex_matrix, aV0, "V0", tagname="V0");
pex_via_layer_map(pex_matrix, aV1, "V1", tagname="V1");
pex_via_layer_map(pex_matrix, aV2, "V2", tagname="V2");
pex_via_layer_map(pex_matrix, aV3, "V3", tagname="V3");
pex_via_layer_map(pex_matrix, aV4, "V4", tagname="V4");
pex_via_layer_map(pex_matrix, aV5, "V5", tagname="V5");
pex_via_layer_map(pex_matrix, aV6, "V6", tagname="V6");
pex_via_layer_map(pex_matrix, aV7, "V7", tagname="V7");
pex_via_layer_map(pex_matrix, aV8, "V8", tagname="V8");
pex_via_layer_map(pex_matrix, aV9, "V9", tagname="V9");
pex_via_layer_map(pex_matrix, aV10, "V10", tagname="V10");
pex_via_layer_map(pex_matrix, aV11, "V11", tagname="V11");
pex_via_layer_map(pex_matrix, aV12, "V12", tagname="V12");
pex_via_layer_map(pex_matrix, aV13, "V13", tagname="V13");


pex_layout_library_handle = gds_library("pex.gds");
pex_layout_library_layer_map_handle = pex_library_layer_map_file("pex.gds.layer.map");
pex_spice_netlist_file_handle = spice_netlist_file("pex.sp");
pex_cell_extents_file_handle = pex_cell_extents_file("pex.cell.extents");
pex_cell_port_file_handle = pex_cell_port_file("pex.cell.port");
pex_process_handle = pex_process_map_file("pex.process.map");
pex_report_handle = pex_runset_report_file("pex_runset_report");


pex_generate_database(
    pex_matrix = pex_matrix,
    pex_library = pex_layout_library_handle,
    pex_library_layer_map = pex_layout_library_layer_map_handle,
    pex_netlist_file = pex_spice_netlist_file_handle,
    pex_cell_extents_file = pex_cell_extents_file_handle,
    pex_cell_port_file = pex_cell_port_file_handle,
    pex_process_map_file = pex_process_handle,
    pex_runset_report_file = pex_report_handle
);


