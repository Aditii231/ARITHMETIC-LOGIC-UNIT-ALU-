`timescale 1ns/1ps

module ALU_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg  [2:0] ALU_Sel;
    wire [3:0] ALU_Out;

    // Instantiate the ALU module
    ALU uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out)
    );

    initial begin
        // VCD dump setup
        $dumpfile("alu_waveform.vcd");   // Output VCD file
        $dumpvars(0, ALU_tb);            // Dump all variables in this module

        $display("Time\tA\tB\tSel\tOutput");
        $monitor("%0dns\t%0d\t%0d\t%b\t%0d", $time, A, B, ALU_Sel, ALU_Out);

        // Test vectors
        A = 4'b0011; B = 4'b0001; ALU_Sel = 3'b000; #10; // Add: 3 + 1 = 4
        A = 4'b0100; B = 4'b0001; ALU_Sel = 3'b001; #10; // Sub: 4 - 1 = 3
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010; #10; // AND: 1100 & 1010 = 1000
        A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011; #10; // OR: 1100 | 1010 = 1110
        A = 4'b1010; B = 4'b0000; ALU_Sel = 3'b100; #10; // NOT A: ~1010 = 0101
        ALU_Sel = 3'b111; #10;                          // Invalid: output = 0000

        $finish;
    end

endmodule
