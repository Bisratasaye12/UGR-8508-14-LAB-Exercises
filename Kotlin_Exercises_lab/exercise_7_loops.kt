fun main() {
    
    var input_string =  "ThisIsastringwherewecanfindtheminandmaxcharacters";
    
    fun minMax(input: String): String{
        var min = input[0];
        var max = input[0];
        
        for (letter in input){
 
            if (min.code > letter.code){
                println(min)
                min = letter
            }
            if (max.code < letter.code){
                max = letter
            }
        }
        
        return "Maximum : $max \nMinimum : $min"
    }
    
    print(minMax(input_string))
}