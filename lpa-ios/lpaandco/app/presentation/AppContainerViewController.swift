// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/6/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

class AppContainerViewController: BaseViewController {
    
    @IBOutlet weak var fobButton: UIImageView!
    
    override func render(_ state: AppState) {
        
        fobButton.isHidden = !(state.parkingState.canOpenGate == true)
    }
    
    @IBAction func tappedFob(_ sender: Any) {
        debugPrint("OPEN GATE")
    }
}
