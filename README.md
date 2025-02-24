GT3 PDK

This is the initial release for GT3 PDK with 65 standard cells. It is based on 3nm GAAFET.

If you use this PDK for publishing your work, we would appreciate citation of the following paper:

D.E. Shim, P. Kumar, A. Kini, M. Mallikarjuna, M. Shazon, and A. Naeemi, "GT3: an open-source 3nm GAAFET PDK and platform for end-to-end evaluation of emerging technologies", IEEE Transaction on Electron Devices, 2025. DOI: 10.1109/TED.2025.3540760

Quick setup guide for Custom Compiler:

Create a folder (e.g. gt3_techlib) and copy cdslib/nmos_rvt and cdslib/pmos_rvt inside that folder.
Inside the folder from where custom_compiler is run, add following to the lib.defs file:
gt3_official <path_to_gt3_techlib folder>/gt3_techlib

You can specify any name for the library instead of using gt3_offical. The current standard cell schematics are linked with the devices using this name. In case any other library name is used, the device references might need to be updated in the schematics.

To import all the standard cells, either custom_compiler .oa format or .gds files can be used.



