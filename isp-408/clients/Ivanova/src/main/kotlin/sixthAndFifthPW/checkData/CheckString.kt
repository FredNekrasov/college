package sixthAndFifthPW.checkData

import javax.inject.Inject

class CheckBuilder @Inject constructor() : ICheckBuilder {
    override fun check(inf: String?) = if (!inf.isNullOrBlank() && inf.isNotEmpty()) inf else null
}
class CheckName @Inject constructor() : ICheckName {
    override fun check(inf: String?) = if (!inf.isNullOrBlank() && inf.isNotEmpty()) inf else null
}