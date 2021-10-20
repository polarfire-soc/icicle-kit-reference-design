#Importing and Linking all the HDL source files used in the design
import_files \
         -convert_EDN_to_HDL 0 \
         -library {work} \
         -hdl_source {script_support/HDL/Register/SDIO_register.v} \
         -hdl_source {script_support/HDL/APB_arbiter/apb_arbiter.v} \
         -hdl_source {script_support/HDL/MIV_IHC/MIV_IHCC/miv_ihcc.v} \
         -hdl_source {script_support/HDL/MIV_IHC/MIV_IHCC/miv_ihcc_ctrl.v} \
         -hdl_source {script_support/HDL/MIV_IHC/MIV_IHCC/miv_ihcc_irqs.v} \
         -hdl_source {script_support/HDL/MIV_IHC/MIV_IHCC/miv_ihcc_mem.v} \
         -hdl_source {script_support/HDL/MIV_IHC/MIV_IHCIA/miv_ihcia.v}

build_design_hierarchy 

create_hdl_core -file $project_dir/hdl/SDIO_register.v -module {sdio_register} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {sdio_register} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APBslave} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PADDR} -core_signal_name {paddr} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PENABLE} -core_signal_name {penable} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PWRITE} -core_signal_name {pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PRDATA} -core_signal_name {prdata} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PWDATA} -core_signal_name {pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PREADY} -core_signal_name {pready} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PSLVERR} -core_signal_name {pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PSELx} -core_signal_name {psel} 

create_hdl_core -file $project_dir/hdl/apb_arbiter.v -module {APB_ARBITER} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {APB_ARBITER} -bif_definition {APB:AMBA:AMBA2:mirroredMaster} -bif_name {APB_MMASTER} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PADDR} -core_signal_name {in_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PENABLE} -core_signal_name {in_penable} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PWRITE} -core_signal_name {in_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PRDATA} -core_signal_name {in_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PWDATA} -core_signal_name {in_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PREADY} -core_signal_name {in_pready} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PSLVERR} -core_signal_name {in_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MMASTER} -bif_signal_name {PSELx} -core_signal_name {in_psel} 
hdl_core_add_bif -hdl_core_name {APB_ARBITER} -bif_definition {APB:AMBA:AMBA2:master} -bif_name {APB_MASTER_low} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PADDR} -core_signal_name {out_low_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PENABLE} -core_signal_name {out_low_penable} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PWRITE} -core_signal_name {out_low_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PRDATA} -core_signal_name {out_low_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PWDATA} -core_signal_name {out_low_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PREADY} -core_signal_name {out_low_pready} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PSLVERR} -core_signal_name {out_low_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PSELx} -core_signal_name {out_high_psel} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_low} -bif_signal_name {PSELx} -core_signal_name {out_low_psel} 
hdl_core_add_bif -hdl_core_name {APB_ARBITER} -bif_definition {APB:AMBA:AMBA2:master} -bif_name {APB_MASTER_high} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PADDR} -core_signal_name {out_high_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PENABLE} -core_signal_name {out_high_penable} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PWRITE} -core_signal_name {out_high_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PRDATA} -core_signal_name {out_high_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PWDATA} -core_signal_name {out_high_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PREADY} -core_signal_name {out_high_pready} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PSLVERR} -core_signal_name {out_high_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_high} -bif_signal_name {PSELx} -core_signal_name {out_high_psel} 

create_hdl_core -file $project_dir/hdl/miv_ihcc.v -module {MIV_IHCC} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {MIV_IHCC} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {A_SIDE} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PADDR} -core_signal_name {a_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PENABLE} -core_signal_name {a_penable} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PWRITE} -core_signal_name {a_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PRDATA} -core_signal_name {a_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PWDATA} -core_signal_name {a_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PREADY} -core_signal_name {a_pready} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PSLVERR} -core_signal_name {a_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {A_SIDE} -bif_signal_name {PSELx} -core_signal_name {a_psel} 
hdl_core_add_bif -hdl_core_name {MIV_IHCC} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {B_SIDE} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PADDR} -core_signal_name {b_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PENABLE} -core_signal_name {b_penable} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PWRITE} -core_signal_name {b_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PRDATA} -core_signal_name {b_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PWDATA} -core_signal_name {b_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PREADY} -core_signal_name {b_pready} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PSLVERR} -core_signal_name {b_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCC} -bif_name {B_SIDE} -bif_signal_name {PSELx} -core_signal_name {b_psel} 

create_hdl_core -file $project_dir/hdl/miv_ihcia.v -module {MIV_IHCIA} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {MIV_IHCIA} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APB_SLAVE} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PADDR} -core_signal_name {paddr} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PENABLE} -core_signal_name {penable} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PWRITE} -core_signal_name {pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PRDATA} -core_signal_name {prdata} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PWDATA} -core_signal_name {pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PREADY} -core_signal_name {pready} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PSLVERR} -core_signal_name {pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {MIV_IHCIA} -bif_name {APB_SLAVE} -bif_signal_name {PSELx} -core_signal_name {psel} 

