--Acad�micos:
--Cauan Gama
--Gabriel Teles
--Professor: Ricardo
--Ci�ncia da Computa��o - UFMS 
entity reg_file is
	port(
		ReadRegister1: in bit_vector(1 downto 0);
		ReadRegister2: in bit_vector(1 downto 0);
		WriteRegister: in bit_vector(1 downto 0);
		WriteData: in bit_vector(7 downto 0);
		RegBit: in bit;
		Clk: in bit;
		ReadData1: out bit_vector(7 downto 0);
		ReadData2: out bit_vector(7 downto 0)
	);
end entity;
architecture behavioral of reg_file is
	begin
		read_reg:process(ReadRegister1, ReadRegister2)-- WriteRegister, WriteData, RegWrite, Clk)
		
		variable aux1, aux2: natural;
			
		begin
			--percorremos os vetores de registradores
			for i in 0 to 1	loop
				--verificamos se o o vetor ReadRegister1 na posicao i tem valor 1
				if(ReadRegister1(i) = '1') then
					aux1:=aux1+ 2**i;
				end if;
				--verificamos se o o vetor ReadRegister2 na posicao i tem valor 1
				if(ReadRegister2(i) = '1') then
					aux2:=aux2+ 2**i;
				end if;
			end loop;
			ReadData1<= aux1;
			ReadData2<= aux2;
	end process read_reg;
	
	clkps:process(Clk)	
		variable aux3: natural;
		begin
		if(Clk'event and Clk='1') then
		--falta implementar
		end if;
				
		
		
	end process clkps;
end architecture;