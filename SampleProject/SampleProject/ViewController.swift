//
//  ViewController.swift
//  SampleProject
//
//  Created by heeba khan on 28/08/22.
//

import UIKit
import Moya

class ViewController: UIViewController {
    
    let userProvider = MoyaProvider<NetworkService>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userProvider.request(.allRequests) { result in
            
            print(result)
            switch result {
            case .success(let response) :
                let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
                print(json)
            case .failure(let error):
                print(error)
            }
        }
        // Do any additional setup after loading the view.
    }


}

