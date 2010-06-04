--Acadêmicos:
--Cauan Gama
--Gabriel Teles
--Professor: Ricardo
--Ciência da Computação - UFMS 
entity clock_generator is
	port(
	Halt : in bit;
	Clk : out bit
	);
end entity;

architecture comportamental of clock_generator is
	signal clock : bit;
	signal toStop : bit;

begin
	toStop <=  transport '1' when Halt = '1';

	clkps: process is
	begin
		if toStop = '0' then
			clock <= transport '1' after 1 ns;
			clock <= transport '0' after 2 ns;
			wait for 2 ns;
		else
			wait;
		end if;
	end process clkps;
	
	process (Halt, clock) is	
	begin
		if (clock'event AND toStop = '0') then
			Clk <= transport clock;
		end if;
		
		if(Halt'event AND Halt = '1' AND toStop = '0') then
			toStop <= '1' after 2 ns;
		end if;
	end process;
end architecture;
