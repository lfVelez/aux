###################################################################

# Created by write_sdc on Tue Dec 15 21:00:23 2020

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_operating_conditions nom_pvt -library c35_CORELIB_TYP
set_max_area 0
create_clock [get_ports Clk]  -period 10  -waveform {0 5}
