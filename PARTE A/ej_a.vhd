library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ej_a is 
	Port (SW1 : in STD_LOGIC;
			SW2 : in STD_LOGIC;
			SW3 : in STD_LOGIC;
			LED : out STD_LOGIC);
end ej_a;

architecture Behavioral of ej_a is 

begin 
	LED <= (not(SW2) and  SW3) or (not (SW2) xnor SW1);
end Behavioral;