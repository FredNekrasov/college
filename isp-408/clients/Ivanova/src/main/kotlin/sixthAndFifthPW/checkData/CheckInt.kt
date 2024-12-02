package sixthAndFifthPW.checkData

import javax.inject.Inject

class CheckArea @Inject constructor() : ICheckArea {
    override fun check(inf: Int?) = if (inf != null && inf > 0) inf else null
}
class CheckNumberOfInhabitants @Inject constructor() : ICheckNumberOfInhabitants {
    override fun check(inf: Int?) = if (inf != null && inf > 0) inf else null
}