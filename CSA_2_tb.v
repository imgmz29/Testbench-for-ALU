module CSA_2_tb();
 reg[1:0] a, b;
 reg cin;
 reg clock;
 wire[1:0] sum;
 wire cout;

 CSA_2 test(a, b, cin, cout, sum);
 integer number;

 initial begin
  a = 2'b00;
  b = 2'b00;
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