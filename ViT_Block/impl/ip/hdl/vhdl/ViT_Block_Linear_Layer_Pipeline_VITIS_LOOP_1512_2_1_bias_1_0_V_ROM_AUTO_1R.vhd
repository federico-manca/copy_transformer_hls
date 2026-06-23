-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_bias_1_0_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 13; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_1_bias_1_0_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1111011100110", 1 => "1111001011011", 2 => "1100110110010", 3 => "1101010011011", 
    4 => "1111111011001", 5 => "1111101000010", 6 => "0010000101110", 7 => "1111011110111", 
    8 => "1100001001101", 9 => "1010110001000", 10 => "0010000111011", 11 => "1100111110111", 
    12 => "1110010000000", 13 => "1101100010101", 14 => "1100100000001", 15 => "1111110111110", 
    16 => "1101110011111", 17 => "1111001011000", 18 => "0001101111000", 19 => "1111111010011", 
    20 => "1110001110111", 21 => "1101101111100", 22 => "0001100001110", 23 => "0010110011111", 
    24 => "0010100011011", 25 => "1010011100010", 26 => "1110110111101", 27 => "1111110100100", 
    28 => "0001000010010", 29 => "1111111110011", 30 => "1111000100001", 31 => "1111000110000", 
    32 => "1010110000011", 33 => "1101000000010", 34 => "1111110011110", 35 => "1110010111101", 
    36 => "1110000001011", 37 => "0000000011011", 38 => "1011101111111", 39 => "1100010111001", 
    40 => "0001001001001", 41 => "1100111101111", 42 => "0000101111110", 43 => "1010111000110", 
    44 => "0000111110101", 45 => "0000000100100", 46 => "1111100100010", 47 => "1110110111101", 
    48 => "1111000110101", 49 => "1110111011000", 50 => "1100010001000", 51 => "1011101101010", 
    52 => "0000110001000", 53 => "1100000010011", 54 => "1111001110011", 55 => "1100100100011", 
    56 => "1111011000001", 57 => "1101001010001", 58 => "1110001100000", 59 => "1100101111000", 
    60 => "1100010100110", 61 => "1101100001100", 62 => "1100100010000", 63 => "0000110001111");



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

