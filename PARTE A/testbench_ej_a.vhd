LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY testbench_ej_a IS
END testbench_ej_a;

ARCHITECTURE behavior OF testbench_ej_a IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ej_a
    PORT(
         SW1 : IN  std_logic;
         SW2 : IN  std_logic;
         SW3 : IN  std_logic;
         LED : OUT std_logic
        );
    END COMPONENT;
    
    -- Signals to connect to UUT
    signal SW1 : std_logic := '0';
    signal SW2 : std_logic := '0';
    signal SW3 : std_logic := '0';
    signal LED : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: ej_a PORT MAP (
          SW1 => SW1,
          SW2 => SW2,
          SW3 => SW3,
          LED => LED
        );

    -- Stimulus process
    stim_proc: process
    begin		
        -- Test Case 1
        SW1 <= '0'; SW2 <= '0'; SW3 <= '0';
        wait for 10 ns;
        
        -- Test Case 2
        SW1 <= '0'; SW2 <= '0'; SW3 <= '1';
        wait for 10 ns;
        
        -- Test Case 3
        SW1 <= '0'; SW2 <= '1'; SW3 <= '0';
        wait for 10 ns;
        
        -- Test Case 4
        SW1 <= '0'; SW2 <= '1'; SW3 <= '1';
        wait for 10 ns;
        
        -- Test Case 5
        SW1 <= '1'; SW2 <= '0'; SW3 <= '0';
        wait for 10 ns;
        
        -- Test Case 6
        SW1 <= '1'; SW2 <= '0'; SW3 <= '1';
        wait for 10 ns;
        
        -- Test Case 7
        SW1 <= '1'; SW2 <= '1'; SW3 <= '0';
        wait for 10 ns;
        
        -- Test Case 8
        SW1 <= '1'; SW2 <= '1'; SW3 <= '1';
        wait for 10 ns;
        
        wait;
    end process;

END;