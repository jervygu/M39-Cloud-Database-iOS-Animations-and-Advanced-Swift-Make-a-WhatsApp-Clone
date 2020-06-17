import UIKit


// Completion Handler
class Firebase {
    func createUser (username: String, password: String, completion: (Bool, Int) -> Void) {
        // does something time consuming
        
        var isSuccess = true
        var userID = 123
        completion(isSuccess, userID)
    }
}

class MyApp {
    func registerButtonPressed() {
        let firebase = Firebase()
//        1 before turning to closure completion handler
//        firebase.createUser(username: "jervygu", password: "123456", completion: completed)
        
        firebase.createUser(username: "jervygu", password: "123456") {
            (isSuccess: Bool, userID: Int) in
            
               print("Registration is Successful! \(isSuccess)")
               print("User ID is: \(userID)")
           }
    }
    
//        1 before turning to closure completion handler
//    func completed(isSuccess: Bool, userID: Int) {
//        print("Registration is Successful! \(isSuccess)")
//        print("User ID is: \(userID)")
//    }
    
}

let myApp = MyApp()
myApp.registerButtonPressed()
