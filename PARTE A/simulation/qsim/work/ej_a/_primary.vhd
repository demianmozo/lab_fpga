library verilog;
use verilog.vl_types.all;
entity ej_a is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic;
        LED             : out    vl_logic
    );
end ej_a;