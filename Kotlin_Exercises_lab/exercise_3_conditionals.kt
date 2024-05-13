fun main() {
    val grade: Double = 10.0;
    
    fun GradeCalculator(grade: Double): String {
        return when{
            grade >= 90 && grade <= 100 -> "A"
            grade >= 80 && grade < 90 -> "B"
            grade >= 70 && grade < 80 -> "C"
            grade >= 60 && grade < 70 -> "D"
            grade < 60 -> "F"
            else -> "Invalid Grade"
        }
        
    }
    
   print(GradeCalculator(grade))
}
