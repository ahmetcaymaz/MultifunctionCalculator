library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;


entity toplevelcalculator_tb is
--  Port ( );
end toplevelcalculator_tb;

architecture Behavioral of toplevelcalculator_tb is

component toplevelcalculator is
  Port (
  clk : in std_logic;
  load : in std_logic;
  x: in std_logic_vector (2 downto 0);
  A,B : in std_logic_vector(5 downto 0);
  Registerout: out std_logic_vector(5 downto 0);
  Carryregisterout : out std_logic
   );
end component;


signal clk_t : std_logic :='0';
signal load_t : std_logic := '0';
signal x_t : std_logic_vector (2 downto 0) := "000";
signal A_t : std_logic_vector (5 downto 0) := "000000";
signal B_t : std_logic_vector (5 downto 0):= "000000";
signal Carryregisterout_t : std_logic := '0';
signal Registerout_t : std_logic_vector (5 downto 0):= "000000";


constant clk_in_period : time := 10ns;
constant load_period : time := 10ns;

begin

UUT: toplevelcalculator port map (
clk => clk_t,
load => load_t,
A => A_t,
B => B_t,
x => x_t,
Registerout => Registerout_t,
Carryregisterout => Carryregisterout_t
);

clk_process :process
    begin
    clk_t <= '0';
    wait for clk_in_period/2;
    clk_t <= '1';
    wait for clk_in_period/2;
    end process;
 
operationselection : process
 begin
 for i in 0 to 7 loop
    x_t <= std_logic_vector(to_unsigned(i, x_t'length));
 wait for 20ns;
 end loop;
end process;
 
loadprocess : process
  begin
    for i in 1 to 14 loop  -- Repeat the loop 10 times for a 100ns simulation
      load_t <= '0';
      wait for load_period;  -- Wait for 15ns
      load_t <= '1';
      wait for load_period;  -- Wait for another 15ns
    end loop;
end process;


--load_process: process
--    begin
--    load_t <= '0';
--    wait for 5ns;
--    load_t <= '1';
--    wait for 10ns;
--    load_t <= '0';
--    wait for 5ns;
--    load_t <= '1';
--    wait for 15ns;
--    load_t <= '0';
--    wait for 5ns;
--    load_t <= '1';
--    wait for 10ns;
--    load_t <= '0';
--    wait for 5ns;
--    load_t <= '1';
--    wait for 15ns;
--    end process;

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
