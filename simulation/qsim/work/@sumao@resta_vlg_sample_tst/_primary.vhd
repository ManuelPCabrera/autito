library verilog;
use verilog.vl_types.all;
entity SumaoResta_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        SorR            : in     vl_logic;
        Z0              : in     vl_logic;
        Z1              : in     vl_logic;
        Z2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SumaoResta_vlg_sample_tst;
