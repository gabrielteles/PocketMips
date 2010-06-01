entity adder is
	port(
		A 		: in bit_vector(7 downto 0);
		B 		: in bit_vector(7 downto 0);
		CarryIn	: in bit;
		Sum 	: out bit_vector(7 downto 0));
end adder;

architecture comportamental of adder is
	 	signal c : bit_vector(7 downto 0);
begin
	a0 : entity work.adder1b(behavioral)
	port map(A(0),B(0),CarryIn,c(0),Sum(0));

	a1 : entity work.adder1b(behavioral)
	port map(A(1),B(1),carry(0),c(1),Sum(1));

	a2 : entity work.adder1b(behavioral)
	port map(A(2),B(2),carry(1),c(2),Sum(2));

	a3 : entity work.adder1b(behavioral)
	port map(A(3),B(3),carry(2),c(3),Sum(3));

	a4 : entity work.adder1b(behavioral)
	port map(A(4),B(4),carry(3),c(4),Sum(4));

	a5 : entity work.adder1b(behavioral)
	port map(A(5),B(5),carry(4),c(5),Sum(5));

	a6 : entity work.adder1b(behavioral)
	port map(A(6),B(6),carry(5),c(6),Sum(6));

	a7 : entity work.adder1b(behavioral)
	port map(A(7),B(7),carry(6),c(7),Sum(7));
end;
