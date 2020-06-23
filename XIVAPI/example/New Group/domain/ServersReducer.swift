// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/18/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

class ExampleReducer: ReducerType {
    
    typealias State = ExampleState
    
    func reduce(result: ResultType, state: ExampleState) -> ExampleState {
        
        guard let exampleResult = result as? ExampleResult else { return state }
        
        switch exampleResult {
            
        case .downloadingWebpage:
            return state.copy(downloadingHtml: true)
            
        case let .downloadedWebpage(html, error):
            
            let gotHtml = (html == nil) ? nil : OneTimeEvent(html!)
            let gotError = (error == nil) ? nil : OneTimeEvent(error!)
            
            return state.copy(
                downloadingHtml: false,
                downloadedHtml: gotHtml,
                downloadError: gotError
            )
        }
    }
}
