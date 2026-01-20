class primem;

  rand int num;

  constraint range_c {
    num inside {[2:100]};
  }

  function void post_randomize();
    bit is_prime = 1;

    for (int i = 2; i*i <= num; i++) begin
      if (num % i == 0) begin
        is_prime = 0;
        break;
      end
    end

    if (is_prime)
      $display("num = %0d", num);
  endfunction

endclass


module m;
  initial begin
    primem p = new();

    repeat (100) begin
      void'(p.randomize());
    end
  end
endmodule
