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
   
   initial begin
      get_Euro_from_Dollar(100);
      get_Dollar_from_Euro(20);
   end

endmodule
