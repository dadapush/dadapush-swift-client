//
// ResultOfPageResponseOfMessageObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct ResultOfPageResponseOfMessageObject: Codable {

    public var code: Int
    public var data: PageResponseOfMessageObject?
    public var errmsg: String

    public init(code: Int, data: PageResponseOfMessageObject?, errmsg: String) {
        self.code = code
        self.data = data
        self.errmsg = errmsg
    }


}

