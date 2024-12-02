package sixthAndFifthPW.database

interface Operations {
    fun update(index: Int, record: Settlement): String
    fun<T: Comparable<T>> sort(field: (Settlement) -> T): List<Settlement>
    fun delete(index: Int): String
    fun<T> search(field: (Settlement) -> T, value: T): List<Settlement>
    fun create(record: Settlement): String
    fun getList(): List<Settlement>
}