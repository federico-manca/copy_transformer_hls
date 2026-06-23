-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s_bn0_add_1_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 22; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 16
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ViT_Block_BATCHNORM_tiled_quantized_17_16_1_16_ap_int_8_ap_int_8_s_bn0_add_1_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0011000000100100110001", 1 => "1101111010011101100100", 2 => "0000001110011101101001", 3 => "0001111111000101110001", 
    4 => "1110001000010000001000", 5 => "1011111010000000101100", 6 => "1110011000001101101110", 7 => "1110101010011000000010", 
    8 => "0000000010000111000001", 9 => "1000110000111010001101", 10 => "1100011111010110110110", 11 => "1010110011010001110101", 
    12 => "0000011010110011100100", 13 => "0001001000001010011000", 14 => "1011001111000100010001", 15 => "0100110001100111110101");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

