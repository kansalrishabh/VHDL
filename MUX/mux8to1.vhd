---------------------------------------------------------------------------------------------------
--
-- Title       : mux8to1
-- Design      : multiplexer
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : mux8to1.vhd
-- Generated   : Wed Aug 23 12:56:25 2017
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
--{entity {mux8to1} architecture {mux8to1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux8to1 is 
	port (a : in std_logic_vector (0 to 7); s: in std_logic_vector (0 to 2); o : out std_logic);
end mux8to1;

--}} End of automatically maintained section

architecture mux8to1 of mux8to1 is
begin
	process(s)		begin
		if(s="000") 	then
			o<=a(0) ;
		elsif(s="001")		then
			o<=a(1);
		elsif(s="010")		then
			o<=a(2);
		elsif(s="011")		then
			o<=a(3);
		elsif(s="100")		then
			o<=a(4);
		elsif(s="101")		then
			o<=a(5);
		elsif(s="111")		then
			o<=a(6);
		else
			o<=a(7);
		end if;
	end process;
	
end mux8to1;
