//
// PaginatedHomeList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PaginatedHomeList: Codable {

    public var count: Int?
    public var next: String?
    public var previous: String?
    public var results: [Home]?

    public init(count: Int? = nil, next: String? = nil, previous: String? = nil, results: [Home]? = nil) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }


}
