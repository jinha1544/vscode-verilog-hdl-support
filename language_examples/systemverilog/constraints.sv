// Word operators (dist, inside, with) and soft constraints.
class pkt;
  rand bit [1:0] mode;
  rand int len;
  constraint mode_dist {
    mode dist {
      0 :/ 9,
      1 :/ 1
    };
  }
  constraint len_c {
    len dist { [1:10] := 5, [11:20] :/ 1 };
    len inside {[1:20]};
    soft len < 15;
    solve mode before len;
    if (mode == 0) len < 5;
    foreach (arr[i]) arr[i] > 0;
    unique {a, b};
  }
endclass
