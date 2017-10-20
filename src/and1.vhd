---------------------------------------------------------------------------------------------------
--
-- Title       : and1
-- Design      : deocder
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : and1.vhd
-- Generated   : Wed Aug 23 10:21:23 2017
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
--{entity {and1} architecture {and1}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and1 is
	port(c: in std_logic_vector (0 to 1);
	o: out std_logic);
end and1;

--}} End of automatically maintained section

architecture and1 of and1 is
begin
	
	o<= c(0) and c(1);
end and1;
