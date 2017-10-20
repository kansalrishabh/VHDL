---------------------------------------------------------------------------------------------------
--
-- Title       : mux4to1
-- Design      : multiplexer
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux4to1.vhd
-- Generated   : Wed Aug 23 12:27:41 2017
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
--{entity {mux4to1} architecture {mux4to1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux4to1 is	
	port(a : in std_logic_vector (0 to 3);
	 s : in std_logic_vector (0 to 1); o : out std_logic);
end mux4to1;

--}} End of automatically maintained section

architecture mux4to1 of mux4to1 is
begin	  
	with s select 
	o <=  a(0) when "00",
	a(1) when "01",
	a(2) when "10",
	a(3) when "11",
	'0' when others;   
	
	
end mux4to1;
