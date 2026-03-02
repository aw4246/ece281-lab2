----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2026 03:53:02 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture tb of sevenseg_decoder_tb is
    component sevenseg_decoder
          Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
           );
           end component;
        signal w_Hex : std_logic_vector(3 downto 0);
        signal w_seg_n : std_logic_vector(6 downto 0);

begin
    DUT : sevenseg_decoder
        port map (
            i_Hex => w_Hex,
            o_seg_n => w_seg_n
            );
            stim_process: process
            begin
            
            w_Hex <= "0000"; wait for 10 ns;
            w_Hex <= "0001"; wait for 10 ns;
            w_Hex <= "0010"; wait for 10 ns;
            w_Hex <= "0011"; wait for 10 ns;
            w_Hex <= "0100"; wait for 10 ns;
            w_Hex <= "0101"; wait for 10 ns;
            w_Hex <= "0110"; wait for 10 ns;
            w_Hex <= "0111"; wait for 10 ns;
            w_Hex <= "1000"; wait for 10 ns;
            w_Hex <= "1001"; wait for 10 ns;
            w_Hex <= "1010"; wait for 10 ns;
            w_Hex <= "1011"; wait for 10 ns;
            w_Hex <= "1100"; wait for 10 ns;
            w_Hex <= "1101"; wait for 10 ns;
            w_Hex <= "1110"; wait for 10 ns;
            w_Hex <= "1111"; wait for 10 ns;
            
            wait;
            end process;
            
                   
                 


end tb;
