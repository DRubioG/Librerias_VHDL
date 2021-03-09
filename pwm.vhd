library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity servo is
    generic(
        pwm_periodo : integer := 1000000        --Periodo: 20ns
    );
  Port ( 
  rst, clk: in std_logic;
  ciclo_trabajo : in std_logic_vector(19 downto 0);
  pwm : out std_logic
  
  );
end servo;

architecture Behavioral of servo is
signal cont: unsigned(19 downto 0);
begin

process(rst, clk)
begin 
    if rst='0' then
        pwm<='0';
        cont<=(others=>'0');
    elsif rising_edge(clk) then
        cont<=cont+1;
        if cont<unsigned(grados) then
            pwm<='1';
        elsif cont<pwm_periodo then
            pwm<='0';
        elsif cont =pwm_periodo then
            cont<=(others=>'0');
        end if;
    end if;
end process;

end Behavioral;
