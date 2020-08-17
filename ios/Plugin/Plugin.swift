import Foundation
import Capacitor
import PutioKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
 
@objc(Putio)
public class PutioClient: CAPPlugin {
 @objc func add(_ call: CAPPluginCall) {
        let CLIENT_ID: Int = call.getInt("client_id") ?? 0
        let DEV_TOKEN: String = call.getString("token") ?? ""
        let url: String = call.getString("url") ?? ""
                    
        Putio.clientId = CLIENT_ID
        Putio.accessToken = DEV_TOKEN
        
        Putio.addTransfer(fromUrl: url) { (transfer, error) in
            switch transfer?.status as! String? {
            case "COMPLETED":
                call.success(["results": transfer as Any])
            default:
                call.reject("Error available", "404", error)
            }
        }
    }
}
//    @objc func login(_ call: CAPPluginCall) {
//        let CLIENT_ID = call.getString("client_id") ?? ""
//        let CLIENT_SECRET = call.getString("client_secret") ?? ""
//        let DEV_TOKEN = call.getString("token") ?? ""
//        let username = call.getString("username") ?? ""
//        let password = call.getString("password") ?? ""
//        let clientName = call.getString("clientName") ?? ""
//        
//        var results: String?
//        var error: Error?
//        
//        
//        let api = PutioAPI(clientID: CLIENT_ID, clientSecret: CLIENT_SECRET)
//        api.setToken(token: DEV_TOKEN)
//
//       
//        api.login(username: username, password: password, clientName: clientName) { (res, err) in
//            results = res
//            let isEmpty = results?.isEmpty != nil
//            if(isEmpty) {
//                error = err
//            }
//            print(results as Any, error as Any)
//        }
//        
//        call.success([
//            "value": results
//        ])
//    }

   

    
    
//     @objc func remove(_ call: CAPPluginCall) {
//         let CLIENT_ID: Int = call.getInt("client_id") ?? 0
//         let DEV_TOKEN: String = call.getString("token") ?? ""
// //        let url: String = call.getString("url") ?? ""
                    
//         Putio.clientId = CLIENT_ID
//         Putio.accessToken = DEV_TOKEN
//         let file1: File
//         let file2: File
        
// //        Putio.delete(files: file1, file2) { (done) in
// //            print(done)
// //        }
//         call.success([
//             "value": "Hello World!"
//         ])
        
//     }
// }
