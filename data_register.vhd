entity data_register is
	port(
		Clk: in bit;
		Data: in bit_vector(7 downto 0);
		CurrentData: out bit_vector(7 downto 0)
	);
end entity data_register;

architecture behavioral of data_register is
begin
	dt_ps:process(Clk)
		begin
			if(Clk'event and Clk = '1')
					for i 0 to 7 loop
						CurrentData(i):=Data(i);
					end loop;
		end process dt_ps;
end architecture behavioral;