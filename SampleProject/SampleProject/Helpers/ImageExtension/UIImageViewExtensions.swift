//
//  UIImageViewExtensions.swift
//  SampleProject
//
//  Created by heeba khan on 28/08/22.
//

import UIKit
import Nuke

extension UIImageView {
    
    func setImageNuke(_ imageOrURL: Any?, placeHolder: UIImage? = nil) {
        if let _image = imageOrURL as? UIImage {
            image = _image
        } else if let url = URL(string: "\(imageOrURL)") {
            var request = ImageRequest(url: url)
            request.priority = .veryHigh
            Nuke.loadImage(with: request, options: ImageLoadingOptions(placeholder: placeHolder, transition: .fadeIn(duration: 0.33)), into: self, progress: nil) { (result) in
                switch result {
                case .success(let response):
                    Nuke.loadImage(with: ImageRequest(url: URL.init(string: "")!), options: ImageLoadingOptions(placeholder: response.image, transition: .fadeIn(duration: 0.33)), into: self, progress: nil) { (result2) in
                        switch result2 {
                        case .success(let response2):
                            Nuke.loadImage(with: ImageRequest(url: URL.init(string: "")), options: ImageLoadingOptions(placeholder: response2.image, transition: .fadeIn(duration: 0.33)), into: self, progress: nil, completion: nil)
                        case .failure(_):
                            break
                        }
                    }
                case .failure(_):
                    break
                }
            }
        } else {
            image = nil
        }
    }
    
    func setImage(from fullURL: URL?, placeHolder: UIImage? = nil) {
        if let url = fullURL {
            var request = ImageRequest(url: url)
            request.priority = .veryHigh
            Nuke.loadImage(with: request, options: ImageLoadingOptions(placeholder: placeHolder, transition: .fadeIn(duration: 0.33)), into: self, progress: nil) { (result) in
         
            }
        }
    }
    
   
}

