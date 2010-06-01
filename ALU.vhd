entity alu is 
begin
	port(
		A, B: in bit_vector(7 downto 0);
		ALUOp: in bit_vector(1 downto 0);
		Result: in bit_vector(7 downto 0);
		Zero: in bit		
	);
end entity;
architecture behavior of alu is
--precisa colocar o carry?
--carry carry propagou ou carry gerou?
begin
	alups:process(A, B, ALUOp)
		signal carry:inout bit;
		variable i: integer;

	begin
		Zero<= '1' when A=B else Zero<='0';
		case ALUOp is
		
			--soma
			when "00" =>
			for i in 0 to 7 loop
				if((A(i) xor B(i)) = '1') then
					Result(i)<='1';
					elsif(A(i)='0') then
						Result(i)<= ((A(i) and B(i)) xor carry);--caso de A(i)=0 e B(i)=0 e não possuia carry
						carry:='0';
					else
						Result(i)<= ((A(i) xor B(i)) or carry);--caso de A(i)=1 e B(i)=1 e não possuia carry ou possuia carry			
						carry:='1';
				end if;
			end loop;	
		
			--subtração
			when "01" =>
			for i in 0 to 7 loop
				Result(i)<= not B(i);
			end loop;
		
			--soma 1 e ve se tem carry e se propaga o carry
			for i in 0 to 7 loop
				if((Result(i) xor '1') = '1')
					Result(i)<=
			end loop;
		
			for i in 0 to 7 loop
				if((A(i) xor B(i)) = '1') then
					Result(i)<='1';
					elsif(A(i)='0') then
						Result(i)<= ((A(i) and B(i)) xor carry);--caso de A(i)=0 e B(i)=0 e não possuia carry
						carry:='0';
					else
						Result(i)<= ((A(i) xor B(i)) or carry);--caso de A(i)=1 e B(i)=1 e não possuia carry ou possuia carry			
						carry:='1';
				end if;
			end loop;	
			
			when "10"=>
			when "11"=>
			
		end case;
		
			
	end process alups;
end architecture;
