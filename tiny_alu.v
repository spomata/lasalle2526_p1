// RTL for tiny ALU (reference)
module tiny_alu(
  input        clk,
  input        op,
  input  [3:0] a,
  input  [3:0] b,
  output reg [3:0] y
);

  reg [3:0] a_reg;
  reg [3:0] b_reg;
  always @(posedge clk) begin
      a_reg <= a;
      b_reg <= b;
  end
  
  wire [3:0] xor_ab = a_reg ^ b_reg;
  wire [3:0] and_ab = a_reg & b_reg;

  always @(posedge clk) begin
    case (op)
      1'b0: y <= xor_ab;
      1'b1: y <= and_ab;
      default: y <= 4'h0;
    endcase
  end

endmodule
