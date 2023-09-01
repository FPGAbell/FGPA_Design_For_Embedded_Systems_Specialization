library ieee;
use ieee.std_logic_1164.all;

entity FullAdd is port ( 
A, B, Cin: in std_logic; 
Sum, Cout: out std_logic 
); 
end FullAdd;

architecture behavioral of FullAdd is
signal in1: std_logic;
begin
    in1 <= A XOR B;
    Sum <= in1 XOR Cin;
    Cout <= (in1 AND Cin) OR (A AND B);
end behavioral;
