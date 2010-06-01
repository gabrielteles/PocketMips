entity alu is 
begin
	port(
		A, B: in bit_vector(7 downto 0);
		ALUOp: in bit_vector(1 downto 0);
		Result: in bit_vector(7 downto 0);
		Zero: in bit		
	);
end entity;
architecture behavior of alu is
--precisa colocar o carry?
--carry carry propagou ou carry gerou?
begin
	alups:process(A, B, ALUOp)
	begin
		Zero<= '1' when A=B else Zero<='0';
		Result<= A and B;
	end process alups;
end architecture;
