module exchange_module;
   
   parameter real Euro_Rate = 0.93871;
   parameter real Won_Rate = 1335.9;
   parameter real Yen_Rate = 148.29;

   class GetFrom;
     real amount;          //환전 '전' 화폐 '액수'
     string from;          //환전 '전' 화폐 '이름'
     real get_money;       //환전 '후' 화폐 '액수'
     string get;           //환전 '후' 화폐 '이름'

     function new (real amount);
        this.amount = amount;	//환전 전 액수
     endfunction
     
     function GetMoney(real get_money);
       this.get_money = get_money;		//환전 후 액수
     endfunction
     
     function Name(string get, string from);
       this.get = get;	
     	this.from = from;
     endfunction
     
     function display();
         $display("%s : %f\n%s : %f\n", from, this.amount, this.get, this.get_money);
     endfunction
   endclass

  
  
   class gEfD extends GetFrom;      //달러에서 유로로 환전
     
      string from = "Dollar";
      string get = "Euro";
      real get_money;

     function new(real amount);
       super.new(amount); 
       this.get_money =  amount * Euro_Rate;
       super.GetMoney( get_money);
       super.Name(get,from);
       
       super.display();
     endfunction

   endclass


   class gDfE extends GetFrom;         //유로에서 달러로 환전

      string from = "Euro";
      string get = "Dollar";
      real get_money;

     function new(real amount);
       super.new(amount); 
       this.get_money = amount / Euro_Rate;
       super.GetMoney( get_money);
       super.Name(get,from);
       
       super.display();
     endfunction
   endclass



   class gWfD extends GetFrom;

      string from = "Dollar";
      string get = "Won";
     real get_money;

     function new(real amount);
       super.new(amount); 
       this.get_money = amount * Won_Rate;
       super.GetMoney( get_money);
       super.Name(get,from);
       
       super.display();
     endfunction
   endclass

  
   class gDfW extends GetFrom;

      string from = "Won";
      string get = "Dollar";
     real get_money;

      function new(real amount);
       super.new(amount); 
       this.get_money = amount / Won_Rate;
       super.GetMoney( get_money);
       super.Name(get,from);
       
       super.display();
     endfunction
   endclass

   class gYfD extends GetFrom;

      string from = "Dollar";
      string get = "Yen";
     real get_money;
     

     function new(real amount);
       super.new(amount); 
       this.get_money = amount * Yen_Rate;
       super.GetMoney( get_money);
       super.Name(get,from);
       
       super.display();
     endfunction
   endclass


   class gDfY extends GetFrom;

      string from = "Yen";
      string get = "Dollar";
     real get_money;

     function new(real amount);
       super.new(amount); 
       this.get_money = amount / Yen_Rate;
       super.GetMoney( get_money);
       super.Name(get,from);
       
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
      
     

   end

endmodule

