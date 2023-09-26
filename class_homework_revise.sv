module exchange_module;
   
   parameter real Euro_Rate = 0.93871;
   parameter real Won_Rate = 1335.9;
   parameter real Yen_Rate = 148.29;

  
   class GetFrom;
     real amount;          //환전 '전' 화폐 '액수'
     string from;          //환전 '전' 화폐 '이름'
     real get_money;       //환전 '후' 화폐 '액수'
     string get;           //환전 '후' 화폐 '이름'

     function new (string from,real amount, string get, real get_money);
        this.from = from;
        this.amount = amount;
        this.get = get;
        this.get_money = get_money;
     endfunction

     function display();
         $display("%s : %f\n%s : %f\n", this.from, this.amount, this.get, this.get_money);
     endfunction
   endclass

  
  
   class gEfD extends GetFrom;
     
      string from = "Dollar"
      string get = "Euro"

     function new(real amount);
        real get_money;
        get_money = Euro_Rate * amount
       super.new(this.from, amount, this.get, get_money);
       super.display();
     endfunction

     // function get_Euro_from_Dollar();
     //    real euro;
     //    euro = Euro_Rate * this.amount;
     //   display("Dollar",amount,"Euro",euro);
     // endfunction
   endclass


   class gDfE extends GetFrom;

      string from = "Euro"
      string get = "Dollar"

     function new(real amount);
        real get_money;
        get_money = Euro_Rate / amount
       super.new(this.from, amount, this.get, get_money);
       super.display();
     endfunction
   endclass


   class gWfD extends GetFrom;

      string from = "Dollar"
      string get = "Euro"

     function new(real amount);
        real get_money;
        get_money = Euro_Rate * amount
       super.new(this.from, amount, this.get, get_money);
       super.display();
     endfunction
   endclass

  
   class gDfW extends GetFrom;

      string from = "Dollar"
      string get = "Euro"

     function new(real amount);
        real get_money;
        get_money = Euro_Rate * amount
       super.new(this.from, amount, this.get, get_money);
       super.display();
     endfunction
   endclass

   class gYfD extends GetFrom;

      string from = "Dollar"
      string get = "Euro"

     function new(real amount);
        real get_money;
        get_money = Euro_Rate * amount
       super.new(this.from, amount, this.get, get_money);
       super.display();
     endfunction
   endclass


   class gDfY extends GetFrom;

      string from = "Dollar"
      string get = "Euro"

     function new(real amount);
        real get_money;
        get_money = Euro_Rate * amount
       super.new(this.from, amount, this.get, get_money);
       super.display();
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
