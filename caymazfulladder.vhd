library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity caymazfulladder is
    Port (
    x : in std_logic;
    y : in std_logic;
    z : in std_logic;
    C : out std_logic;
    S : out std_logic  
     );
end caymazfulladder;

architecture Behavioral of caymazfulladder is
begin
C <= (x and z) or (x and y) or (y and z);
S <= x xor y xor z;
end Behavioral;
