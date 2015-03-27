/*
* Stream Board top level
* Copyright (C) 2015 Lime Microsystems
*
* This library is free software; you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public
* License as published by the Free Software Foundation; either
* version 2.1 of the License, or (at your option) any later version.
*
* This library is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with this library; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/
module rst_sync
  #(parameter STAGES = 15)
  (input clk_i,
   input  rst_i,
   output rst_o);

   reg [STAGES:0] rst_shr;

   assign rst_o = rst_shr[STAGES];
   
   always @(posedge clk_i or posedge rst_i)
     if (rst_i)
       rst_shr <= {(STAGES+1){1'b1}};
     else
       rst_shr <= {rst_shr[STAGES-1:0], 1'b0};
endmodule
