/*
 * Milkymist VJ SoC
 * Copyright (C) 2007, 2008, 2009, 2010 Sebastien Bourdeauducq
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

module conbus_arb(
	input sys_clk,
	input sys_rst,
	
	input [9:0] req,
	output [9:0] gnt
);

parameter [9:0] grant0 = 9'b000000001,
                grant1 = 9'b000000010,
                grant2 = 9'b000000100,
                grant3 = 9'b000001000,
                grant4 = 9'b000010000,
                grant5 = 9'b000100000,
                grant6 = 9'b001000000,
		grant7 = 9'b010000000,
		grant8 = 9'b100000000;

reg [9:0] state;
reg [9:0] next_state;

assign gnt = state;

always @(posedge sys_clk) begin
	if(sys_rst)
		state <= grant0;
	else
		state <= next_state;
end

always @(*) begin
	next_state = state;
	case(state)
		grant0: begin
			if(~req[0]) begin
				     if(req[1]) next_state = grant1;
				else if(req[2]) next_state = grant2;
				else if(req[3]) next_state = grant3;
				else if(req[4]) next_state = grant4;
				else if(req[5]) next_state = grant5;
				else if(req[6]) next_state = grant6;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
					
			end
		end
		grant1: begin
			if(~req[1]) begin
				     if(req[2]) next_state = grant2;
				else if(req[3]) next_state = grant3;
				else if(req[4]) next_state = grant4;
				else if(req[5]) next_state = grant5;
				else if(req[6]) next_state = grant6;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
				else if(req[0]) next_state = grant0;
			end
		end
		grant2: begin
			if(~req[2]) begin
				     if(req[3]) next_state = grant3;
				else if(req[4]) next_state = grant4;
				else if(req[5]) next_state = grant5;
				else if(req[6]) next_state = grant6;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
				else if(req[0]) next_state = grant0;
				else if(req[1]) next_state = grant1;
			end
		end
		grant3: begin
			if(~req[3]) begin
				     if(req[4]) next_state = grant4;
				else if(req[5]) next_state = grant5;
				else if(req[6]) next_state = grant6;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
				else if(req[0]) next_state = grant0;
				else if(req[1]) next_state = grant1;
				else if(req[2]) next_state = grant2;
			end
		end
		grant4: begin
			if(~req[4]) begin
				     if(req[5]) next_state = grant5;
				else if(req[6]) next_state = grant6;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
				else if(req[0]) next_state = grant0;
				else if(req[1]) next_state = grant1;
				else if(req[2]) next_state = grant2;
				else if(req[3]) next_state = grant3;
			end
		end
		grant5: begin
			if(~req[5]) begin
				     if(req[6]) next_state = grant6;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
				else if(req[0]) next_state = grant0;
				else if(req[1]) next_state = grant1;
				else if(req[2]) next_state = grant2;
				else if(req[3]) next_state = grant3;
				else if(req[4]) next_state = grant4;
			end
		end
		grant6: begin
			if(~req[6]) begin
				     if(req[7]) next_state = grant0;
				else if(req[8]) next_state = grant1;
				else if(req[0]) next_state = grant2;
				else if(req[1]) next_state = grant3;
				else if(req[2]) next_state = grant4;
				else if(req[3]) next_state = grant5;
				else if(req[4]) next_state = grant7;
				else if(req[5]) next_state = grant8;
			end
		end
		grant7: begin
			if(~req[7]) begin
				     if(req[8]) next_state = grant0;
				else if(req[0]) next_state = grant1;
				else if(req[1]) next_state = grant2;
				else if(req[2]) next_state = grant3;
				else if(req[3]) next_state = grant4;
				else if(req[4]) next_state = grant5;
				else if(req[5]) next_state = grant6;
				else if(req[6]) next_state = grant8;
			end
		end
		grant8: begin
			if(~req[8]) begin
				     if(req[0]) next_state = grant0;
				else if(req[1]) next_state = grant1;
				else if(req[2]) next_state = grant2;
				else if(req[3]) next_state = grant3;
				else if(req[4]) next_state = grant4;
				else if(req[5]) next_state = grant5;
				else if(req[7]) next_state = grant7;
				else if(req[8]) next_state = grant8;
			end
		end
	endcase
end

endmodule
