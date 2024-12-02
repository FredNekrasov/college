import dagger.Binds
import dagger.Component
import dagger.Module
import sixthAndFifthPW.database.*
import sixthAndFifthPW.printData.*
import sixthAndFifthPW.checkData.*
import sixthAndFifthPW.views.*

//Реализуйте с использованием ООП простейшую консольную базу данных поселков. Поля: название, девелопер, площадь, количество жителей.
//Функции: добавление, изменение, удаление, сортировка, поиск, вывод на экран содержимого. В ходе реализации используйте следующие принципы: DRY, SOLID
fun main() {
    val menu = DaggerAppComponentI.builder().build().getMenu().commandList
    var choice: Int? = 0
    val menuItem = Menu(menu)
    while (choice != 7){
        choice = readlnOrNull().let { if (it != null) it.toIntOrNull() else { println("Err?"); return } }
        if ((choice != null) && (choice > 0)) menuItem.executeCommand(choice - 1)
        else println("WRONG_CHOICE")
    }
}
@Module
interface ProviderI {
    @Binds
    fun provideDatabase(database: DataBase): Operations
    @Binds
    fun provideType(type: Print): PrintList
    @Binds
    fun providePW(checkName: CheckName): ICheckName
    @Binds
    fun provideStudent(checkBuilder: CheckBuilder): ICheckBuilder
    @Binds
    fun provideVariant(checkArea: CheckArea): ICheckArea
    @Binds
    fun provideLVL(checkNumberOfInhabitants: CheckNumberOfInhabitants): ICheckNumberOfInhabitants
    @Binds
    fun provideExecutor(executor: Executor): IExecutor
}
@Component(modules = [ProviderI::class])
interface AppComponentI {
    fun getMenu(): MenuBuilder
}