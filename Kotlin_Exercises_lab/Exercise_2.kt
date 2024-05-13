fun main() {
    val conv = hashMapOf(
        "meter_to_kilometer" to 0.001,
        "kilometer_to_meter" to 1000.0,
        "meter_to_mile" to 0.00062137,
        "mile_to_meter" to 1609.344,
        "kilometer_to_mile" to 0.62137119,
        "mile_to_kilometer" to 1.609344,
    )
   
    fun unitConverter(magnitude: Double, conversion: String): Double {
       val c: Double? = conv[conversion]
       return if (c != null) {
           magnitude * c
       } else {
           magnitude
       }
    }
    
    print(unitConverter(10.0, "kilometer_to_mile"))
}
