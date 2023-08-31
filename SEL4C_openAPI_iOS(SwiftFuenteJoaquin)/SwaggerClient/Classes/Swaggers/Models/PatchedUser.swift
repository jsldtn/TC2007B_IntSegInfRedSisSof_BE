//
// PatchedUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PatchedUser: Codable {

    public var url: String?
    /** Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. */
    public var username: String?
    public var email: String?
    /** The groups this user belongs to. A user will get all permissions granted to each of their groups. */
    public var groups: [String]?

    public init(url: String? = nil, username: String? = nil, email: String? = nil, groups: [String]? = nil) {
        self.url = url
        self.username = username
        self.email = email
        self.groups = groups
    }


}
