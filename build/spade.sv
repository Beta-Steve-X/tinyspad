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


module \std::cdc::sync2[1545]  (
        input clk_i,
        input input_i,
        output output__
    );
    `COCOTB_CODE( std::cdc::sync2[1545] )
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
    
    \std::cdc::sync2[1545]  \sync2_0 (.clk_i(\clk ), .input_i(\input ), .output__(_e_542));
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
    logic _e_2190;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2189;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_1068;
    (* src = "<compiler dir>/core/ops.spade:297,29" *)
    logic _e_2198;
    (* src = "<compiler dir>/core/ops.spade:297,37" *)
    logic _e_2199;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2197;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2196;
    always @(posedge \clk ) begin
        \old_value  <= \value ;
    end
    assign _e_2190 = {\old_value };
    assign _e_2189 = ~_e_2190;
    assign _e_1068 = _e_2189;
    assign _e_2198 = {\value };
    assign _e_2199 = {_e_1068};
    assign _e_2197 = _e_2198 & _e_2199;
    assign _e_2196 = _e_2197;
    assign output__ = _e_2196;
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
    logic _e_2208;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2207;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2206;
    (* src = "<compiler dir>/core/ops.spade:297,29" *)
    logic _e_2216;
    (* src = "<compiler dir>/core/ops.spade:297,37" *)
    logic _e_2217;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2215;
    (* src = "<compiler dir>/core/ops.spade:297,9" *)
    logic _e_2214;
    always @(posedge \clk ) begin
        \old_value  <= \value ;
    end
    assign _e_2208 = {\value };
    assign _e_2207 = ~_e_2208;
    assign _e_2206 = _e_2207;
    assign _e_2216 = {_e_2206};
    assign _e_2217 = {\old_value };
    assign _e_2215 = _e_2216 & _e_2217;
    assign _e_2214 = _e_2215;
    assign output__ = _e_2214;
endmodule


module \tinyspad::design  (
        input clk_i,
        input rst_i,
        input[7:0] ui_in_i,
        output[7:0] output__
    );
    `COCOTB_CODE( tinyspad::design )
    logic \clk ;
    assign \clk  = clk_i;
    logic \rst ;
    assign \rst  = rst_i;
    logic[7:0] \ui_in ;
    assign \ui_in  = ui_in_i;
    localparam[2:0] _e_1759 = 0;
    (* src = "src/main.spade:3,14" *)
    logic _e_1757;
    (* src = "src/main.spade:3,14" *)
    logic _e_1756;
    (* src = "src/main.spade:3,52" *)
    logic[5:0] _e_1761;
    (* src = "src/main.spade:3,52" *)
    logic[5:0] _e_1760;
    (* src = "src/main.spade:3,36" *)
    reg[5:0] \addr ;
    logic[7:0] _e_1765;
    assign _e_1757 = \ui_in [_e_1759];
    (* src = "src/main.spade:3,14" *)
    
    \std::conv::impl#10::as_clock  \as_clock_0 (.self_i(_e_1757), .output__(_e_1756));
    assign _e_1761 = \ui_in [7-:6];
    (* src = "src/main.spade:3,52" *)
    
    \std::conv::impl#9::as_uint[1546]  \as_uint_0 (.self_i(_e_1761), .output__(_e_1760));
    always @(posedge _e_1756) begin
        \addr  <= _e_1760;
    end
    assign _e_1765 = {2'b0, \addr };
    assign output__ = _e_1765;
endmodule


module tt_um_example (
        input clk,
        input rst_n,
        input[7:0] ui_in,
        output[7:0] uo_out,
        input[7:0] uio_in,
        output[7:0] uio_out,
        output[7:0] uio_oe,
        input ena
    );
    `COCOTB_CODE( tt_um_example )
    logic[7:0] \uo_out_mut ;
    assign uo_out = \uo_out_mut ;
    logic[7:0] \uio_out_mut ;
    assign uio_out = \uio_out_mut ;
    logic[7:0] \uio_oe_mut ;
    assign uio_oe = \uio_oe_mut ;
    (* src = "<compiler dir>/core/ops.spade:255,29" *)
    logic _e_2226;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic _e_2225;
    (* src = "<compiler dir>/core/ops.spade:255,9" *)
    logic \rst ;
    localparam[0:0] _e_1774 = 0;
    (* src = "src/main.spade:33,20" *)
    logic[7:0] _e_1773;
    (* src = "src/main.spade:33,19" *)
    logic[7:0] _e_1772;
    localparam[0:0] _e_1779 = 0;
    (* src = "src/main.spade:34,19" *)
    logic[7:0] _e_1778;
    (* src = "src/main.spade:34,18" *)
    logic[7:0] _e_1777;
    (* src = "src/main.spade:38,18" *)
    logic[7:0] \output ;
    (* src = "src/main.spade:40,18" *)
    logic[7:0] _e_1787;
    assign _e_2226 = {\rst_n };
    assign _e_2225 = ~_e_2226;
    assign \rst  = _e_2225;
    assign _e_1773 = {_e_1774, _e_1774, _e_1774, _e_1774, _e_1774, _e_1774, _e_1774, _e_1774};
    assign _e_1772 = _e_1773;
    assign \uio_out_mut  = _e_1772;
    assign _e_1778 = {_e_1779, _e_1779, _e_1779, _e_1779, _e_1779, _e_1779, _e_1779, _e_1779};
    assign _e_1777 = _e_1778;
    assign \uio_oe_mut  = _e_1777;
    (* src = "src/main.spade:38,18" *)
    
    \tinyspad::design  \design_0 (.clk_i(\clk ), .rst_i(\rst ), .ui_in_i(\ui_in ), .output__(\output ));
    assign _e_1787 = \output ;
    assign \uo_out_mut  = _e_1787;
    
endmodule


module \std::conv::impl#9::as_uint[1546]  (
        input[5:0] self_i,
        output[5:0] output__
    );
    `COCOTB_CODE( std::conv::impl#9::as_uint[1546] )
    logic[5:0] \self ;
    assign \self  = self_i;
    logic[5:0] _e_860;
    assign _e_860 = \self ;
    assign output__ = _e_860;
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

`default_nettype none