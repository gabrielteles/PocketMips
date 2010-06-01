entity adder is
	port(
		PC		: in bit_vector(7 downto 0);
		B 		: in bit_vector(7 downto 0) := "00000001";
		--CarryIn	: in bit; tipo precisa mas na descrição não tem??? o que fazer?
		Sum 	: out bit_vector(7 downto 0)
		);
end entity;
--como é a parte da observação e add PC?
architecture comportamental of adder is
	 	signal c : bit_vector(7 downto 0);
begin
	a0 : entity work.adder1b(behavioral)
	port map(PC(0),B(0),CarryIn,c(0),Sum(0));

	a1 : entity work.adder1b(behavioral)
	port map(PC(1),B(1),carry(0),c(1),Sum(1));

	a2 : entity work.adder1b(behavioral)
	port map(PC(2),B(2),carry(1),c(2),Sum(2));

	a3 : entity work.adder1b(behavioral)
	port map(PC(3),B(3),carry(2),c(3),Sum(3));

	a4 : entity work.adder1b(behavioral)
	port map(PC(4),B(4),carry(3),c(4),Sum(4));

	a5 : entity work.adder1b(behavioral)
	port map(PC(5),B(5),carry(4),c(5),Sum(5));

	a6 : entity work.adder1b(behavioral)
	port map(PC(6),B(6),carry(5),c(6),Sum(6));

	a7 : entity work.adder1b(behavioral)
	port map(PC(7),B(7),carry(6),c(7),Sum(7));

end architecture;
