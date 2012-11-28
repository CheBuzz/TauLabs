BOARD_TYPE          := 0x0a
BOARD_REVISION      := 0x01
BOOTLOADER_VERSION  := 0x01
HW_TYPE             := 0x01

MCU                 := cortex-m4
CHIP                := STM32F405RGT
BOARD               := STM32F4xx_QUANTON
MODEL               := HD
MODEL_SUFFIX        := 

OPENOCD_JTAG_CONFIG := stlink-v2.cfg
OPENOCD_CONFIG      := stm32f4xx.stlink.cfg

# Note: These must match the values in link_$(BOARD)_memory.ld
BL_BANK_BASE        := 0x08000000  # Start of bootloader flash
BL_BANK_SIZE        := 0x00008000  # Should include BD_INFO region (32kb)

# Leave the remaining 16KB and 64KB sectors for other uses
FW_BANK_BASE        := 0x08020000  # Start of firmware flash (128kb)
FW_BANK_SIZE        := 0x00040000  # Should include FW_DESC_SIZE (256kb)

FW_DESC_SIZE        := 0x00000064

OSCILLATOR_FREQ     :=  16000000
SYSCLK_FREQ         := 168000000
