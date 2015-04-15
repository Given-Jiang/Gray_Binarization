-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_bus_concat is
	generic (
		WIDTHB : natural := 8;
		WIDTHA : natural := 8
	);
	port (
		b : in std_logic_vector(widthB-1 downto 0);
		clock : in std_logic;
		a : in std_logic_vector(widthA-1 downto 0);
		aclr : in std_logic;
		output : out std_logic_vector(widthA+widthB-1 downto 0)
	);
end entity alt_dspbuilder_bus_concat;

architecture rtl of alt_dspbuilder_bus_concat is

component alt_dspbuilder_bus_concat_GNIIOZRPJD is
	generic (
		WIDTHB : natural := 8;
		WIDTHA : natural := 8
	);
	port (
		a : in std_logic_vector(8-1 downto 0);
		aclr : in std_logic;
		b : in std_logic_vector(8-1 downto 0);
		clock : in std_logic;
		output : out std_logic_vector(16-1 downto 0)
	);
end component alt_dspbuilder_bus_concat_GNIIOZRPJD;

begin

alt_dspbuilder_bus_concat_GNIIOZRPJD_0: if ((WIDTHB = 8) and (WIDTHA = 8)) generate
	inst_alt_dspbuilder_bus_concat_GNIIOZRPJD_0: alt_dspbuilder_bus_concat_GNIIOZRPJD
		generic map(WIDTHB => 8, WIDTHA => 8)
		port map(a => a, aclr => aclr, b => b, clock => clock, output => output);
end generate;

assert not (((WIDTHB = 8) and (WIDTHA = 8)))
	report "Please run generate again" severity error;

end architecture rtl;

