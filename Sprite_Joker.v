module Sprite_Joker(
	input[11:0] address,
	output reg[5:0] data
	);
	
	reg[5:0] rom_content[0:4096];
	
	always@(address or rom_content)
	begin
		data=rom_content[address];
	end
	initial begin
		$readmemh("joker.mif",rom_content,0,4096);
	end
endmodule