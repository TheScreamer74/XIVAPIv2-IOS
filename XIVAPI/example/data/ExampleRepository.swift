// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/18/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

protocol ExampleRepository {
    
    func downloadWebPageAtURL(url: URL, callback: @escaping (String?, Error?) -> Void)
}

class ExampleRepositoryImpl: ExampleRepository {
    
    func downloadWebPageAtURL(url: URL, callback: @escaping (String?, Error?) -> Void) {
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            
            guard data != nil else {
                callback(nil, error)
                return
            }
            
            let htmlString = String(data: data!, encoding: .isoLatin1)
            callback(htmlString, nil)
            
        }.resume()
    }
    
}
