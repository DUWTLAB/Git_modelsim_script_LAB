module u_add_1(
  IN  ,
  OUT );

parameter WL  = 8       ;

input  [WL -1:0] IN ;
output [WL -1:0] OUT;

reg    [WL-1:0] W_add;

always @ (IN) begin
  W_add = IN + 1;
end

assign OUT = W_add;

endmodule

