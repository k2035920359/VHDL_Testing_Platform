----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2019 14:51:16
-- Design Name: 
-- Module Name: adder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
    Port ( 
                    CLK_MMC : IN STD_LOGIC;
                    CLK_PLL : IN STD_LOGIC;
                    RST : IN STD_LOGIC;
         
                    PMOD_JB_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JB_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JB_OE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
                    
                    PMOD_JC_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JC_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JC_OE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
                                   
                                   
                    PMOD_JD_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JD_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JD_OE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
                                                  
                                                  
                    PMOD_JE_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JE_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); 
                    PMOD_JE_OE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);    
                        
                    RGB_LED : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                    RGB_LED2 : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                    
                    UART_ZYNQ_rxd : in STD_LOGIC;
                    UART_ZYNQ_txd : out STD_LOGIC;
         
                    GPIO_PART_Input : in STD_LOGIC_VECTOR (31 DOWNTO 0);
                    GPIO_PART_Output : out STD_LOGIC_VECTOR (31 DOWNTO 0);
                    
                    IIC_ZYNQ_sda_i : in STD_LOGIC;
                    IIC_ZYNQ_sda_o : out STD_LOGIC;
                    IIC_ZYNQ_scl_i : in STD_LOGIC;
                    IIC_ZYNQ_scl_o : out STD_LOGIC);
end adder;

architecture Behavioral of adder is
signal addition : integer:=0;
begin

process (CLK_MMC,RST)
begin

if(rst='1') then 
    addition<=0;
elsif(rising_edge(clk_mmc) )then
    addition<=to_integer(unsigned(GPIO_PART_INPUT(1 downto 0)))+to_integer(unsigned(GPIO_PART_INPUT(1 downto 0))); 
    GPIO_part_output(2 downto 0) <= std_logic_vector(to_unsigned(addition,3));
    RGB_LED<=std_logic_vector(to_unsigned(addition,3));
end if;

end process;

end Behavioral;
