//
//  LoginRequst.swift
//  Hello
//
//  Created by Mac on 2018/10/22.
//

import Vapor

struct LoginRequest: Content {
    var email:String
    var password: String
    
    
}

struct User: Content {
    var name: String
    var email: String
}

