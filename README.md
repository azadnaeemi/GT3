GT3 PDK

This is the initial release for GT3 PDK with 65 standard cells. It is based on 3nm GAAFET.

If you use this PDK for publishing your work, we would appreciate citation of the following paper:

D. E. Shim, P. Kumar, A. A. Kini, M. Mallikarjuna, M. N. H. Shazon and A. Naeemi, "GT3: An Open-Source 3-nm GAAFET PDK and Platform for End-to-End Evaluation of Emerging Technologies," in IEEE Transactions on Electron Devices, doi: 10.1109/TED.2025.3540760.
https://ieeexplore.ieee.org/document/10906664

Quick setup guide for Custom Compiler:

Create a folder (e.g. gt3_techlib) and copy GT3/cdslib/nmos_rvt and GT3/cdslib/pmos_rvt inside that folder.
Inside the folder from where custom_compiler is run, add following to the lib.defs file:
gt3_official <path_to_gt3_techlib folder>/gt3_techlib

You can specify any name for the library instead of using gt3_offical. The current standard cell schematics are linked with the devices using this name. In case any other library name is used, the device references might need to be updated in the schematics.

To assign technology to the lib, the following .tf file can be imported using "Technology Manager" and applied to the gt3_official lib:
GT3/cdslib/gt3_techfile.tf

To import all the standard cells, either custom_compiler .oa format or .gds files can be used.
Create a folder for standard cell library, e.g. gt3_lib and add it to the lib.defs file:
gt3_lib <path_to_gt3_techlib folder>/gt3_lib

In the "Technology Manager", the associated technology needs to be changed to gt3_official (or the lib name used in the previous stage), alternatively, .tf file can also be imported and applied to gt3_lib. This is necessary, otherwise layers would not be identified. Any new library created needs to follow the same process. To assign colors to the layer, load "GT3/cds/gt3_layer_colors.tcl" using the "Display Resource Manager".

Copy everything inside GT3/std_cell folder to gt3_lib. This includes layout, schematic and abstract views for custom_compiler.

Standard cell layouts can also be imported using .gds file: GT3/gds/gt3_6t_std_cell_rvt.gds

LVS and DRC rulesets for icvalidator is present in "GT3/icv_runset".

The collaterals required for synthesis and PnR are:

LIB: GT3/lib/gt3_rvt_tt_0p7v25c.lib

LEF: GT3/lef/gt3_std_cell_rvt.lef

Techlef: GT3/techlef/gt3_tech.lef

ICT: GT3/ict/GT3.ict

QRCTECH: GT3/qrc/qrcTechFile.tch

ITF: GT3/nxtgrd/GT3.itf

NXTGRD: https://gtvault-my.sharepoint.com/:u:/g/personal/pkumar315_gatech_edu/EcalVsKySt9Nt9z_ahGU1TcBIfOQfyYUC6A5kRABQbA3Zg?e=eEDVbN

The GAAFET model cards are:

GT3/models/hspice/gt3_lvt.mod

GT3/models/hspice/gt3_rvt.mod
