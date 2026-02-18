module seq_det(input clk,rstn,in,output out);
  parameter s0=2'b00, s1=2'b01,s2=2'b10,s3=2'b11;
  reg[1:0]state,nxt_state;
  
  always@(posedge clk or negedge rstn)
    begin
      if(!rstn)
        state<= s0;
      else
        state<= nxt_state;
    end
    
  always@(*)
    begin
      case(state)
        
         s0: nxt_state= (in)? s1: s0;
         s1: nxt_state = (in)? s1:s2;
         s2:nxt_state =(in)? s3:s0;
         s3: nxt_state = (in)? s1:s2;
          default: nxt_state= s0;
      endcase
    end
    
   assign out = state == s3? 1:0;
   
endmodule   
    
        
