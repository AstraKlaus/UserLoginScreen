//
//  PersonalInfo.swift
//  UserLoginScreen
//
//  Created by Андрей Касьянов on 31.07.2022.
//

struct Person{
    let userName: String
    let password: String
    
    let name: String
    let description: String
    
    let photo: String
    
    static func getPersons() -> Person{
        Person(
            userName: "User",
            password: "Password",
            name: "Andrey Alexandrovich",
            description: "Hello, I'm studying at Astrakhan State University. I really like programming, I try to spent my free time learning something new.", photo: "Guitar")
    }
}
