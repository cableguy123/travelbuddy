//
//  Exception .swift
//  travelbuddy
//
//  Created by 임석현 on R 6/10/31.
//

import Foundation


enum Exception : LocalizedError {
    case loginError(String) // Login Error
    case networkError(String) // NetWork Error
    case runtimeError(String) // RunTime Error
    var errorException : String? {
        switch self {
            case .loginError(let message),
                 .networkError(let message),
                 .runtimeError(let message):
            return message
        }
    }
}
