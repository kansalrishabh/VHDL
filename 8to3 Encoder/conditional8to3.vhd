---------------------------------------------------------------------------------------------------
--
-- Title       : conditional8to3
-- Design      : encoder
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : conditional8to3.vhd
-- Generated   : Wed Sep  6 11:10:00 2017
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
--{entity {conditional8to3} architecture {conditional8to3}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity conditional8to3 is
	port ( d : in std_logic_vector(0 to 7);
	o: out std_logic_vector (0 to 2); vo : out std_logic);
end conditional8to3;
architecture conditional8to3 of conditional8to3 is
begin
o<= "001" when d(1)='1' else "010" when d(2)='1' else "011" when d(3)='1' else "100" when d(4)='1'
else "101" when d(5)='1' else "110" when d(6)='1' else "111" when d(7)='1';
	vo<='0' when d="0" else '1';
end conditional8to3;
