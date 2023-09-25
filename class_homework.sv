module exchange_module;
   
   parameter real Euro_Rate = 0.93871;
   parameter real Won_Rate = 1335.9;
   parameter real Yen_Rate = 148.29;

   function get_Euro_from_Dollar(real amount);
      real euro;
      euro = Euro_Rate * amount;
      $display("Dollar : %f\nEuro : %f\n", amount, euro);
   endfunction

   function get_Dollar_from_Euro(real amount);
      real dollar;
      dollar = amount / Euro_Rate;
      $display("Euro : %f\nDollar : %f\n", amount, dollar);
   endfunction


   function get_Won_from_Dollar(real amount);
      real won;
      won = amount * Won_Rate;
      $display("Dollar : %f\nWon : %f\n", amount, won);
   endfunction

   function get_Dollar_from_Won(real amount);
      real dollar;
      dollar = amount / Won_Rate;
      $display("Won : %f\nDollar : %f\n", amount, dollar);
   endfunction

   function get_Yen_from_Dollar(real amount);
      real yen;
      yen = amount * Yen_Rate;
      $display("Dollar : %f\nYen : %f\n", amount, yen);
   endfunction

   function get_Dollar_from_Yen(real amount);
      real dollar;
      dollar = amount / Yen_Rate;
      $display("Yen : %f\nDollar : %f\n", amount, dollar);
   endfunction




   initial begin
      get_Euro_from_Dollar(100);
      get_Dollar_from_Euro(20);
      get_Yen_from_Dollar(150);
      get_Dollar_from_Won(5000);
   end

endmodule


