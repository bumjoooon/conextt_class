module exchange_module;
   
   parameter real Euro_Rate = 0.93871;
   parameter real Won_Rate = 1335.9;
   parameter real Yen_Rate = 148.29;

  
   class GetFrom;
     real amount;
     string from;
     real get_money;
     string get;

     function new (real amount);
        this.amount = amount;
     endfunction

     function display(string from, real amount,string get, real get_money);
       this.from = from;
       this.get =get;
       this.amount = amount;
       this.get_money = get_money;
         $display("%s : %f\n%s : %f\n", from, amount, get, get_money);
     endfunction
   endclass

  
  
   class gEfD extends GetFrom;
     
     function new(real amount);
       super.new(amount);
     endfunction

      function get_Euro_from_Dollar();
         real euro;
         euro = Euro_Rate * this.amount;
        // #$display("Dollar : %f\nEuro : %f\n", amount, euro);
        super.display("Dollar",amount,"Euro",euro);
      endfunction
   endclass


   class gDfE extends GetFrom;

     function new(real amount);
       super.new(amount);
     endfunction

     function get_Dollar_from_Euro();
         real dollar;
         dollar = this.amount / Euro_Rate;
        // $display("Euro : %f\nDollar : %f\n", amount, dollar);
        super.display("Euro",amount,"Dollar",dollar);
      endfunction
   endclass


   class gWfD extends GetFrom;

     function new(real amount);
       super.new(amount);
     endfunction

     function get_Won_from_Dollar();
         real won;
         won = this.amount * Won_Rate;
        // $display("Euro : %f\nDollar : %f\n", amount, won);
       super.display("Dollar",amount,"Won",won);
      endfunction
   endclass

  
   class gDfW extends GetFrom;

     function new(real amount);
       super.new(amount);
     endfunction

     function get_Dollar_from_Won();
         real dollar;
         dollar = this.amount / Won_Rate;
        // $display("Euro : %f\nDollar : %f\n", amount, won);
       super.display("Dollar",amount,"Dollar",dollar);
      endfunction
   endclass

   class gYfD extends GetFrom;

     function new(real amount);
       super.new(amount);
     endfunction

     function get_Yen_from_Dollar();
         real yen;
         yen = this.amount * Yen_Rate;
        // $display("Euro : %f\nDollar : %f\n", amount, yen);
        super.display("Won",amount,"Dollar", yen);
      endfunction
   endclass


   class gDfY extends GetFrom;

     function new(real amount);
       super.new(amount);
     endfunction

     function get_Dollar_from_Yen();
         real dollar;
         dollar = this.amount / Yen_Rate;
        // $display("Euro : %f\nDollar : %f\n", amount, dollar);
        super.display("Yen",amount,"Dollar",dollar);
      endfunction

   endclass

   initial begin
      gEfD test1 = new(100);
      gDfE test2 = new(20);
      gWfD test3 = new(100);
      gDfW test4 = new(20);
      gYfD test5 = new(13000);
      gDfY test6 = new(150000);
      
     
      test1.get_Euro_from_Dollar();
      test2.get_Dollar_from_Euro();
     
      
      test3.get_Won_from_Dollar();
      test4.get_Dollar_from_Won();

      test5.get_Yen_from_Dollar();
      test6.get_Dollar_from_Yen();
   end

endmodule
