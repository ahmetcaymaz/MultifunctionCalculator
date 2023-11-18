library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity caymazbinaryadder is
port(
    x : in std_logic_vector (5 downto 0);
    y : in std_logic_vector (5 downto 0);
    s : out std_logic_vector (5 downto 0);
    C0 : in std_logic;
    Cy : out std_logic
    );
end caymazbinaryadder;
architecture Behavioral of caymazbinaryadder is
component caymazfulladder is
port(x,y,z : in std_logic;
       S,C : out std_logic
     ); 
end component;
signal  c1,c2,c3,c4,c5 : std_logic := '0';
begin
FA1: caymazfulladder port map (z=>C0,x=>x(0),y=>y(0),S=>s(0),C=>c1);
FA2: caymazfulladder port map (z=>c1,x=>x(1),y=>y(1),S=>s(1),C=>c2);
FA3: caymazfulladder port map (z=>c2,x=>x(2),y=>y(2),S=>s(2),C=>c3);
FA4: caymazfulladder port map (z=>c3,x=>x(3),y=>y(3),S=>s(3),C=>c4);
FA5: caymazfulladder port map (z=>c4,x=>x(4),y=>y(4),S=>s(4),C=>c5);
FA6: caymazfulladder port map (z=>c5,x=>x(5),y=>y(5),S=>s(5),C=>Cy);
end Behavioral;
