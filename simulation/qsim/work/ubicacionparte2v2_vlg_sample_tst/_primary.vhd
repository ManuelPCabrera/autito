library verilog;
use verilog.vl_types.all;
entity ubicacionparte2v2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        Gder            : in     vl_logic;
        Gizq            : in     vl_logic;
        reset           : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ubicacionparte2v2_vlg_sample_tst;
