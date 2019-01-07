//
//  ImageHelper.swift
//  MarvelStudiosApi
//
//  Created by Ibraheem rawlinson on 1/2/19.
//  Copyright © 2019 Ibraheem rawlinson. All rights reserved.
//

import UIKit
class ImageHelper {
    static func getImageWithPath(path: String, callBack: @escaping(Error?, UIImage?)-> Void){
        guard let url = URL(string: path) else {
            callBack("bad url \(path)" as? Error, nil)
            return
        }
        URLSession.shared.dataTask(with: url){(data, response, error) in
            if let response = response as? HTTPURLResponse {
                print("response status code is \(response.statusCode)")
            }
            if let error = error {
                callBack(error, nil)
            }
            if let data = data {
                DispatchQueue.global().async {
                    let image = UIImage(data: data)
                    callBack(nil, image)
                }
                
            }
        }.resume()
    }
}
