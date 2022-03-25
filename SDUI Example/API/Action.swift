//
//  Action.swift
//  SDUI Example
//
//  Created by Bruno Dias Sepulveda on 21/03/22.
//

import Foundation

struct Action: Decodable {
    let identifier: ActionIdentifier
    let url: String
}

enum ActionIdentifier: String, Decodable {
    case serverSideScreen = "SCREEN_SERVER"
}
