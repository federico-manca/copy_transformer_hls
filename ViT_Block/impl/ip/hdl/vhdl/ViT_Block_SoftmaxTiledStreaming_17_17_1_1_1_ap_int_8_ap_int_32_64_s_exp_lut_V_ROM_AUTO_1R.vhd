-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_Block_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_exp_lut_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 8; 
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


architecture rtl of ViT_Block_SoftmaxTiledStreaming_17_17_1_1_1_ap_int_8_ap_int_32_64_s_exp_lut_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00000001", 1 => "00000001", 2 => "00000001", 3 => "00000001", 
    4 => "00000001", 5 => "00000001", 6 => "00000001", 7 => "00000001", 
    8 => "00000001", 9 => "00000001", 10 => "00000001", 11 => "00000001", 
    12 => "00000001", 13 => "00000001", 14 => "00000010", 15 => "00000010", 
    16 => "00000010", 17 => "00000010", 18 => "00000010", 19 => "00000010", 
    20 => "00000010", 21 => "00000010", 22 => "00000010", 23 => "00000011", 
    24 => "00000011", 25 => "00000011", 26 => "00000011", 27 => "00000100", 
    28 => "00000100", 29 => "00000100", 30 => "00000101", 31 => "00000101", 
    32 => "00000110", 33 => "00000111", 34 => "00000111", 35 => "00001000", 
    36 => "00001001", 37 => "00001010", 38 => "00001100", 39 => "00001101", 
    40 => "00001111", 41 => "00010001", 42 => "00010011", 43 => "00010101", 
    44 => "00011000", 45 => "00011011", 46 => "00011110", 47 => "00100010", 
    48 => "00100111", 49 => "00101100", 50 => "00110010", 51 => "00111001", 
    52 => "01000000", 53 => "01001001", 54 => "01010010", 55 => "01011101", 
    56 => "01101010", 57 => "01111000", 58 => "10001000", 59 => "10011010", 
    60 => "10101111", 61 => "11000111", 62 => "11100010", 63 => "11111111");



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

