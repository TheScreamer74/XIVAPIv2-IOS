// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/18/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

struct ExampleProcessor: ProcessorType {
    
    var repo: ExampleRepository
    
    func process(action: ActionType, next: @escaping (ResultType) -> Void) {
        
        guard let exampleAction = action as? ExampleAction else { return }
        
        switch exampleAction {
        case let .downloadWebpage(url):
            next(ExampleResult.downloadingWebpage)
            repo.downloadWebPageAtURL(url: url) { (html, error) in
                next(ExampleResult.downloadedWebpage(html: html, error: error))
            }
        }
    }
    
}
