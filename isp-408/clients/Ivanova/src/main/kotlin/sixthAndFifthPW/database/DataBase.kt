package sixthAndFifthPW.database

import javax.inject.Inject

class DataBase @Inject constructor() : Operations {
    private val list = mutableListOf<Settlement>()
    override fun getList() = list.toList()
    override fun create(record: Settlement): String {
        list.add(record)
        return "The record has been created"
    }
    override fun delete(index: Int): String {
        return if (index in list.indices) {
            list.removeAt(index)
            "The record has been deleted"
        }
        else "this index doesn't exist"
    }
    override fun update(index: Int, record: Settlement): String {
        list[index] = record
        return "The record has been updated"
    }
    override fun <T> search(field: (Settlement) -> T, value: T): List<Settlement> = list.filter{ field(it) == value }.toList()
    override fun <T : Comparable<T>> sort(field: (Settlement) -> T): List<Settlement> = list.sortedBy(field).toList()
}