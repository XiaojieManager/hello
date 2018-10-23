//
//  HelloController.swift
//  Hello
//
//  Created by Mac on 2018/10/22.
//

import Vapor

final class HelloController {
    func greet(_ req: Request) throws -> String {
        return "Hello!"
    }
    
    
}
