fun main() {
    var strs = listOf("home", "worker", "student", "assignment", "Trump", "pepsi");
    var ints = listOf(0,-1,-4,4,3,-2,-1,22,-43,23,32,2,32,2,5,7);
    var pivot = 0;
    
    fun mapping(strings: List<String>): List<String>{
        return strings.map{it.toUpperCase()}
    }
    
    fun filtering(array: List<Int>, pivot: Int = 0): List<Int> {
        return array.filter{it > pivot}.toList()
    }
    
    fun reducing(array: List<Int>): Int {
        return array.reduce{acc,n -> acc + n}
    }
    println("The mapping: ${mapping(strs)}")
    println("The filtering: ${filtering(ints,pivot)}")
    println("The reducing: ${reducing(ints)}")
}