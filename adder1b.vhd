--Acad�micos:
--Cauan Gama
--Gabriel Teles
--Professor: Ricardo
--Ci�ncia da Computa��o - UFMS 
entity adder1b is
	port(
		A,B, cin: in bit;
		sum, cout: out bit
		);
		
architecture behaviorial of adder1b is
begin		                             
	sum <= a xor b xor cin ;
	cout <= (a and b) or (a and cin) or (b and cin) ;
end architecture; 
                                                        
