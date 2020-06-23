// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/3/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

class MapViewController: BaseViewController {
    
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func render(_ state: AppState) {
        
        let buttonTitle = appController.state.value?.parkingState.canOpenGate == true ? "HIDE" : "SHOW"
        testButton.setTitle(buttonTitle, for: .normal)
        
    }
    
    @IBAction func testButtonClicked(_ sender: Any) {
        let canOpen = appController.state.value?.parkingState.canOpenGate ?? false
        appController.dispatch(ParkingAction.testSetCanOpenGate(canOpen: !canOpen))
    }
    
}
