//
//  UserVM.swift
//  ElmAssignment
//
//  Created by Mobark Alseif on 05/04/1443 AH.
//

import Foundation
import ServiceData
 
// MARK: - User View Model
struct UserVM {
    
    var user = [Users]()
    
    // MARK: - Fetch data from [ServiceData] that we create..
    func fetchData(completion: ([Users]) -> ()) {
        ServiceData.fetchGenericData(from: "http://pastebin.com/raw/wgkJgazE", completion: completion)
            
    }
    // MARK: - Fetch Users
    mutating func fetchUsers() {
        fetchData { users in
            for user in users {
                self.user.append(user)
            }
        }
    }
}
