// use following command
// vsim -novopt +nowarnTSCALE work.testbench
`timescale 1ns/1ns
module testbench();

// clock setting
parameter CLK_PERIOD      = 10            ;
parameter CLK_PERIOD_2    = CLK_PERIOD*2  ;
parameter CLK_PERIOD_HALF = (CLK_PERIOD/2);


parameter TIME_RUN        = CLK_PERIOD* 1024 * 30;

wire  W_clk, W_rst;



initial begin
# TIME_RUN  $stop();
end


gen_clk_rst U_gen_clk_rst(
  .O_CLK(W_clk),
  .O_RST(W_rst));
defparam U_gen_clk_rst.CLK_PERIOD_HALF = CLK_PERIOD_HALF;

reg  signed [8-1:0]   R_U_add_IN ;
wire signed [8-1:0]   W_U_add_OUT;


u_add_1 U_add(
  .IN  (R_U_add_IN ),
  .OUT (W_U_add_OUT));
defparam U_add.WL  = 8;



always @ (posedge W_clk or posedge W_rst) begin
  if(W_rst) begin
    R_U_add_IN  <= #1 0;
  end 
  else begin
    R_U_add_IN  <= #1 R_U_add_IN  + 1;
  end
end

endmodule   // testbench()


////////////////////////////////////////////////////////////////////////////////
module gen_clk_rst(
  O_CLK   ,
  O_RST   );

parameter CLK_PERIOD_HALF = 1; 

output O_CLK;
output O_RST;
reg O_CLK;
reg O_RST;
// inital the port value
initial begin
  O_CLK         = 0;
  O_RST         = 1;
  # 100 O_RST   = 1'b1;
  # 200 O_RST   = 1'b0;
end

always begin
  #CLK_PERIOD_HALF O_CLK = ~O_CLK;
end

endmodule
