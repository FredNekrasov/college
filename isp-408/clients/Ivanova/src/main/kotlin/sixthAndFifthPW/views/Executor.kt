package sixthAndFifthPW.views

import sixthAndFifthPW.checkData.*
import sixthAndFifthPW.database.*
import sixthAndFifthPW.printData.*
import javax.inject.Inject

class Executor @Inject constructor(private val db: DataBase, private val type: Print, private val checkArea: ICheckArea, private val checkBuilder: ICheckBuilder, private val checkName: ICheckName, private val checkNumberOfInhabitants: ICheckNumberOfInhabitants): IExecutor {
    override fun createData(){
        println("name of the settlement")
        val name = readlnOrNull().let { checkName.check(it) }
        if (name == null) println("Err1")
        println("Builder")
        val builder = readlnOrNull().let { checkBuilder.check(it) }
        if (builder == null) println("Err2")
        println("Area")
        val area = readlnOrNull().let { if (it != null) checkArea.check(it.toIntOrNull()) else return }
        if (area == null) println("Error: Value is null or incorrect")
        println("Number of inhabitants")
        val numberOfInhabitants = readlnOrNull().let { if (it != null) checkNumberOfInhabitants.check(it.toIntOrNull()) else return }
        if (numberOfInhabitants == null) println("Error: Value is null or incorrect")
        if ((name == null) || (builder == null) || (area == null) || (numberOfInhabitants == null)) println("Some field was wrong")
        else db.create(Settlement(name, builder, area, numberOfInhabitants))
    }
    override fun updateData(){
        println("Enter the index of the record")
        val index = readlnOrNull().let { if (it != null) it.toIntOrNull() else return }
        when {
            index == null -> println("Error: Value is null or incorrect")
            (index < 0) -> println("Error: Value is null or incorrect")
            index !in db.getList().indices -> println("Error: this index doesn't exist")
            else -> {
                println("name of the settlement")
                val name = readlnOrNull().let { checkName.check(it) }
                if (name == null) println("Err1")
                println("Builder")
                val builder = readlnOrNull().let { checkBuilder.check(it) }
                if (builder == null) println("Err2")
                println("Area")
                val area = readlnOrNull().let { if (it != null) checkArea.check(it.toIntOrNull()) else return }
                if (area == null) println("Error: Value is null or incorrect")
                println("Number of inhabitants")
                val numberOfInhabitants = readlnOrNull().let { if (it != null) checkNumberOfInhabitants.check(it.toIntOrNull()) else return }
                if (numberOfInhabitants == null) println("Error: Value is null or incorrect")
                if ((name == null) || (builder == null) || (area == null) || (numberOfInhabitants == null)) println("Some field was wrong")
                else println(db.update(index, Settlement(name, builder, area, numberOfInhabitants)))
            }
        }
    }
    override fun deleteData(){
        println("Enter the index of the record")
        val index = readlnOrNull().let { if (it != null) it.toIntOrNull() else return }
        if (index == null || index < 0) println("Error: Value is null or incorrect")
        else println(db.delete(index))
    }
    override fun searchData(){
        println("\n Choose which field to search by:\n 1. Name of the settlement\n" +
                " 2. Builder\n 3. Area\n 4. Number of inhabitants")
        val index = readlnOrNull().let { if (it != null) it.toIntOrNull() else return }
        if (index == null) println("Error: Value is null or incorrect")
        else {
            when(index){
                1 -> {
                    println("Enter the data")
                    val item = readlnOrNull().let { checkName.check(it) }
                    if (item == null) println("Error: Value is null or incorrect")
                    else type.printList(db.search({ it.name }, item))
                }
                2 -> {
                    println("Enter the data")
                    val item = readlnOrNull().let { checkBuilder.check(it) }
                    if (item == null) println("Error: Value is null or incorrect")
                    else type.printList(db.search({ it.builder }, item))
                }
                3 -> {
                    println("Enter the data")
                    val value = readlnOrNull().let { if (it != null) checkArea.check(it.toIntOrNull()) else return }
                    if (value == null) println("Error: Value is null or incorrect")
                    else type.printList(db.search({ it.area }, value))
                }
                4 -> {
                    println("Enter the data")
                    val value = readlnOrNull().let { if (it != null) checkNumberOfInhabitants.check(it.toIntOrNull()) else return }
                    if (value == null) println("Error: Value is null or incorrect")
                    else type.printList(db.search({ it.numberOfInhabitants }, value))
                }
                else -> println("Error: There is no such choice")
            }
        }
    }
    override fun sortData(){
        println("\n Choose which field to sort by:\n 1. name of the settlement\n" +
                " 2. Builder\n 3. Area\n 4. Number of inhabitants")
        val index = readlnOrNull().let { if (it != null) it.toIntOrNull() else return }
        if (index == null) println("Error: Value is null or incorrect")
        else{
            when(index){
                1 -> type.printList(db.sort { it.name })
                2 -> type.printList(db.sort { it.builder })
                3 -> type.printList(db.sort { it.area })
                4 -> type.printList(db.sort { it.numberOfInhabitants })
                else -> println("Error: There is no such choice")
            }
        }
    }
    override fun printData() {
        type.printList(db.getList())
    }
}
interface IExecutor {
    fun createData()
    fun updateData()
    fun deleteData()
    fun searchData()
    fun sortData()
    fun printData()
}