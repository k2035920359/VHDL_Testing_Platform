LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY BLANK IS
	PORT (
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
                IIC_ZYNQ_scl_o : out STD_LOGIC
	);
END BLANK;

ARCHITECTURE Behavioral OF BLANK IS
BEGIN
END Behavioral;