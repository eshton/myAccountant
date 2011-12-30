package myaccountant.domain

import org.joda.time.LocalDateTime

class Transaction {

    boolean direction
    String currency
    Integer amount
    String comment
    Date actDate
    Date createDate
    Date updateDate
    Date deleteDate

    static belongsTo = [type: TransactionType]

    static constraints = {
        comment blank: true, nullable: true
        deleteDate nullable: true, blank: true
    }

    static transients = ["deleted"]

    Transaction create ( params ) {
        def trans = new Transaction(params)
        if (!trans.validate()) {
            throw new Exception("Cannot save Transaction with parameters " + params)
        } else {
            trans.save(flush:true)
        }
    }

    void softDelete() {
        deleteDate = new Date()
        save()
    }

    boolean isDeleted() {
        return deleteDate?true:false
    }
}
