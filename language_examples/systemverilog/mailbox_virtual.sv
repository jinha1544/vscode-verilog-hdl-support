// Built-in class types (mailbox / semaphore) and virtual interface handles
// must not be highlighted as module instantiations.

class env;
  mailbox mbx0;
  int after0;
  mailbox mbx1 = new();
  int after1;
  mailbox #(Packet) mbx2;
  int after2;
  mailbox #(Packet) mbx3 = new();
  int after3;
  mailbox #(Packet) mbx4 = new(4);
  int after4;
  semaphore sem = new(1);
  int after5;
  virtual bus_if vif0;
  int after6;
  virtual interface bus_if vif1;
  int after7;
  virtual bus_if.master vif2;
  int after8;
  virtual bus_if #(.WIDTH(8)) vif3;
  int after9;
  virtual bus_if #(.WIDTH(8)).master vif4;
  int after10;

  virtual function void build();
  endfunction
  virtual task run();
  endtask
  pure virtual function int get();
endclass

virtual class base_c;
endclass

module top;
  fifo #(.DEPTH(16)) u_fifo (.clk(clk), .rst_n(rst_n));
  logic after11;

  fifo #(
    .DEPTH(16),
    .WIDTH(8)
  ) u_fifo2 (
    .clk  (clk),
    .rst_n(rst_n)
  );
  logic after12;

  fifo u_fifo3 (.clk(clk), .rst_n(rst_n));
  logic after13;
endmodule
