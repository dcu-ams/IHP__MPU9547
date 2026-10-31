//
// TV80 8-Bit Microprocessor Core
// Based on the VHDL T80 core by Daniel Wallner (jesus@opencores.org)
//
// Copyright (c) 2004 Guy Hutchison (ghutchis@opencores.org)
//
// Permission is hereby granted, free of charge, to any person obtaining a 
// copy of this software and associated documentation files (the "Software"), 
// to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, 
// and/or sell copies of the Software, and to permit persons to whom the 
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included 
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
// 28/10/2026 tv80s adapted from Guy Hutchinson's implementation by dcu-ams to 
//            implement a reduced functionality core compatible with a 32 pin QFN

`define TV80DELAY

module tv80s (/*AUTOARG*/
  // Outputs
  m1_n, mreq_n, iorq_n, rd_n, wr_n, A, dout, c2p_en, 
  // Inputs
  reset_n, clk, int_n, di
  );

   // The following pins / functions are not used in Mandalore
   // busrq_n : input : tied high (1'b1) : removed from tv80s pins
   // nmi_n : input : tied high (1'b1) : removed from tv80s pins
   // wait_n : input : tied high (1'b1) : removed from tv80s pins
   // A10-A15 : output : floating : removed from tv80s pins
   // busak_n : output : floating : removed from tv80s pins
   // halt_n : output : floating : removed from tv80s pins
   // rfsh_n : output : floating : removed from tv80s pins

  parameter Mode = 0;    // 0 => Z80, 1 => Fast Z80, 2 => 8080, 3 => GB
  parameter T2Write = 1; // 0 => wr_n active in T3, /=0 => wr_n active in T2
  parameter IOWait  = 1; // 0 => Single cycle I/O, 1 => Std I/O cycle


   wire	    rfsh_n;
   wire	    halt_n;
   wire	    busak_n;
   wire	    wait_n;
   
   
  input         reset_n; 
  input         clk; 
  input         int_n; 
  output        m1_n; 
  output        mreq_n; 
  output        iorq_n; 
  output        rd_n; 
  output        wr_n; 
  output [9:0] A;    
  input [7:0]   di;
  output [7:0]  dout;
   output [7:0]	c2p_en;
   

  reg           mreq_n; 
  reg           iorq_n; 
  reg           rd_n; 
  reg           wr_n;
   reg [7:0]	c2p_en;
   

  wire          cen;
  wire          intcycle_n;
  wire          no_read;
  wire          write;
  wire [15:0]	Aint;
  wire          iorq;
  reg [7:0]     di_reg;
  wire [6:0]    mcycle;
  wire [6:0]    tstate;

  assign    cen = 1;
  assign A = Aint[9:0];
   assign wait_n = 1'b1;
 
   
  tv80_core #(Mode, IOWait) i_tv80_core
    (
     .cen (cen),
     .m1_n (m1_n),
     .iorq (iorq),
     .no_read (no_read),
     .write (write),
     .rfsh_n (rfsh_n),
     .halt_n (halt_n),
     .wait_n (1'b1),        
     .int_n (int_n),
     .nmi_n (1'b1),         
     .reset_n (reset_n),
     .busrq_n (1'b1),       
     .busak_n (busak_n),
     .clk (clk),
     .IntE (),
     .stop (),
     .A (Aint),
     .dinst (di),
     .di (di_reg),
     .dout (dout),
     .mc (mcycle),
     .ts (tstate),
     .intcycle_n (intcycle_n)
     );  

  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        begin
          rd_n   <= `TV80DELAY 1'b1;
          wr_n   <= `TV80DELAY 1'b1;
          iorq_n <= `TV80DELAY 1'b1;
          mreq_n <= `TV80DELAY 1'b1;
          di_reg <= `TV80DELAY 0;
	   c2p_en <= `TV80DELAY 8'b00000000;
        end
      else
        begin
          rd_n <= `TV80DELAY 1'b1;
          wr_n <= `TV80DELAY 1'b1;
          iorq_n <= `TV80DELAY 1'b1;
          mreq_n <= `TV80DELAY 1'b1;
	   c2p_en <= `TV80DELAY 8'b00000000;
          if (mcycle[0])
            begin
              if (tstate[1] || (tstate[2] && wait_n == 1'b0))
                begin
                  rd_n <= `TV80DELAY ~ intcycle_n;
                  mreq_n <= `TV80DELAY ~ intcycle_n;
                  iorq_n <= `TV80DELAY intcycle_n;
                end
            `ifdef TV80_REFRESH
              if (tstate[3])
            mreq_n <= `TV80DELAY 1'b0;
            `endif
            end // if (mcycle[0])          
          else
            begin
              if ((tstate[1] || (tstate[2] && wait_n == 1'b0)) && no_read == 1'b0 && write == 1'b0)
                begin
                  rd_n <= `TV80DELAY 1'b0;
                  iorq_n <= `TV80DELAY ~ iorq;
                  mreq_n <= `TV80DELAY iorq;
                end
              if (T2Write == 0)
                begin                          
                  if (tstate[2] && write == 1'b1)
                    begin
                      wr_n <= `TV80DELAY 1'b0;
                      iorq_n <= `TV80DELAY ~ iorq;
                      mreq_n <= `TV80DELAY iorq;
		       c2p_en <= `TV80DELAY 8'b11111111;
                    end
                end
              else
                begin
                  if ((tstate[1] || (tstate[2] && wait_n == 1'b0)) && write == 1'b1)
                    begin
                      wr_n <= `TV80DELAY 1'b0;
                      iorq_n <= `TV80DELAY ~ iorq;
                      mreq_n <= `TV80DELAY iorq;
		       c2p_en <= `TV80DELAY 8'b11111111;
                  end
                end // else: !if(T2write == 0)
              
            end // else: !if(mcycle[0])
          
          if (tstate[2] && wait_n == 1'b1 && !write && !no_read)
            di_reg <= `TV80DELAY di;
        end // else: !if(!reset_n)
    end // always @ (posedge clk or negedge reset_n)
  
endmodule // t80s

