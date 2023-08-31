library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity comparator2 is port (                 	
    A, B: in std_logic_vector(1 downto 0); 
    Equals: out std_logic);            		
end comparator2;

architecture comp of comparator2 is
    signal Comp1, Comp2: std_logic;
begin
    Comp1 <= NOT (A(1) XOR B(1));
    Comp2 <= NOT (A(0) XOR B(0));

    Equals <= Comp1 AND Comp2;
end comp;
