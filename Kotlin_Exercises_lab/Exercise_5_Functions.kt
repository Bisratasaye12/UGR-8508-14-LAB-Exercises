fun main() {
    val vowels = listOf("a","e","i","o","u")
    
    var input_string: String = "This is an input STRING for the Below    Program!!";
    
    fun analyseString(input: String): String {
        val words = input.splitToSequence(" ").toList().filter{it != ""}
        var word_count = words.size;
        var vowel_count: Int = 0;
        var uppercase_count: Int = 0;
        
        for (letter in input){
            if (letter.isUpperCase()){
                uppercase_count ++;
            }
            else  if (letter.toLowerCase().toString() in vowels){
                vowel_count ++;
            }
        }
        
        return "Word Count: $word_count \nUpperCase Count: $uppercase_count \nVowel_count: $vowel_count"
    }
    
    val analysis = analyseString(input_string).toString();
    print(analysis)
   
}
