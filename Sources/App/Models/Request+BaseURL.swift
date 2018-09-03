//
//  Request+BaseURL.swift
//  App
//
//  Created by Soo Rin Park on 9/3/18.
//

import Foundation
import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers.firstValue(name: .host)!
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(host)://\(scheme)/todos/"
    }
}
