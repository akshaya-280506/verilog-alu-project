module alu_tb;
  reg[3:0]A,B;
  reg[2:0]sel;
  wire[3:0]Y;
  alu_project uut(
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
  );
  initial begin
    $monitor("time=%0t A=%b B=%b sel=%b Y=%b",$time ,A,B,sel,Y);
    A=4'b0011;
    B=4'b0001;
     sel=3'b000;#10
     sel=3'b001;#10
     sel=3'b010;#10
     sel=3'b011;#10
     sel=3'b100;#10
     sel=3'b101;#10
     sel=3'b110;#10
     sel=3'b111;#10
     $finish;
  end
endmodule
  
