-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_Block_BatchNorm_tiled_1_bn1_mul_1_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 17; 
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


architecture rtl of ViT_Block_BatchNorm_tiled_1_bn1_mul_1_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "01100100111001111", 1 => "10011101001101101", 2 => "10100100001110111", 3 => "10011000000010001", 
    4 => "10000000100000111", 5 => "10010110011101101", 6 => "10111011010011100", 7 => "10100001010001000", 
    8 => "01110001110010000", 9 => "10111010111100011", 10 => "01101101100010011", 11 => "01111110010111010", 
    12 => "11000101001010100", 13 => "10111100001111010", 14 => "01111100010110111", 15 => "10010001101000100");



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

