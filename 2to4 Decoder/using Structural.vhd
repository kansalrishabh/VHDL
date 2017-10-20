---------------------------------------------------------------------------------------------------
--
-- Title       : structural
-- Design      : deocder
-- Author      : Kansal
-- Company     : Kansal
--
---------------------------------------------------------------------------------------------------
--
-- File        : structural.vhd
-- Generated   : Wed Aug 23 10:10:47 2017
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
--{entity {structural} architecture {structural}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity structural is 
	port (a : in std_logic_vector (0 to 1);
		d: out std_logic_vector (0 to 3));
end structural;

--}} End of automatically maintained section

architecture structural of structural is

component and1
port(c: in std_logic_vector (0 to 1);
	o: out std_logic);
end component and1;
component not1
port(c: in std_logic ; o: out std_logic );
end component not1;
signal s1,s2: std_logic;
signal q1,q2,q3: std_logic_vector (0 to 1);
begin
n1: not1 port map(a(0), s1);
n2: not1 port map(a(1), s2);
q1<=s1&s2;
a1: and1 port map(q1, d(0) );
q2<=a(0)&s2;
a2: and1 port map( q2, d(1) );
q3<=s1&a(1);
a3: and1 port map( q3,d(2) );
a4: and1 port map(a,d(3) );
  
end structural;