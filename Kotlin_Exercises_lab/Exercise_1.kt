fun main() {
    var variable1: Int = 20
    var variable2: Int = 10
    var operation: String =  "Multiplication"
    
    fun Exercise_1(num1: Int, num2: Int, op: String): Int {
        var ans: Int = if (op == "Addition"){
         	num1 + num2   
        } else if (op == "Subtraction"){
            num1 - num2
        } else if (op == "Multiplication"){
            num1 * num2
        } else if (op == "Division" && num2 != 0){
            num1 / num2
        } else{
            -1
        }
        return ans
    }
    
    println(Exercise_1(variable1, variable2, operation))
    
   
}
