module peripheral_bt(clk, s , d_in );
  
  input clk;
  input [31:0]d_in; 
  input reg [6:0] s; //selector




always @(negedge clk) begin//-------------------- demux


if (s[1]==1) 
begin
    E0<=d_in[1:0];
end
else if (s[2]==1) 
begin
    T0<=d_in[31:0];
end
else if (s[3]==1) 
begin
    D0<=d_in[1:0];
end
else if (s[4]==1) 
begin
    E1<=d_in[1:0];
end
else if (s[5]==1) 
begin
    T1<=d_in[31:0];
end
else if (s[6]==1) 
begin
    D1<=d_in[1:0];
end
else if (s[7]==1) 
begin
    E2<=d_in[31:0];
end
else if (s[8]==1) 
begin
    T2<=d_in[31:0];
end
else if (s[9]==1) 
begin
    D2<=d_in[1:0];
end
else if (s[10]==1) 
begin
    E3<=d_in[1:0];
end
else if (s[11]==1) 
begin
    T3<=d_in[31:0];
end
else if (s[12]==1) 
begin
    D3<=d_in[1:0];
end
else if (s[13]==1) 
begin
    E4<=d_in[1:0];
end
else if (s[14]==1) 
begin
    T4<=d_in[31:0];
end
else if (s[15]==1) 
begin
    D4<=d_in[1:0];
end
else if (s[16]==1) 
begin
    E5<=d_in[31:0];
end
else if (s[17]==1) 
begin
    T5<=d_in[31:0];
end
else if (s[18]==1) 
begin
    D5<=d_in[1:0];
end
else if (s[19]==1) 
begin
    E6<=d_in[1:0];
end
else if (s[20]==1) 
begin
    T6<=d_in[31:0];
end
else if (s[21]==1) 
begin
    D6<=d_in[1:0];
end
else if (s[22]==1) 
begin
    E7<=d_in[1:0];
end
else if (s[23]==1) 
begin
    T7<=d_in[31:0];
end
else if (s[24]==1) 
begin
    D7<=d_in[1:0];
end

end



endmodule
