module alu( input logic [3:0] a, b,
				input logic [2:0] sel,
				input logic cin,
				output logic [3:0] f);
	always_comb
		case({sel, cin})
			0:  f = a;
			1:  f = a + 4'b1;
			2:  f = a + b;
			3:  f = a + b + 4'b1;
			4:  f = a + ~b;
			5:  f = a + ~b + 4'b1;
			6:  f = a - 4'b1;
			7:  f = a;
			8:  f = a & b;
			10: f = a | b;
			12: f = a ^ b;
			14: f = ~a;
			default: f = 0;
		endcase
endmodule