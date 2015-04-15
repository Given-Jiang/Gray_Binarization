-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_decoder is
	generic (
		DECODE : string := "00000000";
		PIPELINE : natural := 0;
		WIDTH : natural := 8
	);
	port (
		dec : out std_logic;
		clock : in std_logic := '0';
		sclr : in std_logic := '0';
		data : in std_logic_vector(width-1 downto 0) := (others=>'0');
		aclr : in std_logic := '0';
		ena : in std_logic := '0'
	);
end entity alt_dspbuilder_decoder;

architecture rtl of alt_dspbuilder_decoder is

component alt_dspbuilder_decoder_GNA3ETEQ66 is
	generic (
		DECODE : string := "00";
		PIPELINE : natural := 1;
		WIDTH : natural := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(2-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNA3ETEQ66;

component alt_dspbuilder_decoder_GNSCEXJCJK is
	generic (
		DECODE : string := "000000000000000000001111";
		PIPELINE : natural := 0;
		WIDTH : natural := 24
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(24-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNSCEXJCJK;

component alt_dspbuilder_decoder_GNM4LOIHXZ is
	generic (
		DECODE : string := "01";
		PIPELINE : natural := 1;
		WIDTH : natural := 2
	);
	port (
		aclr : in std_logic := '0';
		clock : in std_logic := '0';
		data : in std_logic_vector(2-1 downto 0) := (others=>'0');
		dec : out std_logic;
		ena : in std_logic := '0';
		sclr : in std_logic := '0'
	);
end component alt_dspbuilder_decoder_GNM4LOIHXZ;

begin

alt_dspbuilder_decoder_GNA3ETEQ66_0: if ((DECODE = "00") and (PIPELINE = 1) and (WIDTH = 2)) generate
	inst_alt_dspbuilder_decoder_GNA3ETEQ66_0: alt_dspbuilder_decoder_GNA3ETEQ66
		generic map(DECODE => "00", PIPELINE => 1, WIDTH => 2)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNSCEXJCJK_1: if ((DECODE = "000000000000000000001111") and (PIPELINE = 0) and (WIDTH = 24)) generate
	inst_alt_dspbuilder_decoder_GNSCEXJCJK_1: alt_dspbuilder_decoder_GNSCEXJCJK
		generic map(DECODE => "000000000000000000001111", PIPELINE => 0, WIDTH => 24)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

alt_dspbuilder_decoder_GNM4LOIHXZ_2: if ((DECODE = "01") and (PIPELINE = 1) and (WIDTH = 2)) generate
	inst_alt_dspbuilder_decoder_GNM4LOIHXZ_2: alt_dspbuilder_decoder_GNM4LOIHXZ
		generic map(DECODE => "01", PIPELINE => 1, WIDTH => 2)
		port map(aclr => aclr, clock => clock, data => data, dec => dec, ena => ena, sclr => sclr);
end generate;

assert not (((DECODE = "00") and (PIPELINE = 1) and (WIDTH = 2)) or ((DECODE = "000000000000000000001111") and (PIPELINE = 0) and (WIDTH = 24)) or ((DECODE = "01") and (PIPELINE = 1) and (WIDTH = 2)))
	report "Please run generate again" severity error;

end architecture rtl;

