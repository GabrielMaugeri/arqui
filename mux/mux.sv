module mux (input logic [3:0] d3, d2, d1, d0,
				input logic h1, h0,
				output logic [3:0] s);
	assign s = h1 ? (h0 ? d3 : d2) : (h0 ? d1 : d0);
endmodule