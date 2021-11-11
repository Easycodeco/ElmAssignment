//
//  ServiceData.swift
//  ElmAssignment
//
//  Created by Mobark Alseif on 05/04/1443 AH.
//

import Foundation

class ServiceData: NSObject {
    
    // Generic function for fetch generic Data, with decode response.
    public static func fetchGenericData<T: Decodable>(from path: String, completion: ([T]) -> ()) {
        
        guard let url = URL(string: path), let data = try? Data(contentsOf: url) else { return }
        let json = try? JSONDecoder().decode([T].self, from: data)
        guard let result = json else { return }
        
        completion(result)
        
    }
    
}
