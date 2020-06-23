//
//  LPAAlertItems.swift
//  lpaandco
//
//  Created by MyLuckyDay on 02.05.2020.
//  Copyright © 2020 My Lucky Day. All rights reserved.
//

import UIKit

struct LPAAlertItems {
    let title: String?
    let image: UIImage?
    let messageTitle: String?
    let messageSubtitle: String?
    let messageSubtitle2: String?
    let primaryButtonTitle: String?
    let secondaryButtonTitle: String?
    
    init(title: String? = nil, image: UIImage? = nil, messageTitle: String? = nil, messageSubtitle: String? = nil,
         messageSubtitle2: String? = nil, primaryButtonTitle: String? = nil, secondaryButtonTitle: String? = nil) {
        self.title = title
        self.image = image
        self.messageTitle = messageTitle
        self.messageSubtitle = messageSubtitle
        self.messageSubtitle2 = messageSubtitle2
        self.primaryButtonTitle = primaryButtonTitle
        self.secondaryButtonTitle = secondaryButtonTitle
    }
}
