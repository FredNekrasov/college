package sixthAndFifthPW.checkData

interface ICheckNumberOfInhabitants {
    fun check(inf: Int?) = if (inf != null && inf > 0) inf else null
}
interface ICheckArea {
    fun check(inf: Int?) = if (inf != null && inf > 0) inf else null
}
interface ICheckBuilder {
    fun check(inf: String?) = if (!inf.isNullOrBlank() && inf.isNotEmpty()) inf else null
}
interface ICheckName {
    fun check(inf: String?) = if (!inf.isNullOrBlank() && inf.isNotEmpty()) inf else null
}