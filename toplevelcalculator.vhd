----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ahmet Çaymaz


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevelcalculator is
  Port (
  clk : in std_logic;
  load : in std_logic;
  x: in std_logic_vector (2 downto 0);
  A,B : in std_logic_vector(5 downto 0);
  Registerout: out std_logic_vector(5 downto 0);
  Carryregisterout : out std_logic
   );
end toplevelcalculator;

architecture Behavioral of toplevelcalculator is

component ALU is
Port ( 
  x: in std_logic_vector (2 downto 0);
  A,B : in std_logic_vector(5 downto 0);
  S: out std_logic_vector( 5 downto 0);
  carryflag: out std_logic
  );
end component;

component registers is 
Port ( 
  clk : in std_logic;
  load : in std_logic;
  carryregisterin : in std_logic;
  carryregisterout : out std_logic;
  D : in std_logic_vector (5 downto 0);
  Q : out std_logic_vector (5 downto 0)
  );
end component; 

signal aluresult : std_logic_vector (5 downto 0) := "000000";
signal alucarryresult : std_logic := '0';
signal outputcarryregister : std_logic := '0';
signal outputregister : std_logic_vector (5 downto 0) := "000000";

begin

ALUport : ALU port map (x => x, A => A, B => B, S => aluresult, carryflag => alucarryresult);
RegistersPort: registers port map (clk => clk, load => load, carryregisterin => alucarryresult, carryregisterout => outputcarryregister, D => aluresult, Q => outputregister);

Carryregisterout <= outputcarryregister;
Registerout <= outputregister;

end Behavioral;
