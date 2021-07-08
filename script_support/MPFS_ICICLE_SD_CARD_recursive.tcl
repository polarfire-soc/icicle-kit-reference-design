if {[file isdirectory $local_dir/script_support/components/MSS_SD]} {
	file delete -force $local_dir/script_support/components/MSS_SD
}
file mkdir $local_dir/script_support/components/MSS_SD
exec $mss_config_loc -CONFIGURATION_FILE:$local_dir/script_support/PF_SoC_MSS_Icicle_SD.cfg -OUTPUT_DIR:$local_dir/script_support/components/MSS_SD
import_mss_component -file "$local_dir/script_support/components/MSS_SD/ICICLE_MSS.cxz"
source script_support/hdl_source.tcl
source script_support/components/CORERESET_0.tcl
source script_support/components/INIT_MONITOR.tcl 
source script_support/components/PCIE_INITIATOR.tcl 
source script_support/components/FIC0_INITIATOR.tcl 
source script_support/components/CLK_DIV.tcl 
source script_support/components/PF_CCC_C0.tcl 
source script_support/components/RECONFIGURATION_INTERFACE.tcl 
source script_support/components/GLITCHLESS_MUX.tcl 
source script_support/components/PF_PCIE_C0.tcl 
source script_support/components/TRANSMIT_PLL.tcl 
source script_support/components/PCIE_REF_CLK.tcl 
source script_support/components/PCIE_LSRAM.tcl 
source script_support/components/MSS_LSRAM.tcl 
source script_support/components/DMA_CONTROLLER.tcl
source script_support/components/DMA_INITIATOR.tcl
source script_support/components/GPIO.tcl
source script_support/components/FIC3_INITIATOR.tcl
source script_support/components/OSCILLATOR_160MHz.tcl
source script_support/components/COREPWM_C0.tcl
source script_support/components/CLOCKS_AND_RESETS.tcl 
source script_support/components/MPFS_ICICLE_SD_CARD.tcl 
set_root -module {MPFS_ICICLE_KIT_BASE_DESIGN::work} 
