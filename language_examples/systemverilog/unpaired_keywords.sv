// Keywords that open a bracket pair elsewhere but have no closing keyword here.
// None of them should be shown as an unmatched bracket.

typedef class fwd_c;
typedef interface class fwd_ic;

import "DPI-C" function int c_add(input int a, input int b);
import "DPI-C" context task c_wait(input int n);
export "DPI-C" function sv_add;

interface class shape_ic;
  pure virtual function real area();
endclass

class base_c;
  extern function void build();
  extern protected virtual task run();
  extern static function int count();
  pure virtual function int get();
  pure virtual task drive();
  virtual interface bus_if vif;

  covergroup cg with function sample(int x);
    coverpoint x;
  endgroup

  // Paired keywords must still match.
  function void helper();
  endfunction
  task automatic work();
    fork
      helper();
    join_none
    disable fork;
    wait fork;
  endtask
endclass

function void base_c::build();
endfunction

module top;
  initial begin
    fork
      #1;
    join
    wait fork;
  end
endmodule
