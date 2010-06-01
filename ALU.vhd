entity alu is 
begin
	port(
		A, B: in bit_vector(7 downto 0);
		ALUOp: in bit_vector(1 downto 0);
		Result: in bit_vector(7 downto 0);
		Clk: in bit;
		Zero: in bit		
	);
end entity;
architecture behavior of alu is

begin
	alups:process(A, B, ALUOp)
		
		case ALUOp is
		
		end case;
		
			
	end process alups;
	
end architecture;
