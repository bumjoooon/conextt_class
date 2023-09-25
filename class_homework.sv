module exchange_module;
   
   function get_Euro_from_Dollar(real amount);
      real euro;
      euro = 0.93871 * amount;
      $display("Dollar %f = Euro %f", amount, euro);
   endfunction

   function get_Dollar_from_Euro(real amount);
      real dollar;
      dollar = amount / 0.93871;
    $display("Euro %f = Dollar %f", amount, dollar);
   endfunction


   function get_Won_from_Dollar(real amount);
      real won;
      won = amount * 1335.9;
    $display("Dollar %f = Won %f", amount, won);
   endfunction

   function get_Dollar_from_Won(real amount);
      real dollar;
      dollar = amount / 1335.9;
    $display("Won %f = Dollar %f", amount, dollar);
   endfunction

   function get_Yen_from_Dollar(real amount);
      real yen;
      yen = amount / 148.29;
    $display("Dollar %f = Yen %f", amount, yen);
   endfunction

   function get_Dollar_from_Yen(real amount);
      real dollar;
      dollar = amount * 148.29;
     $display("Yen %f = Dollar %f", amount, dollar);
   endfunction




   initial begin
      get_Euro_from_Dollar(100);
      get_Dollar_from_Euro(20);
      get_Yen_from_Dollar(150);
      get_Dollar_from_Won(5000);
   end

endmodule


