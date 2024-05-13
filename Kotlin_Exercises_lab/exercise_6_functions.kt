fun main() {
    var firstList = listOf(2,3,4,5,6,9);
    var secondList = listOf(3,4,7,8,1,2,3,6);
    var avg_list = listOf(2.3, 1.0, 3.9, 8.6, 9.0);
    
    fun findMax(lst: List<Int>): Int{
        var max_value = Int.MIN_VALUE;
        
        for (num in lst){
            if (num > max_value){
                max_value = num
            }
        }
        return max_value
    }
    
    fun findEvens(lst: List<Int>): List<Int> {
        return lst.filter{it % 2 == 0}
    }
    
    fun findAVG(lst: List<Double>): Double{
        var sum: Double = 0.0;
        for (num in lst){
            sum += num
        }
        return if (lst.size != 0){
            sum / lst.size
        }else{
            0.0
        }
    }
   println("max number: ${findMax(firstList)}")
   println("even_numbers: ${findEvens(secondList)}")
   println("average: ${findAVG(avg_list)}")
}
