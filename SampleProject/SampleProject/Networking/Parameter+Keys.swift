//
//  Parameter+Keys.swift
//  SampleProject
//
//  Created by heeba khan on 28/08/22.
//

import Foundation
import SwiftUI

typealias OptionalDictionary = [String : Any]?

extension Sequence where Iterator.Element == Keys {
    func map(values: [Any?]) -> OptionalDictionary {
        var params = [String : Any]()
        
        for (index,element) in zip(self,values) {
            if element != nil {
                params[index.rawValue] = element
            }
        }
        return params
    }
}

enum Keys: String {
case id
case userName
    
}


struct Parameters {
    static let getRequests: [Keys] = [.id, .userName]
    
}
