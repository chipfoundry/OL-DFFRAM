/*
 * DFFRAM128x32.v
 *
 * A 128x32 DFFRAM (512 bytes)
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the Apache License, Version 2.0 (the "License").
 *
 * DFFRAM is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * Apache License, Version 2.0 for more details.
 *
 * You should have received a copy of the Apache License, Version 2.0
 * along with DFFRAM. If not, see <https://www.apache.org/licenses/LICENSE-2.0>.
 *
 * For further information, please visit .
 *
 */
 
 `default_nettype        none
 
 module DFFRAM128x32  (
	input   wire            CLK,  
    input   wire [3:0]      WE0,  
    input                   EN0,  
    input   wire [6:0]      A0,   
    input   wire [31:0]     Di0,  
    output  wire [31:0]     Do0
);

    DFFRAM  #( .USE_LATCH(1), .WSIZE(4), .BANKS(8) ) RAM (
	    .CLK(CLK),  
        .WE0(WE0),  
        .EN0(EN0),  
        .A0(A0),   
        .Di0(Di0),  
        .Do0(Do0)
    );

endmodule