----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:05 10/23/2015 
-- Design Name: 
-- Module Name:    ALUSourceAMux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUSourceAMux is
    Port ( ALUSrcA : in  STD_LOGIC_VECTOR (1 downto 0);
           Three : in  STD_LOGIC_VECTOR (15 downto 0);
           Two : in  STD_LOGIC_VECTOR (15 downto 0);
           One : in  STD_LOGIC_VECTOR (15 downto 0);
           Zero : in  STD_LOGIC_VECTOR (15 downto 0);
           Output : out  STD_LOGIC_VECTOR (15 downto 0));
end ALUSourceAMux;

architecture Behavioral of ALUSourceAMux is

begin


end Behavioral;

