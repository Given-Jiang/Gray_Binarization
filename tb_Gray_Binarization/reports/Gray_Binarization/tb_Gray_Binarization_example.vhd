library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity tb_Gray_Binarization_example is   
end entity;
architecture rtl of tb_Gray_Binarization_example is
component tb_Gray_Binarization
	   
end component;
begin
	tb_Gray_Binarization_instance : 
		component tb_Gray_Binarization
			port map();
end architecture rtl;
