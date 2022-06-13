//
//  Model.swift
//  Homework 7
//
//  Created by Aid on 08.06.2022.
//
import Foundation

struct Person {
    
    var name : String
    var surname : String
    var phoneNumber : String
    var email : String
    
    var fullName : String {
        "\(name)  \(surname)"
    }
    
}

extension Person {
    static func getContacts() -> [Person] {
     
        var persons : [Person] = []
        
        let names = DataManager.shared.nameArray.shuffled()
        let surnames = DataManager.shared.surnameArray.shuffled()
        let emails = DataManager.shared.emailArray.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumberArray.shuffled()
        
        for index in 0..<names.count {
            
            let person = Person(name: names[index], surname: surnames[index], phoneNumber: phoneNumbers[index], email: emails[index])
            persons.append(person)
        }
        
        return persons
    }
}

