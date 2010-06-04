entity pc_register is 
	port(
		Clk: in bit;
		NewPC: in bit_vector(7 downto 0);
		CurrentPC: out bit_vector(7 downto 0)
	);
end entity pc_register;

architecture behavioral of pc_register is
	pc_ps:process(Clk)
		CurrentPC:="00000000";
		begin
			if(Clk'event and Clk = '1')
				for i 0 to 7 loop
					CurrentPC(i):=NewPC(i);
				end loop;
	end process pc_ps;
end architecture behavioral;