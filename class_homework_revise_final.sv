module exchange_module;
   
   parameter real Euro_Rate = 0.93871;
   parameter real Won_Rate = 1335.9;
   parameter real Yen_Rate = 148.29;

   class Exchange;
     real amount;          //환전 '전' 화폐 '액수'
     string from;          //환전 '전' 화폐 '이름'
     real after_amount;       //환전 '후' 화폐 '액수'
     string get;           //환전 '후' 화폐 '이름'

     function new (real amount);
        this.amount = amount;	//환전 전 액수
     endfunction
     
     function AfterExchange(real rate);
       this.after_amount = amount * rate;		//환전 후 액수
     endfunction
     
     function Name(string get, string from);
       this.get = get;	
     	this.from = from;
     endfunction
     
     function display();
         $display("%s : %f\n%s : %f\n", from, this.amount, this.get, this.after_amount);
     endfunction
   endclass

  
  
   class getEurofromDollar extends Exchange;      //달러에서 유로로 환전
     
      string from = "Dollar";
      string get = "Euro";
      real after_amount;

     function new(real amount);
       super.new(amount); 
       super.AfterExchange( Euro_Rate);
       super.Name(get,from);
       super.display();
     endfunction

   endclass


   class getDollarfromEuro extends Exchange;         //유로에서 달러로 환전

      string from = "Euro";
      string get = "Dollar";
      real after_amount;

     function new(real amount);
       super.new(amount); 
       super.AfterExchange( (1/Euro_Rate));
       super.Name(get,from);
       super.display();
     endfunction
   endclass



   class getWonfromDollar extends Exchange;

      string from = "Dollar";
      string get = "Won";
     real after_amount;

     function new(real amount);
       super.new(amount); 
       super.AfterExchange( Won_Rate );
       super.Name(get,from);
       super.display();
     endfunction
   endclass

  
   class getDollarfromWon extends Exchange;

      string from = "Won";
      string get = "Dollar";
     real after_amount;

      function new(real amount);
       super.new(amount); 
       super.AfterExchange( 1/Won_Rate );
       super.Name(get,from);
       super.display();
     endfunction
   endclass

   class getYenfromDollar extends Exchange;

      string from = "Dollar";
      string get = "Yen";
     real after_amount;
     

     function new(real amount);
       super.new(amount); 
       super.AfterExchange( Yen_Rate );
       super.Name(get,from);
       super.display();
     endfunction
   endclass


   class getDollarfromYen extends Exchange;

      string from = "Yen";
      string get = "Dollar";
     real after_amount;

     function new(real amount);
       super.new(amount); 
       super.AfterExchange( 1/Yen_Rate );
       super.Name(get,from);
       super.display();
     endfunction
   endclass


   initial begin
      getEurofromDollar test1 = new(100);
     getDollarfromEuro test2 = new(20);
      getWonfromDollar test3 = new(100);
     getDollarfromWon test4 = new(20);
     getYenfromDollar test5 = new(13000);
     getDollarfromYen test6 = new(150000);

   end

endmodule

