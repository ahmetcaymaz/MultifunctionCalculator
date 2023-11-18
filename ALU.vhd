----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ahmet Çaymaz

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
port (  
  x: in std_logic_vector (2 downto 0);
  A,B : in std_logic_vector(5 downto 0);
  S: out std_logic_vector( 5 downto 0);
  carryflag: out std_logic
);
end ALU;

architecture Behavioral of ALU is

component Alextender is
port(
  operation : in std_logic_vector (2 downto 0); -- Operation Mode
  A,B : in std_logic_vector(5 downto 0); -- Inputs of Al extender
  a0,b0 : out std_logic_vector(5 downto 0); -- Outputs of Al extender (Inputs of Adder)
  c0 : out std_logic --(AL extender carry decider) (carry input of binary adder) 
  );
end component;

component caymazbinaryadder is
port(
    x : in std_logic_vector (5 downto 0);
    y : in std_logic_vector (5 downto 0);
    s : out std_logic_vector (5 downto 0);
    C0 : in std_logic;
    Cy : out std_logic
    );
end component;

signal Ia0, Ib0: std_logic_vector (5 downto 0) := "000000"; -- Adder Inputs coming Alextender
signal Ic0 : std_logic := '0'; -- Adder carry input coming Alextender
signal s_comingadder : std_logic_vector(5 downto 0) := "000000"; -- Sum coming Binaryadder
signal Cy_comingbinaryadder : std_logic := '0'; -- Carry Flag Detection -- Carryput coming Binaryadder


begin

AlextenderPort: Alextender port map (operation => x , A => A, B => B, a0 => Ia0, b0 => Ib0, c0 => Ic0);

BinaryAdderPort: caymazbinaryadder port map(x => Ia0, y => Ib0,C0 => Ic0,s => s_comingadder, Cy =>Cy_comingbinaryadder );
S <= s_comingadder;
carryflag <= Cy_comingbinaryadder;

end Behavioral;
