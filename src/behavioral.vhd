---------------------------------------------------------------------------------------------------
--
-- Title       : behavioral
-- Design      : deocder
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : behavioral.vhd
-- Generated   : Wed Aug 23 09:46:10 2017
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
--{entity {behavioral} architecture {behavioral}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity behavioral is
	port(a: in std_logic_vector (0 to 1);
		d : out std_logic_vector (0 to 3));
end behavioral;

--}} End of automatically maintained section

architecture behavioral of behavioral is
begin

	process(a)		begin
		if(a(0)='0' and a(1)='0') 	then
			 d<="1000"; 		
			elsif(a(0)='0' and a(1)='1') 	then	
			 d<="0100"; 		
			elsif(a(0)='1' and a(1)='0') 	then
			 d<="0010";		
			else
			d<="0001"; 		
		end if;
	end process;

end behavioral;