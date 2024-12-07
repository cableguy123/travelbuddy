//
//  Message.swift
//  travelbuddy
//
//  Created by 임석현 on R 6/11/23.
//

import SwiftUI


struct Message : Identifiable, Codable {
    // 검색 필터링
    let id : Int
    var user : String
    var text : String
}

