module seq_det_tb();
   reg clk,rstn,in;
   wire out;
   
  
   seq_det dut(clk,rstn,in,out);
   
   initial begin
   clk=0;
   forever #10 clk=~clk;
   end
   
   task reset();
     begin
       rstn=0;in=0;
       #15;
       rstn=1;
     end
   endtask
   
   initial begin
     reset();
     #5;
     @(posedge clk);in<=1'b1; //used blocking statements, the nxt state was stuck at 01
     @(posedge clk); in <=1'b1;
     @(posedge clk); in<=1'b0;
     @(posedge clk);in<=1'b1;
     @(posedge clk); in <=1'b0;
     @(posedge clk); in<=1'b1;
      @(posedge clk);in<=1'b1;
     @(posedge clk); in <=1'b0;
     @(posedge clk); in<=1'b0;
      @(posedge clk);in<=1'b0;
     @(posedge clk); in <=1'b1;
     @(posedge clk); in<=1'b0;
     @(posedge clk);in<=1'b1;
     
     #100;
     $finish();
     end
endmodule 
     
