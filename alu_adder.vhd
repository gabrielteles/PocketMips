entity alu_adder is
	port(
		A, B: in bit_vector(7 downto 0);
		CarryIn: in bit;
		Sum: out bit_vector(7 downto 0)
		);
end entity;

architecture comportamental of adder is
signal carry: in bit_vector(7 downto 0);
begin
	m0: entity work.adder1b(comportamental)
	port map(A(0),B(0),CarryIn,carry(0),Sum(0));

	m1: entity work.adder1b(comportamental)
	port map(A(1),B(1),carry(0),carry(1),Sum(1));

	m2: entity work.adder1b(comportamental)
	port map(A(2),B(2),carry(1),carry(2),Sum(2));

	m3: entity work.adder1b(comportamental)
	port map(A(3),B(3),carry(2),carry(3),Sum(3));

	m4: entity work.adder1b(comportamental)
	port map(A(4),B(4),carry(3),carry(4),Sum(4));

	m5: entity work.adder1b(comportamental)
	port map(A(5),B(5),carry(4),carry(5),Sum(5));

	m6: entity work.adder1b(comportamental)
	port map(A(6),B(6),carry(5),carry(6),Sum(6));

	m7: entity work.adder1b(comportamental)
	port map(A(7),B(7),carry(6),carry(7),Sum(7));
end architecture;
