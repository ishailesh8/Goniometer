#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:D:\Process\edk\system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /cygdrive/c/Xilinx/10.1/EDK
NON_CYG_XILINX_EDK_DIR = C:/Xilinx/10.1/EDK

SYSTEM = system

MHSFILE = system.mhs

MSSFILE = system.mss

FPGA_ARCH = virtex2p

DEVICE = xc2vp30ff896-7

LANGUAGE = vhdl

SEARCHPATHOPT = 

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(SUBMODULE_OPT)

LIBGEN_OPTIONS = -mhs $(MHSFILE) -p $(DEVICE) $(SEARCHPATHOPT)

VPGEN_OPTIONS = -p $(DEVICE) $(SEARCHPATHOPT)

MANAGE_FASTRT_OPTIONS = -reduce_fanout no

OBSERVE_PAR_OPTIONS = -error yes

DIPSWITCH_OUTPUT_DIR = dipswitch
DIPSWITCH_OUTPUT = $(DIPSWITCH_OUTPUT_DIR)/executable.elf

KEYBOARD_OUTPUT_DIR = keyboard
KEYBOARD_OUTPUT = $(KEYBOARD_OUTPUT_DIR)/executable.elf

GUI_OUTPUT_DIR = gui
GUI_OUTPUT = $(GUI_OUTPUT_DIR)/executable.elf

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

PPC405_0_BOOTLOOP = $(BOOTLOOP_DIR)/ppc405_0.elf

BRAMINIT_ELF_FILES =  $(GUI_OUTPUT) 
BRAMINIT_ELF_FILE_ARGS =   -pe ppc405_0 $(GUI_OUTPUT) 

ALL_USER_ELF_FILES = $(DIPSWITCH_OUTPUT) $(KEYBOARD_OUTPUT) $(GUI_OUTPUT) 

SIM_CMD = vsim

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.do

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.do

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.do

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

MIX_LANG_SIM_OPT = -mixed yes

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_FILE_ARGS) $(MIX_LANG_SIM_OPT)  -s mti -X D:/Process/edk/ -E D:/Process/edk/


LIBRARIES =  \
       ppc405_0/lib/libxil.a 
VPEXEC = virtualplatform/vpexec.exe

LIBSCLEAN_TARGETS = ppc405_0_libsclean 

PROGRAMCLEAN_TARGETS = dipswitch_programclean keyboard_programclean gui_programclean 

CORE_STATE_DEVELOPMENT_FILES = 

WRAPPER_NGC_FILES = implementation/ppc405_0_wrapper.ngc \
implementation/jtagppc_cntlr_0_wrapper.ngc \
implementation/plb0_wrapper.ngc \
implementation/xps_bram_if_cntlr_1_wrapper.ngc \
implementation/plb_bram_if_cntlr_1_bram_wrapper.ngc \
implementation/rs232_uart_1_wrapper.ngc \
implementation/leds_4bit_wrapper.ngc \
implementation/clock_generator_0_wrapper.ngc \
implementation/proc_sys_reset_0_wrapper.ngc \
implementation/forward_wrapper.ngc \
implementation/backward_wrapper.ngc \
implementation/motorseq_wrapper.ngc \
implementation/halt_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

#################################################################
# SOFTWARE APPLICATION DIPSWITCH
#################################################################

DIPSWITCH_SOURCES = /cygdrive/d/Process/edk/dipswitch.c 

DIPSWITCH_HEADERS = 

DIPSWITCH_CC = powerpc-eabi-gcc
DIPSWITCH_CC_SIZE = powerpc-eabi-size
DIPSWITCH_CC_OPT = -O2
DIPSWITCH_CFLAGS = 
DIPSWITCH_CC_SEARCH = # -B
DIPSWITCH_LIBPATH = -L./ppc405_0/lib/ # -L
DIPSWITCH_INCLUDES = -I./ppc405_0/include/ # -I
DIPSWITCH_LFLAGS = # -l
DIPSWITCH_LINKER_SCRIPT = /cygdrive/d/Process/edk/dipswitch/dipswitch_linker_script.ld
DIPSWITCH_LINKER_SCRIPT_FLAG = -Wl,-T -Wl,$(DIPSWITCH_LINKER_SCRIPT) 
DIPSWITCH_CC_DEBUG_FLAG =  -g 
DIPSWITCH_CC_PROFILE_FLAG = # -pg
DIPSWITCH_CC_GLOBPTR_FLAG= # -msdata=eabi
DIPSWITCH_CC_INFERRED_FLAGS= 
DIPSWITCH_CC_START_ADDR_FLAG=  #  # -Wl,-defsym -Wl,_START_ADDR=
DIPSWITCH_CC_STACK_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_STACK_SIZE=
DIPSWITCH_CC_HEAP_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_HEAP_SIZE=
DIPSWITCH_OTHER_CC_FLAGS= $(DIPSWITCH_CC_GLOBPTR_FLAG)  \
                  $(DIPSWITCH_CC_START_ADDR_FLAG) $(DIPSWITCH_CC_STACK_SIZE_FLAG) $(DIPSWITCH_CC_HEAP_SIZE_FLAG)  \
                  $(DIPSWITCH_CC_INFERRED_FLAGS)  \
                  $(DIPSWITCH_LINKER_SCRIPT_FLAG) $(DIPSWITCH_CC_DEBUG_FLAG) $(DIPSWITCH_CC_PROFILE_FLAG) 

#################################################################
# SOFTWARE APPLICATION KEYBOARD
#################################################################

KEYBOARD_SOURCES = /cygdrive/d/Process/edk/keyboard.c 

KEYBOARD_HEADERS = 

KEYBOARD_CC = powerpc-eabi-gcc
KEYBOARD_CC_SIZE = powerpc-eabi-size
KEYBOARD_CC_OPT = -O2
KEYBOARD_CFLAGS = 
KEYBOARD_CC_SEARCH = # -B
KEYBOARD_LIBPATH = -L./ppc405_0/lib/ # -L
KEYBOARD_INCLUDES = -I./ppc405_0/include/ # -I
KEYBOARD_LFLAGS = # -l
KEYBOARD_LINKER_SCRIPT = /cygdrive/d/Process/edk/keyboard/keyboard_linker_script.ld
KEYBOARD_LINKER_SCRIPT_FLAG = -Wl,-T -Wl,$(KEYBOARD_LINKER_SCRIPT) 
KEYBOARD_CC_DEBUG_FLAG =  -g 
KEYBOARD_CC_PROFILE_FLAG = # -pg
KEYBOARD_CC_GLOBPTR_FLAG= # -msdata=eabi
KEYBOARD_CC_INFERRED_FLAGS= 
KEYBOARD_CC_START_ADDR_FLAG=  #  # -Wl,-defsym -Wl,_START_ADDR=
KEYBOARD_CC_STACK_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_STACK_SIZE=
KEYBOARD_CC_HEAP_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_HEAP_SIZE=
KEYBOARD_OTHER_CC_FLAGS= $(KEYBOARD_CC_GLOBPTR_FLAG)  \
                  $(KEYBOARD_CC_START_ADDR_FLAG) $(KEYBOARD_CC_STACK_SIZE_FLAG) $(KEYBOARD_CC_HEAP_SIZE_FLAG)  \
                  $(KEYBOARD_CC_INFERRED_FLAGS)  \
                  $(KEYBOARD_LINKER_SCRIPT_FLAG) $(KEYBOARD_CC_DEBUG_FLAG) $(KEYBOARD_CC_PROFILE_FLAG) 

#################################################################
# SOFTWARE APPLICATION GUI
#################################################################

GUI_SOURCES = /cygdrive/d/Process/edk/gui.c 

GUI_HEADERS = 

GUI_CC = powerpc-eabi-gcc
GUI_CC_SIZE = powerpc-eabi-size
GUI_CC_OPT = -O2
GUI_CFLAGS = 
GUI_CC_SEARCH = # -B
GUI_LIBPATH = -L./ppc405_0/lib/ # -L
GUI_INCLUDES = -I./ppc405_0/include/ # -I
GUI_LFLAGS = # -l
GUI_LINKER_SCRIPT = /cygdrive/d/Process/edk/gui/gui_linker_script.ld
GUI_LINKER_SCRIPT_FLAG = -Wl,-T -Wl,$(GUI_LINKER_SCRIPT) 
GUI_CC_DEBUG_FLAG =  -g 
GUI_CC_PROFILE_FLAG = # -pg
GUI_CC_GLOBPTR_FLAG= # -msdata=eabi
GUI_CC_INFERRED_FLAGS= 
GUI_CC_START_ADDR_FLAG=  #  # -Wl,-defsym -Wl,_START_ADDR=
GUI_CC_STACK_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_STACK_SIZE=
GUI_CC_HEAP_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_HEAP_SIZE=
GUI_OTHER_CC_FLAGS= $(GUI_CC_GLOBPTR_FLAG)  \
                  $(GUI_CC_START_ADDR_FLAG) $(GUI_CC_STACK_SIZE_FLAG) $(GUI_CC_HEAP_SIZE_FLAG)  \
                  $(GUI_CC_INFERRED_FLAGS)  \
                  $(GUI_LINKER_SCRIPT_FLAG) $(GUI_CC_DEBUG_FLAG) $(GUI_CC_PROFILE_FLAG) 
