/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package myaccountant.command

import myaccountant.domain.Transaction
import myaccountant.domain.TransactionType

/**
 *
 * @author agoston
 */
class NewTransactionCommand {

    String currency
    Long type
    Integer amount
	Integer amount_penny
    String comment
    Date actDate

    static constraints = {
        currency nullable: false
        type blank: false, nullable: false
		amount_penny validator: { val, obj ->
			if (obj.amount == 0) {
				return val?true:['myaccountant.command.NewTransactionCommand.amount']
			}
		}
        comment nullable: true, blank: true
    }

    def toTransaction() {
        def transaction = new Transaction(
            direction: true,
            currency: currency,
            type: TransactionType.get(type),
            amount: amount * 100 + amount_penny,
            comment: comment,
			actDate: new Date(),
            createDate: new Date(),
            updateDate: new Date(),
            deleteDate: null
        )

        transaction.save()
    }
}

