---------------------------------------------------------------------------------------------------
--
-- Title       : encode8to3
-- Design      : encoder
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : encode8to3.vhd
-- Generated   : Tue Sep  5 23:59:18 2017
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
--{entity {encode8to3} architecture {encode8to3}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity encode8to3 is 
	port ( d : in std_logic_vector(0 to 7);
	o: out std_logic_vector (0 to 2); vo : out std_logic);
end encode8to3;

--}} End of automatically maintained section

architecture encode8to3 of encode8to3 is
begin
	process (d)	begin
		if( not d="0") 	then  
			vo<='1';  
			
			if(d(1)='1') 	then
				o<="001";
			elsif(d(2)='1') 	then
				o<="010";
			elsif(d(3)='1') 	then
				o<="011"; 
			elsif(d(4)='1') 	then
				o<="100";
			elsif(d(5)='1') 	then
				o<="101";
			elsif(d(6)='1') 	then
				o<="110";
			elsif(d(7)='1') 	then
				o<="111";
			else	   
				o<="000";
			end if;
		else
			vo<='0'; 
		end if;
	end process;
end encode8to3;
