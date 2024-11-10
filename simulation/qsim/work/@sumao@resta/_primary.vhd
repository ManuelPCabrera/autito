library verilog;
use verilog.vl_types.all;
entity SumaoResta is
    port(
        Z0              : in     vl_logic;
        Z1              : in     vl_logic;
        Z2              : in     vl_logic;
        SorR            : in     vl_logic;
        clock           : in     vl_logic;
        p0              : out    vl_logic;
        p1              : out    vl_logic;
        p2              : out    vl_logic;
        p3              : out    vl_logic
    );
end SumaoResta;
