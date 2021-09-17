# Ruby grocery price calculator

At the local grocery store items are sold by quantity. For example, Milk costs $3.97. However, sometimes there is a sale and then consumers can buy n items for the price of one.  
  

This week the pricing table at the local grocery store looks like this.  
  

    Item     Unit price        Sale price
    --------------------------------------
    Milk      $3.97            2 for $5.00
    Bread     $2.17            3 for $6.00
    Banana    $0.99
    Apple     $0.89
      

At the cash counter, the items are accepted in any order. For example, at the cash counter, the order of items can be Bread, Banana, Milk, Apple, Bread, and then Milk. Notice that the quantity of the Milk is 2 and this week there is a sale on Milk if 2 milk is purchased. So the price applied for milk should be $5.00.  
  

Note that if the user buys three milk then

1.  for the first two milk user should pay the sale price
2.  for the third milk user should pay the unit price.

So the total price for three milk will be $5.00 + $3.97 = $8.97  
  
## How this works..

  
    $ ruby price_calculator.rb
    Please enter all the items purchased separated by a comma
    milk,milk, bread,banana,bread,bread,bread,milk,apple
    
     
    
           Item     Quantity      Price
            --------------------------------------
            Milk      3            $8.97
            Bread     4            $8.17
            Apple     1            $0.89
            Banana    1            $0.99  
        
        Total price : $19.02
        You saved $3.45 today.
