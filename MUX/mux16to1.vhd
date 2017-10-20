---------------------------------------------------------------------------------------------------
--
-- Title       : mux16to1
-- Design      : multiplexer
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux16to1.vhd
-- Generated   : Wed Aug 23 13:53:50 2017
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {mux16to1} architecture {mux16to1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux16to1 is 
	port (a,b,c,d :in std_logic_vector(0 to 3);	s1,s2: in std_logic_vector (0 to 1);
		o:out std_logic);
end mux16to1;

architecture mux16to1 of mux16to1 is
component mux4to1
	port(a : in std_logic_vector (0 to 3);
	s : in std_logic_vector (0 to 1); o : out std_logic);
end component mux4to1;
signal p : std_logic_vector (0 to 3);
begin
	m1:mux4to1 port map(a,s1,p(0));
	m2:mux4to1 port map(b,s1,p(1));
	m3:mux4to1 port map(c,s1,p(2));
	m4:mux4to1 port map(d,s1,p(3));
	m5:mux4to1 port map(p,s2,o);
end mux16to1;
