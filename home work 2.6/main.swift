//
//  main.swift
//  home work 2.6
//
//  Created by Айбек Шакиров on 3/11/22.
//

import Foundation

//Создать класс User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Сделать так, чтобы пользователь вводил данные через ридлайн. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В конце вывести информацию о пользователе, где номер телефона распечатывается в таком виде: “+996777777777”
//

class User{
    let name: String
    let surname: String
    let phoneNumber: String
    
    init(name: String, surname: String, phoneNumber: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
    }
}


enum Countries: String{
    case kg = "+996"
    case uzb = "+995"
    case kz = "+7"
    case usa = "+1"
}

print("Viberite strany")
let userCountry = readLine()!
print("viberite svoi nomer telvona")
let userPhoneNumber = readLine()!


let user = User(name: "ivan", surname: "ivanov", phoneNumber: userPhoneNumber)

switch userCountry{
case "kg": print("\(Countries.kg.rawValue)\(user.phoneNumber)")
case "uzb": print("\(Countries.uzb.rawValue)\(user.phoneNumber)")
default:print("err")
}

