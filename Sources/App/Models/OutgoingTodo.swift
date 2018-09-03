//
//  OutgoingTodo.swift
//  App
//
//  Created by Soo Rin Park on 9/3/18.
//

import Foundation
import Vapor

extension Todo {
    struct Outgoing: Content {
        var id: Int?
        var title: String?
        var completed: Bool?
        var oder: Int?
        var url: String
    }
}

extension Todo {
    func makeOutgoing(with req: Request) throws -> Outgoing {
        let idString = id?.description
        let url = req.baseURL + (idString ?? "")
        return Outgoing(id: id,
                        title: title,
                        completed: completed,
                        oder: order,
                        url: url)
}
}
