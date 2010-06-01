entity sign_extend is
	port(
		DataIn5 : in bit_vector(4 downto 0);
		DataOut8  : out bit_vector(7 downto 0));
end sign_extend;

architecture comportamental of sign_extend is
begin
	process(DataIn5)
	begin
		DataOut8(0) <= DataIn5(0);
		DataOut8(1) <= DataIn5(1);
		DataOut8(2) <= DataIn5(2);
		DataOut8(3) <= DataIn5(3);
		DataOut8(4) <= DataIn5(4);
		DataOut8(5) <= DataIn5(4);
		DataOut8(6) <= DataIn5(4);
		DataOut8(7) <= DataIn5(4);
	end process;
end;
