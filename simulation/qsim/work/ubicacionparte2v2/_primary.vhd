library verilog;
use verilog.vl_types.all;
entity ubicacionparte2v2 is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        Gizq            : in     vl_logic;
        Gder            : in     vl_logic;
        S               : in     vl_logic;
        Z2              : out    vl_logic;
        Z1              : out    vl_logic;
        Z0              : out    vl_logic;
        SorR            : out    vl_logic
    );
end ubicacionparte2v2;
