import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }
    
    //Route Parameters
    app.get("hello", ":name") { req -> String in
        let name = req.parameters.get("name")!
        return "Hello, \(name)"
    }
    
}
