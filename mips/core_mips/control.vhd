library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity control is
	port (	opcode:			in std_logic_vector(5 downto 0);
		rtx:			in std_logic_vector(4 downto 0);
		funct:			in std_logic_vector(5 downto 0);
		reg_dst:		out std_logic;
		reg_write:		out std_logic;
		alu_src:		out std_logic;
		alu_op:			out std_logic_vector(3 downto 0);
		jump:			out std_logic_vector(1 downto 0);
		branch:			out std_logic_vector(2 downto 0);
		br_link:		out std_logic;
		reg_to_mem:		out std_logic;
		mem_to_reg:		out std_logic;
		signed_imm:		out std_logic;
		mem_write:		out std_logic_vector(1 downto 0);
		mem_read:		out std_logic_vector(1 downto 0);
		signed_rd:		out std_logic;
		shift:			out std_logic
	);
end control;

architecture arch_control of control is
begin
	process(opcode, funct, rtx)
	begin
		case opcode is
			when "000000" =>					-- R type
				case funct is
					when "000000" =>			-- SLL
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '1';
						alu_op <= "1001";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '1';
					when "000010" =>			-- SRL
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '1';
						alu_op <= "1010";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '1';
					when "000011" =>			-- SRA
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '1';
						alu_op <= "1011";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '1';
					when "000100" =>			-- SLLV
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "1100";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '1';
					when "000110" =>			-- SRLV
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "1101";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '1';
					when "000111" =>			-- SRAV
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "1110";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '1';
					when "001000" =>			-- JR
						reg_dst <= '0';
						reg_write <= '0';
						alu_src <= '0';
						alu_op <= "0100";
						jump <= "10";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "001001" =>			-- JALR
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0100";
						jump <= "10";
						branch <= "000";
						br_link <= '1';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
--					when "001100" =>			-- SYSCALL
--					when "001101" =>			-- BREAK
--					when "010000" =>			-- MFHI
--					when "010001" =>			-- MTHI
--					when "010010" =>			-- MFLO
--					when "010011" =>			-- MTLO
--					when "011000" =>			-- MULT
--					when "011001" =>			-- MULTU
--					when "011010" =>			-- DIV
--					when "011011" =>			-- DIVU
--					when "100000" =>			-- ADD
					when "100001" =>			-- ADDU
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0100";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
--					when "100010" =>			-- SUB
					when "100011" =>			-- SUBU
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0101";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "100100" =>			-- AND
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0000";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "100101" =>			-- OR
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0001";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "100110" =>			-- XOR
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0010";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "100111" =>			-- NOR
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0011";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "101010" =>			-- SLT
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0111";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "101011" =>			-- SLTU
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "1000";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when others =>				-- all other R type instructions, generate a NOP
						reg_dst <= '0';
						reg_write <= '0';
						alu_src <= '0';
						alu_op <= "0000";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
				end case;
			when "000001" =>
				case rtx is
					when "00000" =>				-- BLTZ
						reg_dst <= '0';
						reg_write <= '0';
						alu_src <= '0';
						alu_op <= "0101";
						jump <= "00";
						branch <= "101";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "00001" =>				-- BGEZ
						reg_dst <= '0';
						reg_write <= '0';
						alu_src <= '0';
						alu_op <= "0101";
						jump <= "00";
						branch <= "110";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "10000" =>				-- BLTZAL
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0101";
						jump <= "00";
						branch <= "101";
						br_link <= '1';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when "10001" =>				-- BGEZAL
						reg_dst <= '1';
						reg_write <= '1';
						alu_src <= '0';
						alu_op <= "0101";
						jump <= "00";
						branch <= "110";
						br_link <= '1';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '1';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
					when others =>				-- invalid instruction, generate a NOP
						reg_dst <= '0';
						reg_write <= '0';
						alu_src <= '0';
						alu_op <= "0100";
						jump <= "00";
						branch <= "000";
						br_link <= '0';
						reg_to_mem <= '0';
						mem_to_reg <= '0';
						signed_imm <= '0';
						mem_write <= "00";
						mem_read <= "00";
						signed_rd <= '0';
						shift <= '0';
				end case;
			when "000010" =>					-- J
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '0';
				alu_op <= "0100";
				jump <= "01";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "000011" =>					-- JAL
				reg_dst <= '1';
				reg_write <= '1';
				alu_src <= '0';
				alu_op <= "0100";
				jump <= "01";
				branch <= "000";
				br_link <= '1';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "000100" =>					-- BEQ
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '0';
				alu_op <= "0101";
				jump <= "00";
				branch <= "001";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "000101" =>					-- BNE
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '0';
				alu_op <= "0101";
				jump <= "00";
				branch <= "010";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "000110" =>					-- BLEZ
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '0';
				alu_op <= "0101";
				jump <= "00";
				branch <= "011";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "000111" => 					-- BGTZ
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '0';
				alu_op <= "0101";
				jump <= "00";
				branch <= "100";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
--			when "001000" =>					-- ADDI
			when "001001" =>					-- ADDIU
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "001010" =>					-- SLTI
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "0111";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "001011" =>					-- SLTIU
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "1000";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "001100" =>					-- ANDI
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "0000";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "001101" =>					-- ORI
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "0001";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "001110" =>					-- XORI
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "0010";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "001111" =>					-- LUI
				reg_dst <= '0';
				reg_write <= '1';
				alu_src <= '1';
				alu_op <= "0110";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
--			when "010000" =>					-- COP0
--			when "010001" =>					-- COP1
--			when "010010" =>					-- COP2
--			when "010011" =>					-- COP3
			when "100000" =>					-- LB
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '1';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "01";
				signed_rd <= '1';
				shift <= '0';
			when "100001" =>					-- LH
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '1';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "10";
				signed_rd <= '1';
				shift <= '0';
--			when "100010" =>					-- LWL
			when "100011" =>					-- LW
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '1';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "11";
				signed_rd <= '0';
				shift <= '0';
			when "100100" =>					-- LBU
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '1';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "01";
				signed_rd <= '0';
				shift <= '0';
			when "100101" =>					-- LHU
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '1';
				signed_imm <= '1';
				mem_write <= "00";
				mem_read <= "10";
				signed_rd <= '0';
				shift <= '0';
--			when "100110" =>					-- LWR
			when "101000" =>					-- SB
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '1';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "01";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
			when "101001" =>					-- SH
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '1';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "10";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
--			when "101010" =>					-- SWL
			when "101011" =>					-- SW
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '1';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '1';
				mem_to_reg <= '0';
				signed_imm <= '1';
				mem_write <= "11";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
--			when "101110" =>					-- SWR
--			when "110000" =>					-- LWC0
--			when "110001" =>					-- LWC1
--			when "110010" =>					-- LWC2
--			when "110011" =>					-- LWC3
--			when "111000" =>					-- SWC0
--			when "111001" =>					-- SWC1
--			when "111010" =>					-- SWC2
--			when "111011" =>					-- SWC3
			when others =>						-- invalid instruction, generate a NOP
				reg_dst <= '0';
				reg_write <= '0';
				alu_src <= '0';
				alu_op <= "0100";
				jump <= "00";
				branch <= "000";
				br_link <= '0';
				reg_to_mem <= '0';
				mem_to_reg <= '0';
				signed_imm <= '0';
				mem_write <= "00";
				mem_read <= "00";
				signed_rd <= '0';
				shift <= '0';
		end case;
	end process;

end arch_control;
