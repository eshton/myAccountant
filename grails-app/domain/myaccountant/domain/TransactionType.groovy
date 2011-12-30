package myaccountant.domain

class TransactionType {

    String name
    String description

    static hasMany = [transactions: Transaction]

    static constraints = {
    }
}
