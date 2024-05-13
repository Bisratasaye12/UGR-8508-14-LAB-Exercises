import kotlin.random.Random

fun main() {
    val values = mutableListOf<Int>();
    for (x in 33..126){
            values.add(x)
        }
    
    fun generatePassword(length: Int): String{
        var pass = mutableListOf<String>();
        
        
        for (i in 1..length){
            var idx: Int = Random.nextInt(0,values.size)
            var elem = values[idx]
            pass.add(elem.toChar().toString())
        }
        return pass.joinToString("")
    }
    print("Generated Password : ${generatePassword(15)}")
}

