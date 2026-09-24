`ifdef COCOTB_SIM
    `define COCOTB_CODE(name) \
        string __top_module; \
        string __vcd_file; \
        initial begin \
            if ($value$plusargs("TOP_MODULE=%s", __top_module) && __top_module == `"name`" && $value$plusargs("VCD_FILENAME=%s", __vcd_file)) begin \
                $dumpfile (__vcd_file); \
                $dumpvars (0, \name ); \
            end \
        end
`else
    `define COCOTB_CODE(name)
`endif


module \std::cdc::sync2[1543]  (
        input clk_i,
        input input_i,
        output output__
    );
    `COCOTB_CODE( std::cdc::sync2[1543] )
    logic \clk ;
    assign \clk  = clk_i;
    logic \input ;
    assign \input  = input_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:14,14" *)
    reg \sync1 ;
    (* src = "<compiler dir>/stdlib/cdc.spade:15,14" *)
    reg \sync2 ;
    always @(posedge \clk ) begin
        \sync1  <= \input ;
    end
    always @(posedge \clk ) begin
        \sync2  <= \sync1 ;
    end
    assign output__ = \sync2 ;
endmodule


module \std::cdc::sync2_bool  (
        input clk_i,
        input input_i,
        output output__
    );
    `COCOTB_CODE( std::cdc::sync2_bool )
    logic \clk ;
    assign \clk  = clk_i;
    logic \input ;
    assign \input  = input_i;
    (* src = "<compiler dir>/stdlib/cdc.spade:31,14" *)
    logic _e_542;
    (* src = "<compiler dir>/stdlib/cdc.spade:31,14" *)
    
    \std::cdc::sync2[1543]  \sync2_0 (.clk_i(\clk ), .input_i(\input ), .output__(_e_542));
    assign output__ = _e_542;
endmodule


module \std::conv::tri_to_bool  (
        input t_i,
        output output__
    );
    `COCOTB_CODE( std::conv::tri_to_bool )
    logic \t ;
    assign \t  = t_i;
    (* src = "<compiler dir>/stdlib/conv.spade:80,5" *)
    logic _e_826;
    (* src = "<compiler dir>/stdlib/conv.spade:80,5" *)
    
    \std::conv::impl#12::as_bool  \as_bool_0 (.self_i(\t ), .output__(_e_826));
    assign output__ = _e_826;
endmodule


module \std::io::rising_edge  (
        input clk_i,
        input value_i,
        output output__
    );
    `COCOTB_CODE( std::io::rising_edge )
    logic \clk ;
    assign \clk  = clk_i;
    logic \value ;
    assign \value  = value_i;
    (* src = "<compiler dir>/stdlib/io.spade:12,14" *)
    reg \old_value ;
    (* src = "<compiler dir>/core/ops.spade:255,29" *)
    logic _e_2324;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2323;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_1068;
    (* src = "<compiler dir>/core/ops.spade:297,29" *)
    logic _e_2332;
    (* src = "<compiler dir>/core/ops.spade:297,37" *)
    logic _e_2333;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2331;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_1066;
    always @(posedge \clk ) begin
        \old_value  <= \value ;
    end
    assign _e_2324 = {\old_value };
    assign _e_2323 = ~_e_2324;
    assign _e_1068 = _e_2323;
    assign _e_2332 = {\value };
    assign _e_2333 = {_e_1068};
    assign _e_2331 = _e_2332 & _e_2333;
    assign _e_1066 = _e_2331;
    assign output__ = _e_1066;
endmodule


module \std::io::falling_edge  (
        input clk_i,
        input value_i,
        output output__
    );
    `COCOTB_CODE( std::io::falling_edge )
    logic \clk ;
    assign \clk  = clk_i;
    logic \value ;
    assign \value  = value_i;
    (* src = "<compiler dir>/stdlib/io.spade:27,14" *)
    reg \old_value ;
    (* src = "<compiler dir>/core/ops.spade:255,29" *)
    logic _e_2342;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2341;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_1075;
    (* src = "<compiler dir>/core/ops.spade:297,29" *)
    logic _e_2350;
    (* src = "<compiler dir>/core/ops.spade:297,37" *)
    logic _e_2351;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2349;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2348;
    always @(posedge \clk ) begin
        \old_value  <= \value ;
    end
    assign _e_2342 = {\value };
    assign _e_2341 = ~_e_2342;
    assign _e_1075 = _e_2341;
    assign _e_2350 = {_e_1075};
    assign _e_2351 = {\old_value };
    assign _e_2349 = _e_2350 & _e_2351;
    assign _e_2348 = _e_2349;
    assign output__ = _e_2348;
endmodule


module \swim_tinytapeout::design  (
        input clk_i,
        input rst_i,
        input[7:0] ui_in_i,
        output[7:0] output__
    );
    `COCOTB_CODE( swim_tinytapeout::design )
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[7:0] \ui_in ;
    assign \ui_in  = ui_in_i;
    localparam[13:0] _e_1767 = 0;
    localparam[13:0] _e_1771 = 10000;
    (* src = "<compiler dir>/core/ops.spade:53,9" *)
    logic _e_1769;
    localparam[13:0] _e_1773 = 0;
    localparam[13:0] _e_1777 = 1;
    (* src = "src/main.spade:7,9" *)
    logic[13:0] _e_1775;
    (* src = "src/main.spade:4,55" *)
    logic[13:0] _e_1768;
    (* src = "src/main.spade:4,14" *)
    reg[13:0] \second_counter ;
    localparam[9:0] _e_1781 = 0;
    localparam[13:0] _e_1785 = 0;
    (* src = "<compiler dir>/core/ops.spade:53,9" *)
    logic _e_2360;
    localparam[2:0] _e_1791 = 0;
    (* src = "src/main.spade:13,13" *)
    logic _e_1789;
    (* src = "<compiler dir>/core/ops.spade:255,29" *)
    logic _e_2364;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2363;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2362;
    localparam[9:0] _e_1795 = 1;
    (* src = "src/main.spade:14,13" *)
    logic[9:0] _e_1793;
    localparam[9:0] _e_1799 = 1;
    (* src = "src/main.spade:16,13" *)
    logic[9:0] _e_1797;
    (* src = "src/main.spade:13,9" *)
    logic[9:0] _e_1787;
    localparam[9:0] _e_1804 = 1000;
    (* src = "<compiler dir>/core/ops.spade:53,9" *)
    logic _e_1802;
    localparam[9:0] _e_1806 = 0;
    (* src = "src/main.spade:19,9" *)
    logic[9:0] _e_1801;
    (* src = "src/main.spade:11,44" *)
    logic[9:0] _e_1782;
    (* src = "src/main.spade:11,14" *)
    reg[9:0] \val ;
    localparam[13:0] _e_1812 = 2500;
    (* src = "src/main.spade:26,31" *)
    logic[13:0] _e_1810;
    (* src = "src/main.spade:26,25" *)
    logic[1:0] \part ;
    localparam[1:0] _e_2262 = 0;
    logic _e_2261;
    localparam[9:0] _e_1820 = 100;
    (* src = "src/main.spade:29,18" *)
    logic[9:0] _e_1818;
    (* src = "src/main.spade:29,12" *)
    logic[3:0] _e_1817;
    localparam[1:0] _e_2264 = 1;
    logic _e_2263;
    localparam[9:0] _e_1826 = 10;
    (* src = "src/main.spade:30,18" *)
    logic[9:0] _e_1824;
    localparam[9:0] _e_1827 = 10;
    (* src = "src/main.spade:30,18" *)
    logic[9:0] _e_1823;
    (* src = "src/main.spade:30,12" *)
    logic[3:0] _e_1822;
    localparam[1:0] _e_2266 = 2;
    logic _e_2265;
    localparam[9:0] _e_1832 = 10;
    (* src = "src/main.spade:31,18" *)
    logic[9:0] _e_1830;
    (* src = "src/main.spade:31,12" *)
    logic[3:0] _e_1829;
    localparam[1:0] _e_2268 = 3;
    logic _e_2267;
    localparam[3:0] _e_1834 = 14;
    (* src = "src/main.spade:28,26" *)
    logic[3:0] \digit ;
    localparam[3:0] _e_2270 = 0;
    logic _e_2269;
    localparam[7:0] _e_1839 = 63;
    localparam[3:0] _e_2272 = 1;
    logic _e_2271;
    localparam[7:0] _e_1841 = 6;
    localparam[3:0] _e_2274 = 2;
    logic _e_2273;
    localparam[7:0] _e_1843 = 91;
    localparam[3:0] _e_2276 = 3;
    logic _e_2275;
    localparam[7:0] _e_1845 = 79;
    localparam[3:0] _e_2278 = 4;
    logic _e_2277;
    localparam[7:0] _e_1847 = 102;
    localparam[3:0] _e_2280 = 5;
    logic _e_2279;
    localparam[7:0] _e_1849 = 109;
    localparam[3:0] _e_2282 = 6;
    logic _e_2281;
    localparam[7:0] _e_1851 = 125;
    localparam[3:0] _e_2284 = 7;
    logic _e_2283;
    localparam[7:0] _e_1853 = 7;
    localparam[3:0] _e_2286 = 8;
    logic _e_2285;
    localparam[7:0] _e_1855 = 127;
    localparam[3:0] _e_2288 = 9;
    logic _e_2287;
    localparam[7:0] _e_1857 = 111;
    localparam[3:0] _e_2290 = 14;
    logic _e_2289;
    localparam[7:0] _e_1859 = 128;
    localparam[0:0] _e_2291 = 1;
    localparam[7:0] _e_1861 = 255;
    (* src = "src/main.spade:35,5" *)
    logic[7:0] _e_1836;
    logic[3:0] \_ ;
    assign _e_1769 = \second_counter  == _e_1771;
    (* src = "src/main.spade:7,9" *)
    
    \core::ops::impl#77::wrapping_add[1545]  \wrapping_add_0 (.self_i(\second_counter ), .rhs_i(_e_1777), .output__(_e_1775));
    assign _e_1768 = _e_1769 ? _e_1773 : _e_1775;
    always @(posedge \clk ) begin
        if (\rst ) begin
            \second_counter  <= _e_1767;
        end
        else begin
            \second_counter  <= _e_1768;
        end
    end
    assign _e_2360 = \second_counter  == _e_1785;
    assign _e_1789 = \ui_in [_e_1791];
    assign _e_2364 = {_e_1789};
    assign _e_2363 = ~_e_2364;
    assign _e_2362 = _e_2363;
    (* src = "src/main.spade:14,13" *)
    
    \core::ops::impl#77::wrapping_add[1546]  \wrapping_add_1 (.self_i(\val ), .rhs_i(_e_1795), .output__(_e_1793));
    (* src = "src/main.spade:16,13" *)
    
    \core::ops::impl#79::wrapping_sub[1547]  \wrapping_sub_0 (.self_i(\val ), .rhs_i(_e_1799), .output__(_e_1797));
    assign _e_1787 = _e_2362 ? _e_1793 : _e_1797;
    assign _e_1802 = \val  == _e_1804;
    assign _e_1801 = _e_1802 ? _e_1806 : \val ;
    assign _e_1782 = _e_2360 ? _e_1787 : _e_1801;
    always @(posedge \clk ) begin
        if (\rst ) begin
            \val  <= _e_1781;
        end
        else begin
            \val  <= _e_1782;
        end
    end
    assign _e_1810 = \second_counter  / _e_1812;
    assign \part  = _e_1810[1:0];
    assign _e_2261 = \part  == _e_2262;
    assign _e_1818 = \val  / _e_1820;
    assign _e_1817 = _e_1818[3:0];
    assign _e_2263 = \part  == _e_2264;
    assign _e_1824 = \val  / _e_1826;
    assign _e_1823 = _e_1824 % _e_1827;
    assign _e_1822 = _e_1823[3:0];
    assign _e_2265 = \part  == _e_2266;
    assign _e_1830 = \val  % _e_1832;
    assign _e_1829 = _e_1830[3:0];
    assign _e_2267 = \part  == _e_2268;
    always_comb begin
        priority casez ({_e_2261, _e_2263, _e_2265, _e_2267})
            4'b1???: \digit  = _e_1817;
            4'b01??: \digit  = _e_1822;
            4'b001?: \digit  = _e_1829;
            4'b0001: \digit  = _e_1834;
            4'b?: \digit  = 4'dx;
        endcase
    end
    assign _e_2269 = \digit  == _e_2270;
    assign _e_2271 = \digit  == _e_2272;
    assign _e_2273 = \digit  == _e_2274;
    assign _e_2275 = \digit  == _e_2276;
    assign _e_2277 = \digit  == _e_2278;
    assign _e_2279 = \digit  == _e_2280;
    assign _e_2281 = \digit  == _e_2282;
    assign _e_2283 = \digit  == _e_2284;
    assign _e_2285 = \digit  == _e_2286;
    assign _e_2287 = \digit  == _e_2288;
    assign _e_2289 = \digit  == _e_2290;
    always_comb begin
        priority casez ({_e_2269, _e_2271, _e_2273, _e_2275, _e_2277, _e_2279, _e_2281, _e_2283, _e_2285, _e_2287, _e_2289, _e_2291})
            12'b1???????????: _e_1836 = _e_1839;
            12'b01??????????: _e_1836 = _e_1841;
            12'b001?????????: _e_1836 = _e_1843;
            12'b0001????????: _e_1836 = _e_1845;
            12'b00001???????: _e_1836 = _e_1847;
            12'b000001??????: _e_1836 = _e_1849;
            12'b0000001?????: _e_1836 = _e_1851;
            12'b00000001????: _e_1836 = _e_1853;
            12'b000000001???: _e_1836 = _e_1855;
            12'b0000000001??: _e_1836 = _e_1857;
            12'b00000000001?: _e_1836 = _e_1859;
            12'b000000000001: _e_1836 = _e_1861;
            12'b?: _e_1836 = 8'dx;
        endcase
    end
    assign \_  = \digit ;
    assign output__ = _e_1836;
endmodule


module tt_um_your_design (
        input clk,
        input rst_n,
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input ena
    );
    `COCOTB_CODE( tt_um_your_design )
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    (* src = "<compiler dir>/core/ops.spade:255,29" *)
    logic _e_2374;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2373;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic \rst ;
    localparam[7:0] _e_1867 = 0;
    localparam[7:0] _e_1869 = 0;
    (* src = "src/main.spade:76,18" *)
    logic[7:0] \output ;
    (* src = "<compiler dir>/stdlib/conv.spade:512,9" *)
    logic[7:0] _e_1876;
    assign _e_2374 = {\rst_n };
    assign _e_2373 = ~_e_2374;
    assign \rst  = _e_2373;
    assign \uio_out_mut  = _e_1867;
    assign \uio_oe_mut  = _e_1869;
    (* src = "src/main.spade:76,18" *)
    
    \swim_tinytapeout::design  \design_0 (.clk_i(\clk ), .rst_i(\rst ), .ui_in_i(\ui_in ), .output__(\output ));
    (* src = "<compiler dir>/stdlib/conv.spade:512,9" *)
    
    \std::conv::impl#14::as_bits[1550]  \as_bits_0 (.self_i(\output ), .output__(_e_1876));
    assign \uo_out_mut  = _e_1876;
    
endmodule


module top (
        input clk,
        input rst_n,
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input ena
    );
    `COCOTB_CODE( top )
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    (* src = "src/main.spade:95,5" *)
    
    tt_um_your_design \tt_um_your_design_0 (.clk(\clk ), .rst_n(\rst_n ), .ui_in(\ui_in ), .uo_out(\uo_out_mut ), .uio_in(\uio_in ), .uio_out(\uio_out_mut ), .uio_oe(\uio_oe_mut ), .ena(\ena ));
endmodule


module \std::conv::impl#10::as_clock  (
        input self_i,
        output output__
    );
    `COCOTB_CODE( std::conv::impl#10::as_clock )
    logic \self ;
    assign \self  = self_i;
    logic _e_870;
    assign _e_870 = \self ;
    assign output__ = _e_870;
endmodule


module \std::conv::impl#10::as_uint  (
        input self_i,
        output output__
    );
    `COCOTB_CODE( std::conv::impl#10::as_uint )
    logic \self ;
    assign \self  = self_i;
    logic _e_874;
    assign _e_874 = \self ;
    assign output__ = _e_874;
endmodule


module \std::conv::impl#11::as_bool  (
        input self_i,
        output output__
    );
    `COCOTB_CODE( std::conv::impl#11::as_bool )
    logic \self ;
    assign \self  = self_i;
    logic _e_885;
    assign _e_885 = \self ;
    assign output__ = _e_885;
endmodule


module \std::conv::impl#12::as_bool  (
        input self_i,
        output output__
    );
    `COCOTB_CODE( std::conv::impl#12::as_bool )
    logic \self ;
    assign \self  = self_i;
    logic _e_893;
    assign _e_893 = \self ;
    assign output__ = _e_893;
endmodule


module \std::conv::impl#14::as_bits[1550]  (
        input[7:0] self_i,
        output[7:0] output__
    );
    `COCOTB_CODE( std::conv::impl#14::as_bits[1550] )
    logic[7:0] \self ;
    assign \self  = self_i;
    logic[7:0] _e_915;
    assign _e_915 = \self ;
    assign output__ = _e_915;
endmodule


module \std::default::impl#17::default  (
        output output__
    );
    `COCOTB_CODE( std::default::impl#17::default )
    localparam[0:0] _e_969 = 0;
    assign output__ = _e_969;
endmodule


module \std::default::impl#18::default  (
        
    );
    `COCOTB_CODE( std::default::impl#18::default )
    
endmodule


module \core::ops::impl#77::wrapping_add[1546]  (
        input[9:0] self_i,
        input[9:0] rhs_i,
        output[9:0] output__
    );
    `COCOTB_CODE( core::ops::impl#77::wrapping_add[1546] )
    logic[9:0] \self ;
    assign \self  = self_i;
    logic[9:0] \rhs ;
    assign \rhs  = rhs_i;
    (* src = "<compiler dir>/core/ops.spade:166,62" *)
    logic[10:0] _e_2028;
    logic[10:0] \bits ;
    (* src = "<compiler dir>/core/ops.spade:167,34" *)
    logic[9:0] _e_2033;
    logic[9:0] _e_2032;
    assign _e_2028 = \self  + \rhs ;
    assign \bits  = _e_2028;
    assign _e_2033 = \bits [9-:10];
    assign _e_2032 = _e_2033;
    assign output__ = _e_2032;
endmodule


module \core::ops::impl#77::wrapping_add[1545]  (
        input[13:0] self_i,
        input[13:0] rhs_i,
        output[13:0] output__
    );
    `COCOTB_CODE( core::ops::impl#77::wrapping_add[1545] )
    logic[13:0] \self ;
    assign \self  = self_i;
    logic[13:0] \rhs ;
    assign \rhs  = rhs_i;
    (* src = "<compiler dir>/core/ops.spade:166,62" *)
    logic[14:0] _e_2028;
    logic[14:0] \bits ;
    (* src = "<compiler dir>/core/ops.spade:167,34" *)
    logic[13:0] _e_2033;
    logic[13:0] _e_2032;
    assign _e_2028 = \self  + \rhs ;
    assign \bits  = _e_2028;
    assign _e_2033 = \bits [13-:14];
    assign _e_2032 = _e_2033;
    assign output__ = _e_2032;
endmodule


module \core::ops::impl#79::wrapping_sub[1547]  (
        input[9:0] self_i,
        input[9:0] rhs_i,
        output[9:0] output__
    );
    `COCOTB_CODE( core::ops::impl#79::wrapping_sub[1547] )
    logic[9:0] \self ;
    assign \self  = self_i;
    logic[9:0] \rhs ;
    assign \rhs  = rhs_i;
    (* src = "<compiler dir>/core/ops.spade:188,62" *)
    logic[10:0] _e_2050;
    logic[10:0] \bits ;
    (* src = "<compiler dir>/core/ops.spade:189,34" *)
    logic[9:0] _e_2055;
    logic[9:0] _e_2054;
    assign _e_2050 = \self  - \rhs ;
    assign \bits  = _e_2050;
    assign _e_2055 = \bits [9-:10];
    assign _e_2054 = _e_2055;
    assign output__ = _e_2054;
endmodule

`default_nettype none