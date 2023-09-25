module exchange_module;
   
   parameter real Euro_Rate = 0.93871;
   parameter real Won_Rate = 1335.9;
   parameter real Yen_Rate = 148.29;

   class gf;
      real amount;

      function new (real amount);
         this.amount = amount;
      endfunction

   endclass

  
   class gEfD extends gf;
     
     function new(real amount);
       super.new(amount);
     endfunction

      function get_Euro_from_Dollar();
         real euro;
         euro = Euro_Rate * this.amount;
         $display("Dollar : %f\nEuro : %f\n", amount, euro);
      endfunction

   endclass


   class gDfE extends gf;

     function new(real amount);
       super.new(amount);
     endfunction

     function get_Dollar_from_Euro();
         real dollar;
         dollar = this.amount / Euro_Rate;
         $display("Euro : %f\nDollar : %f\n", amount, dollar);
      endfunction

   endclass






   initial begin
      gEfD test1 = new(100);
      gDfE test2 = new(20);
      test1.get_Euro_from_Dollar();
      test2.get_Dollar_from_Euro();
   end

endmodule




