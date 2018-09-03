//
//  IncomingTodo.swift
//  App
//
//  Created by Soo Rin Park on 9/3/18.
//

import Foundation
import Vapor

extension Todo {
    struct Incoming: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(id: nil,
                        title: title ?? "",
                        completed: completed ?? false,
                        order: order)
        }
    }
}
