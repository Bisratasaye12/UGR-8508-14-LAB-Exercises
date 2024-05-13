fun main() {
    var original_price: Double = 60.0;
    var discount_rate: Double = 0.7;
    var final_price: Double;
    val THRESHOLD = 0.5;
    
    fun calculate_price(price: Double, rate: Double): Double {
        var final_price : Double;
        if (rate > THRESHOLD && rate < 0){
            print("Invalid discount rate\n");
            final_price = price
        }else{
            final_price = price - (rate * price)
        }
        return final_price
        
    }
    
    print(calculate_price(original_price, discount_rate))
    
}
