create_pblock pblock_par
add_cells_to_pblock [get_pblocks pblock_par] [get_cells -quiet [list par]]
resize_pblock [get_pblocks pblock_par] -add {SLICE_X54Y0:SLICE_X107Y49}
resize_pblock [get_pblocks pblock_par] -add {DSP48_X3Y0:DSP48_X4Y19}
resize_pblock [get_pblocks pblock_par] -add {RAMB18_X3Y0:RAMB18_X5Y19}
resize_pblock [get_pblocks pblock_par] -add {RAMB36_X3Y0:RAMB36_X5Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_par]
set_property SNAPPING_MODE ON [get_pblocks pblock_par]


set_property PACKAGE_PIN M17 [get_ports {RGB_LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_LED[0]}]
set_property PACKAGE_PIN F17 [get_ports {RGB_LED[1]}]
set_property PACKAGE_PIN V16 [get_ports {RGB_LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JD[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JC[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {PMOD_JB[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {HDMI_OEN[0]}]
set_property PACKAGE_PIN V8 [get_ports {PMOD_JB[0]}]
set_property PACKAGE_PIN W8 [get_ports {PMOD_JB[1]}]
set_property PACKAGE_PIN U7 [get_ports {PMOD_JB[2]}]
set_property PACKAGE_PIN V7 [get_ports {PMOD_JB[3]}]
set_property PACKAGE_PIN Y7 [get_ports {PMOD_JB[4]}]
set_property PACKAGE_PIN Y6 [get_ports {PMOD_JB[5]}]
set_property PACKAGE_PIN V6 [get_ports {PMOD_JB[6]}]
set_property PACKAGE_PIN W6 [get_ports {PMOD_JB[7]}]
set_property PACKAGE_PIN V15 [get_ports {PMOD_JC[0]}]
set_property PACKAGE_PIN W15 [get_ports {PMOD_JC[1]}]
set_property PACKAGE_PIN T11 [get_ports {PMOD_JC[2]}]
set_property PACKAGE_PIN T10 [get_ports {PMOD_JC[3]}]
set_property PACKAGE_PIN W14 [get_ports {PMOD_JC[4]}]
set_property PACKAGE_PIN Y14 [get_ports {PMOD_JC[5]}]
set_property PACKAGE_PIN T12 [get_ports {PMOD_JC[6]}]
set_property PACKAGE_PIN U12 [get_ports {PMOD_JC[7]}]
set_property PACKAGE_PIN T14 [get_ports {PMOD_JD[0]}]
set_property PACKAGE_PIN T15 [get_ports {PMOD_JD[1]}]
set_property PACKAGE_PIN P14 [get_ports {PMOD_JD[2]}]
set_property PACKAGE_PIN R14 [get_ports {PMOD_JD[3]}]
set_property PACKAGE_PIN U14 [get_ports {PMOD_JD[4]}]
set_property PACKAGE_PIN U15 [get_ports {PMOD_JD[5]}]
set_property PACKAGE_PIN V17 [get_ports {PMOD_JD[6]}]
set_property PACKAGE_PIN V18 [get_ports {PMOD_JD[7]}]

set_property PACKAGE_PIN B19 [get_ports {hdmi_out_data_p[2]}]
set_property PACKAGE_PIN C20 [get_ports {hdmi_out_data_p[1]}]
set_property PACKAGE_PIN D19 [get_ports {hdmi_out_data_p[0]}]
set_property PACKAGE_PIN H16 [get_ports hdmi_out_clk_p]
set_property PACKAGE_PIN G17 [get_ports hdmi_ddc_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_ddc_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_ddc_sda_io]
set_property PACKAGE_PIN G18 [get_ports hdmi_ddc_sda_io]
set_property PACKAGE_PIN V12 [get_ports {PMOD_JE[0]}]
set_property PACKAGE_PIN W16 [get_ports {PMOD_JE[1]}]
set_property PACKAGE_PIN J15 [get_ports {PMOD_JE[2]}]
set_property PACKAGE_PIN H15 [get_ports {PMOD_JE[3]}]
set_property PACKAGE_PIN V13 [get_ports {PMOD_JE[4]}]
set_property PACKAGE_PIN U17 [get_ports {PMOD_JE[5]}]
set_property PACKAGE_PIN T17 [get_ports {PMOD_JE[6]}]
set_property PACKAGE_PIN Y17 [get_ports {PMOD_JE[7]}]
set_property PACKAGE_PIN G15 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property PACKAGE_PIN K17 [get_ports CLK]
set_property PACKAGE_PIN Y12 [get_ports {HDMI_OEN[0]}]