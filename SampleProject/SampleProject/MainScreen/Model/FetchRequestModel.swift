//
//  FetchRequestModel.swift
//  SampleProject
//
//  Created by heeba khan on 28/08/22.
//

import Foundation
import UIKit

struct FetchRequestModel {
    var title: String
    var userName: String
    var createdDate: String
    var userImage: String?
    var closedDate: String
    
    
    init(title: String, userName: String, createdDate: String, userImage: String, closedDate: String) {
        self.title = title
        self.userName = userName
        self.createdDate = createdDate
        self.userImage = userImage
        self.closedDate = closedDate
    }
}
