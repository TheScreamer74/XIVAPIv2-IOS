// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/18/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import Foundation

struct ExampleState: StateType, MemberwiseCopyable {
    
    var downloadingHtml: Bool?
    var downloadedHtml: OneTimeEvent<String>?
    var downloadError: OneTimeEvent<Error>?
    
}
