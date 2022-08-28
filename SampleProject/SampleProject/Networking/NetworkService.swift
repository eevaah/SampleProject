//
//  NetworkService.swift
//  SampleProject
//
//  Created by heeba khan on 28/08/22.
//

import Foundation
import Moya
 
enum NetworkService {    
    case openRequests
    case closedRequests
    case allRequests
    
    
}

extension NetworkService: TargetType {
    var baseURL: URL {
       // return URL(string: "https://jsonplaceholder.typicode.com")!
        return URL(string: "https://api.github.com/repos/eevaah/SampleProject/pulls?")!
                    //"\(APIConstants.NetworkConstants.baseURL)eevaah/SAMPLEPROJECT/ \(APIConstants.NetworkConstants.endPoint)")!
    }
    
    var path: String {
        switch self {
        case .openRequests:
         //   return "/users"
          return "state=open"
            
        case .closedRequests:
            return "state=close"
            
        case .allRequests:
            return "state=all"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .openRequests, .closedRequests, .allRequests:
            return .get
        
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return [:]
     //   return ["auth" : "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",]
       // return ["Accept" : "application/vnd.github+json",
         //       "Authorization" : "token <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>"]
    }
    
    
    
}
