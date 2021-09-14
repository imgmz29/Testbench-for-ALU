module CSA_4_tb();
 reg[3:0] a, b;
 reg cin;
 reg clock;
 wire[3:0] sum;
 wire cout;

 CSA_4 test(a, b, cin, cout, sum);
 integer number;

 initial begin
  a = 4'b0000;
  b = 4'b0000;
  cin = 1'b0;
  clock = 1'b0;
  number = 0;
 end

 always
  #50 clock = ~clock;

 always@(negedge clock) begin
  cin = ~cin;
  if (number % 2 == 0)
   a = a + 1;
  if (number % 4 == 0)
   b = b + 1;

  number = number + 1;
  number = number / 4;
 end

endmodule