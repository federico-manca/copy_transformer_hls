-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_bias_h_0_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 13; 
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


architecture rtl of ViT_Block_Linear_Layer_Pipeline_VITIS_LOOP_1512_2_2_bias_h_0_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "1011000001001", 1 => "1111000000100", 2 => "1110001110001", 3 => "1100111101011", 
    4 => "0001110101110", 5 => "0001011010011", 6 => "0100101111011", 7 => "1100010101101", 
    8 => "1011101111101", 9 => "0001011100101", 10 => "1110001110010", 11 => "0101010110111", 
    12 => "0111001000111", 13 => "1101111000010", 14 => "1001011111010", 15 => "0000110010001");



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

