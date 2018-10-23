import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
//    router.get { req in
//        return "It works!sdfsd"
//    }
//
//    // Basic "Hello, world!" example
//    router.get("hello") { req in
//        return "Hello, world!"
//    }
    
//
//    router.get("users", Int.parameter) { req -> String in
//        let id = req.parameters
//        return "requested uid #\(id)"
//    }
//
//
//
    //测试
    router.post("login") { req -> Future<HTTPStatus> in
        
        return try req.content.decode(LoginRequest.self).map(to: HTTPStatus.self, { loginRequest in
            print(loginRequest.email) // user@vapor.codes
            print(loginRequest.password) // don't look!
            return .ok
        }).catch({ (error) in
            
        })
    }
    router.post("userinfo") { req -> User in
        return User(name: "I`m name", email: "I`m email")
    }
    
    
    
//    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todoss", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)

    let helloController = HelloController()
    let helloRouter = router.grouped("hello")

    helloRouter.post("greet", use: helloController.greet)
//
//
  
    router.get { req in
        
        
        return "adsdasd"
        
    }
    
    // Basic "Hello, world!" example
    
    router.post("hello","world") { req in
        return "Hello, world!"
    }
    //用户数据
    let userRouter = router.grouped("user")
    let userController = UserController()
    userRouter.post("greet", use: userController.greet)
    userRouter.post("register", use: userController.register)
    userRouter.post("getverifycode", use: userController.getVerifyCode)
    userRouter.get("login", use: userController.login)
    userRouter.post("logout", use: userController.logout)
    userRouter.post("update", use: userController.updateUserInfo)
    userRouter.post("uploadheadpic", use: userController.updateUserHeadPicture)
}
