// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/18/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

enum ExampleResult: ResultType {
    
    case downloadingWebpage
    case downloadedWebpage(html: String?, error: Error?)
    
}
