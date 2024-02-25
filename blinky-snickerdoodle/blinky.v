`default_nettype none

module blinky (
  output wire led
);

  (* keep *) 
  PS7 ps7_i(
    .FCLKCLK(ps_fabric_clock)
  );

  reg [24:0] r_count = 0;
  wire [3:0] ps_fabric_clock;

  always @(posedge(ps_fabric_clock[0]))
    r_count <= r_count + 1;

  assign led = r_count[24];

endmodule
