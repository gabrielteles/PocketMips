entity alu is 
begin
	port(
		A, B: in bit_vector(7 downto 0);
		ALUOp: in bit_vector(1 downto 0);
		Result: in bit_vector(7 downto 0);
		Zero: in bit		
	);
end entity;

