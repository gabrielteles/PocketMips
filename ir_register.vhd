entity ir_register is 
	port(
		Clk: in bit;
		Instruction: in bit_vector(7 downto 0);
		IRWrite: in bit;
		CurrentInstruction: out bit_vector(7 downto 0) 
	);
end entity ir_register;
architecture behavioral of ir_register is
begin
	ir_ps:process(Clk)
		begin
			if(Clk'event and Clk = '1') then
				if(IRWrite = '1') then
					for i in 0 to 7 loop
						CurrentInstruction(i):=Instruction(i);
					end loop;
				end if;
			end if;
	end process ir_ps;
end architecture behavioral;