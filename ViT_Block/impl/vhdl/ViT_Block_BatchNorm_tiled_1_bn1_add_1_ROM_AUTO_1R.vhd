-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_Block_BatchNorm_tiled_1_bn1_add_1_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 24; 
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


architecture rtl of ViT_Block_BatchNorm_tiled_1_bn1_add_1_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "000010111010101110000010", 1 => "000010101010100101001000", 2 => "000110001111000110111000", 3 => "000100011101010011101001", 
    4 => "101100000011001011000110", 5 => "001000001111010111011001", 6 => "000110011111001001100110", 7 => "000100011011111111010111", 
    8 => "110011111000010110011111", 9 => "000100000110100100001100", 10 => "111101111010010010011011", 11 => "111011001000011000111011", 
    12 => "110101110001011001110111", 13 => "001001110101000010100100", 14 => "111100100001101000010100", 15 => "111101110100110011000011");



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

