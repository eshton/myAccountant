package myaccountant.controller

import myaccountant.domain.Transaction
import myaccountant.domain.TransactionType
import myaccountant.command.NewTransactionCommand

class TransactionController {

    def index = { }

    def list = {
        [transactions: Transaction.findAll("from Transaction as t where t.deleteDate IS NULL order by t.createDate desc")]
    }

    def create = {
        [types: TransactionType.findAll(), command: flash.command]
    }

    def saveNew = { NewTransactionCommand command ->
        if (!command.validate()) {
            def errorMessage = command.errors.allErrors.join(",")
            flash.command = command
            redirect action: "create"
            return
        } else {
            command.toTransaction()
            flash.success = "Transaction successfully created"
            redirect action: "create"
        }
    }

    def delete = {
        def trans = Transaction.get(params.id)
        if (!trans) {
            flash.notice = "Transaction with ID ${params.id} cannot be found."
            redirect action:"list"
            return
        }

        trans.softDelete()

        flash.success = "Transaction successfully deleted"
        redirect action: "list"
    }
}
