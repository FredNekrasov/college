package sixthAndFifthPW.printData

import sixthAndFifthPW.database.Settlement
import javax.inject.Inject

class Print @Inject constructor() : PrintList {
    override fun printList(list: List<Settlement>) {
        list.forEachIndexed { index, settlement ->
            println("$index | settlement's name is ${settlement.name} | builder is ${settlement.builder} | area ${settlement.area} | number of inhabitants ${settlement.numberOfInhabitants}")
        }
    }
}