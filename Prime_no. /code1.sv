class primem;

  rand int num;

  constraint range_c {
    num inside {[2:100]};
  }

  function automatic int prime_check(int n);

    for (int i = 2; i*i <= n; i++) 
      if (n % i == 0) begin
     return 0;
      end
         return 1;
      
  endfunction


         function void post_randomize();
        if(prime_check(num))
          $display("num is prime no.= %d" , num);
           else 
             $display("num is not  prime no.= %d" , num);

        endfunction
        endclass

module m;
  initial begin
    primem p = new();

    repeat (122) begin
      void'(p.randomize());
    end
  end
endmodule
