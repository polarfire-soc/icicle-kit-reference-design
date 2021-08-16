#Importing and Linking all the HDL source files used in the design
import_files \
         -convert_EDN_to_HDL 0 \
         -library {work} \
         -hdl_source {script_support/HDL/SDIO_register.v} \
         -hdl_source {script_support/HDL/apb_arbiter.v} \
         -hdl_source {script_support/HDL/ipc_mailbox.v} \
         -hdl_source {script_support/HDL/mailbox_ctrl.v} \
         -hdl_source {script_support/HDL/mailbox_irqs.v} \
         -hdl_source {script_support/HDL/mailbox_mem.v} 

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
hdl_core_add_bif -hdl_core_name {APB_ARBITER} -bif_definition {APB:AMBA:AMBA2:master} -bif_name {APB_MASTER_0x4xxx_xxxx} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PADDR} -core_signal_name {out_0x4xxx_xxxx_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PENABLE} -core_signal_name {out_0x4xxx_xxxx_penable} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PWRITE} -core_signal_name {out_0x4xxx_xxxx_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PRDATA} -core_signal_name {out_0x4xxx_xxxx_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PWDATA} -core_signal_name {out_0x4xxx_xxxx_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PREADY} -core_signal_name {out_0x4xxx_xxxx_pready} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PSLVERR} -core_signal_name {out_0x4xxx_xxxx_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PSELx} -core_signal_name {out_0x5xxx_xxxx_psel} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x4xxx_xxxx} -bif_signal_name {PSELx} -core_signal_name {out_0x4xxx_xxxx_psel} 
hdl_core_add_bif -hdl_core_name {APB_ARBITER} -bif_definition {APB:AMBA:AMBA2:master} -bif_name {APB_MASTER_0x5xxx_xxxx} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PADDR} -core_signal_name {out_0x5xxx_xxxx_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PENABLE} -core_signal_name {out_0x5xxx_xxxx_penable} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PWRITE} -core_signal_name {out_0x5xxx_xxxx_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PRDATA} -core_signal_name {out_0x5xxx_xxxx_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PWDATA} -core_signal_name {out_0x5xxx_xxxx_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PREADY} -core_signal_name {out_0x5xxx_xxxx_pready} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PSLVERR} -core_signal_name {out_0x5xxx_xxxx_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {APB_ARBITER} -bif_name {APB_MASTER_0x5xxx_xxxx} -bif_signal_name {PSELx} -core_signal_name {out_0x5xxx_xxxx_psel} 

create_hdl_core -file $project_dir/hdl/ipc_mailbox.v -module {IPC_MAILBOX} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {IPC_MAILBOX} -bif_definition {APB:AMBA:AMBA2:mirroredMaster} -bif_name {A_SIDE} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PADDR} -core_signal_name {a_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PENABLE} -core_signal_name {a_penable} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PWRITE} -core_signal_name {a_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PRDATA} -core_signal_name {a_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PWDATA} -core_signal_name {a_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PREADY} -core_signal_name {a_pready} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PSLVERR} -core_signal_name {a_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {A_SIDE} -bif_signal_name {PSELx} -core_signal_name {a_psel} 
hdl_core_add_bif -hdl_core_name {IPC_MAILBOX} -bif_definition {APB:AMBA:AMBA2:mirroredMaster} -bif_name {B_SIDE} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PADDR} -core_signal_name {b_paddr} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PENABLE} -core_signal_name {b_penable} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PWRITE} -core_signal_name {b_pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PRDATA} -core_signal_name {b_prdata} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PWDATA} -core_signal_name {b_pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PREADY} -core_signal_name {b_pready} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PSLVERR} -core_signal_name {b_pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {IPC_MAILBOX} -bif_name {B_SIDE} -bif_signal_name {PSELx} -core_signal_name {b_psel} 

