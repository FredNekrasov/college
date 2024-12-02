package sixthAndFifthPW.views

import javax.inject.Inject

class MenuBuilder @Inject constructor(add: CreateCommand, type: ReadCommand, edit: UpdateCommand, delete: DeleteCommand, sort: SortCommand, search: SearchCommand) {
    val commandList = listOf(MenuItem("1. Add record", add), MenuItem("2. Update record", edit), MenuItem("3. Delete record", delete), MenuItem("4. Sort records", sort), MenuItem("5. Search for records", search), MenuItem("6. Display the content", type))
}
class Menu(private val items: List<MenuItem>) {
    fun executeCommand(i : Int){
        items.getOrNull(i)?.exe()
    }
}
class MenuItem(val name:String, private val command: Execute) {
    fun exe() = command.execute()
}