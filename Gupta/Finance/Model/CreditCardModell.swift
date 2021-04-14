//
//  CreditCardModell.swift
//  Gupta
//
//  Created by Ashish Gupta on 14/04/21.
//

import Foundation

enum Bank:String, Codable {
    case hdfc = "hdfc"
    case icici = "icici"
    case amex = "amex"
}

enum CardType: Int, Codable {
    case visa
    case master
    case amex
    case dinners
}

class CreditCard: Codable {
    var bank:Bank
    var amountDue: Float
    var totalLimit: Float
    var cardNumber: String
    var cardType: CardType
    var billingData: String
}
