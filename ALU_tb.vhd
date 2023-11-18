----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ahmet Çaymaz

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity ALU_tb is
end ALU_tb;

architecture Behavioral of ALU_tb is

component ALU is
port (  
  x: in std_logic_vector (2 downto 0);
  A,B : in std_logic_vector(5 downto 0);
  S: out std_logic_vector( 5 downto 0);
  carryflag: out std_logic
);
end component;

signal x_t : std_logic_vector (2 downto 0) := "000";
signal A_t : std_logic_vector (5 downto 0) := "000000";
signal B_t : std_logic_vector (5 downto 0):= "000000";
signal S_t : std_logic_vector (5 downto 0):= "000000";
signal carryflag_t : std_logic := '0';


begin
UUT : ALU port map (
x => x_t,
A => A_t,
B => B_t,
S => S_t,
carryflag => carryflag_t
);


operationselection : process
 begin
 for i in 0 to 7 loop
    x_t <= std_logic_vector(to_unsigned(i, x_t'length));
 wait for 20ns;
 end loop;
end process;

Ainput_process: process
    begin
    A_t <= "101010";
    wait for 100ns;
    end process;
 
Binput_process: process
    begin
    B_t <= "011010";
    wait for 100ns;
    end process;


end Behavioral;
