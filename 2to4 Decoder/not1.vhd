---------------------------------------------------------------------------------------------------
--
-- Title       : not1
-- Design      : deocder
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : not1.vhd
-- Generated   : Wed Aug 23 10:23:45 2017
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
--{entity {not1} architecture {not1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity not1 is
port(c: in std_logic ; o: out std_logic );
end not1;

--}} End of automatically maintained section

architecture not1 of not1 is
begin
	
	o <= not c;
	
end not1;
