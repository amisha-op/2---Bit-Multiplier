library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity multiplier is
  port (
    ip_ao: in std_logic;
    ip_a1  : in std_logic;
    ip_bo  : in std_logic;
    ip_b1  : in std_logic;
    co  : out std_logic;
    c1 : out std_logic;
    c2  : out std_logic;
    c3  : out std_logic

    );

end multiplier;
 
architecture rtl of multiplier is

begin
  co  < = ip_ao and ip_bo ;
  c1 < = (ip_ao and ip_b1) xor (ip_a1 and ip_bo) ;
  c2  < = (ip_a1 and ip_b1) xor ((ip_ao and ip_b1) and (ip_a1 and ip_bo));
  c3  < = (ip_a1 and ip_b1) and ((ip_ao and ip_b1) and (ip_a1 and ip_bo));

end rtl;