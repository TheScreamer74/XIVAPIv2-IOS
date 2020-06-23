// 
//  ArchitectureTemplate
//
//  Created by MyLuckyDay on 3/16/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func render(_ state: AppState) {
        
        let serversState = state.serversState
        
        activityIndicator.isHidden = !(serversState.isDownloaded ?? false)
    }
    
    @IBAction
    func clickedTestButton(_ sender: Any?) {
        appController.dispatch(ServersAction.loadData)
    }
}

