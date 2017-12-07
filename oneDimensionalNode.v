`include "master_spi.v"
`include "receiver_queue.v"
`include "node_controller.v"

module oneDimensionalNode(shiftInLeftData,shiftInLeftCS,shiftInRightData,shiftInRightCS,shiftInData,shiftInCLK,shiftInCS,shiftOutLeftCS,shiftOutRightCS,shiftOutLeftData,shiftOutRightData,shiftOutData,shiftOutCLK,shiftOutCS,dataSource,outputSelect,controllerEn,instruction,instructionTo,controller_enable_out);

	input [31:0] shiftInLeftData,shiftInRightData,shiftInData;
	input shiftInLeftCS,shiftInRightCS,shiftInCS,shiftInCLK;
	output [31:0] shiftOutLeftData,shiftOutRightData,shiftOutData;
	output shiftOutLeftCS,shiftOutRightCS,shiftOutCS,shiftOutCLK;
	output [1:0] dataSource,outputSelect;
	output controllerEn;
	output [31:0] instruction,instructionTo;
	output controller_enable_out;
	
	parameter NODE_IP = 3'b000;
	parameter MIDPOINT_NODE = 3'b011;
	parameter NODE_IP_BITWIDTH = 3;
	parameter width = 32;
	
	wire [31:0] fromRightData,fromLeftData,fromData,instruction,instructionTo;
	wire fromRightCS,fromLeftCS,fromCS,controllerEn;
	wire [1:0] dataSource,outputSelect;

	receiver_queue #(.width(32)) receiverQueue(.clk (shiftInCLK),.check_l (shiftInLeftCS),.check_r (shiftInRightCS),.check_s (shiftInCS),.in_sig_right (shiftInRightData),.in_sig_left (shiftInLeftData),.in_sig_self (shiftInData),.selected_sig (instruction),.sig_alert (controllerEn),.s (dataSource));
	
	node_controller #(.NODE_IP (NODE_IP),.MIDPOINT_NODE(MIDPOINT_NODE),.NODE_IP_BITWIDTH(NODE_IP_BITWIDTH)) nodeController(.clk (shiftInCLK),.source_port (dataSource),.controller_enable (controllerEn),.instruction_in (instruction),.instruction_out (instructionTo),.enable (outputSelect),.controller_enable_out(ccontroller_enable_out));

	master_spi masterSPI(.clk (shiftInCLK),.enable (outputSelect),.in_instr(instructionTo),.check_self(shiftOutCS),.check_left(shiftOutleftCS),.check_right(shiftOutRightCS),.self_instr(shiftOutData), .left_instr(shiftOutLeftData), .right_instr(shiftOutRightData), .clk_out(shiftOutCLK));
	
endmodule
	
	