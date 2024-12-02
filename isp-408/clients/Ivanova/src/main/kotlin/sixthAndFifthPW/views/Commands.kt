package sixthAndFifthPW.views

import javax.inject.Inject

class CreateCommand @Inject constructor(private val view: Executor) : Execute {
    override fun execute() {
        view.createData()
    }
}
class ReadCommand @Inject constructor(private val view: Executor) : Execute {
    override fun execute() {
        view.printData()
    }
}
class UpdateCommand @Inject constructor(private val view: Executor) : Execute {
    override fun execute() {
        view.updateData()
    }
}
class DeleteCommand @Inject constructor(private val view: Executor) : Execute {
    override fun execute() {
        view.deleteData()
    }
}
class SortCommand @Inject constructor(private val view: Executor) : Execute {
    override fun execute() {
        view.sortData()
    }
}
class SearchCommand @Inject constructor(private val view: Executor) : Execute {
    override fun execute() {
        view.searchData()
    }
}