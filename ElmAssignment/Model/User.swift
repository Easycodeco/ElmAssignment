//
//  User.swift
//  ElmAssignment
//
//  Created by Mobark Alseif on 05/04/1443 AH.
//

import Foundation

// MARK: - Users
struct Users: Decodable {
    var user: User?
}
// MARK: - User
struct User:Decodable {
    var name: String?
    var profile_image: ProfileImage?
}
// MARK: - ProfileImage
struct ProfileImage:Decodable {
    var small, medium, large: String?
}
