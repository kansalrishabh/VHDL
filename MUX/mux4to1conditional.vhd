---------------------------------------------------------------------------------------------------
--
-- Title       : mux4to1conditional
-- Design      : multiplexer
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux4to1conditional.vhd
-- Generated   : Wed Aug 23 13:42:56 2017
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
--{entity {mux4to1conditional} architecture {mux4to1conditional}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4to1conditional is 
	port(a : in std_logic_vector (0 to 3);
	 s : in std_logic_vector (0 to 1); o : out std_logic);
end mux4to1conditional;

--}} End of automatically maintained section

architecture mux4to1conditional of mux4to1conditional is
begin
	o<= a(0) when s="00" else a(1) when s="01" else a(2) when s="10" else a(3) when s="11" ;												   
end mux4to1conditional;
