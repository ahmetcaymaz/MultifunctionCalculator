----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ahmet Çaymaz

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALextender is
  Port (
  operation : in std_logic_vector (2 downto 0); -- Operation Mode
  A,B : in std_logic_vector(5 downto 0); -- Inputs of Al extender
  a0,b0 : out std_logic_vector(5 downto 0); -- Outputs of Al extender (Inputs of Adder)
  c0 : out std_logic --(AL extender carry decider) (carry input of binary adder) 
  );
end ALextender;

architecture Behavioral of ALextender is


begin
-- Al-extendeter
process(operation)
begin
    case operation is 
    when "000" => a0 <= A; b0 <= B; c0 <= '0';
    when "001" => a0 <= A; b0 <= not B; c0 <= '1';
    when "010" => a0 <= A; b0 <= "000000"; c0 <= '1';
    when "011" => a0 <= A; b0 <= "000000"; c0 <= '0';
    when "100" => a0 <= A and B; b0 <= "000000"; c0 <= '0';
    when "101" => a0 <= A or B; b0 <= "000000"; c0 <= '0';
    when "110" => a0 <= A xor B; b0 <= "000000"; c0 <= '0';
    when "111" => a0 <= not A; b0 <= "000000"; c0 <= '0';
    when others => a0 <= (others => '0'); b0 <=  (others => '0'); c0 <= '0';
    end case;
end process;

end Behavioral;
