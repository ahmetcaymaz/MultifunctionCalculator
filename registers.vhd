----------------------------------------------------------------------------------
-- Company: 
-- Engineer: AHMET ÇAYMAZ

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registers is
  Port (
  clk : in std_logic;
  load : in std_logic;
  carryregisterin : in std_logic := '0';
  carryregisterout : out std_logic := '0';
  D : in std_logic_vector (5 downto 0);
  Q : out std_logic_vector (5 downto 0) := "000000"
  );
end registers;

architecture Behavioral of registers is

begin
    process(clk,load)
    begin
    if (load = '1') then
        if (rising_edge(clk)) then
        Q <= D;
        carryregisterout <= carryregisterin;
        end if;
    end if;
    end process;
end Behavioral;
