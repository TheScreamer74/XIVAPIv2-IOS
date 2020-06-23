// 
//  lpaandco
//
//  Created by MyLuckyDay on 4/3/20.
//  Copyright © 2020 MyLuckyDay. All rights reserved.
//

import UIKit

enum MoreCellData {
    
    case profile(icon: UIImage, title: String)
    case divider
    case app(title: String)
    case logout
    
}

class MoreCellProfileItem: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    func bind(iconImage: UIImage, titleText: String) {
        icon.image = iconImage
        title.text = titleText
    }
}

class MoreCellAppItem: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    func bind(titleText: String) {
        title.text = titleText
    }
}

class MoreDashboardViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var cellItems: [MoreCellData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
    }
    
    override func render(_ state: AppState) {
        
        // TODO: move this to repository and implement connected / not connected logic
        
        cellItems = [
            MoreCellData.profile(icon: UIImage(named: "ic_more_profile")!, title: String.More.menuProfileTitle),
            MoreCellData.profile(icon: UIImage(named: "ic_more_vehicles")!, title: String.More.menuVehiclesTitle),
            MoreCellData.profile(icon: UIImage(named: "ic_more_payment")!, title: String.More.menuPaymentTitle),
            MoreCellData.profile(icon: UIImage(named: "ic_more_orders")!, title: String.More.menuOrdersTitle),
            MoreCellData.profile(icon: UIImage(named: "ic_more_settings")!, title: String.More.menuSettingsTitle),
            MoreCellData.profile(icon: UIImage(named: "ic_more_help")!, title: String.More.menuHelpTitle),
            MoreCellData.divider,
            MoreCellData.app(title: String.More.menuFaqTitle),
            MoreCellData.app(title: String.More.menuSubscriptionInfoTitle),
            MoreCellData.app(title: String.More.menuReservationInfoTitle),
            MoreCellData.app(title: String.More.menuCgvTitle),
            MoreCellData.logout
        ]
        tableView.reloadData()
    }

}

extension MoreDashboardViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = cellItems[indexPath.row]
        
        var cell: UITableViewCell!
        
        switch item {
        case let .profile(icon, title):
            cell = loadProfileCell(indexPath, icon, title: title)
        case .divider:
            cell = tableView.dequeueReusableCell(withIdentifier: "MoreCellDividerItem", for: indexPath)
        case let .app(title):
            cell = loadAppCell(indexPath, title)
        case .logout:
            cell = tableView.dequeueReusableCell(withIdentifier: "MoreCellLogoutItem", for: indexPath)
        }
        
        cell.backgroundColor = AppDelegate.shared.theme.colorSecondary
        return cell
    }
    
    private func loadProfileCell(_ indexPath: IndexPath, _ image: UIImage, title: String) -> UITableViewCell {
        let cell: MoreCellProfileItem = tableView.dequeueTypedCell(withIdentifier: "MoreCellProfileItem", for: indexPath)
        cell.bind(iconImage: image, titleText: title)
        return cell
    }
    
    private func loadAppCell(_ indexPath: IndexPath, _ title: String) -> UITableViewCell {
        let cell: MoreCellAppItem = tableView.dequeueTypedCell(withIdentifier: "MoreCellAppItem", for: indexPath)
        cell.bind(titleText: title)
        return cell
    }
    
}

private extension UITableView {
    
    func dequeueTypedCell<T>(withIdentifier: String, for indexPath: IndexPath) -> T {
        guard let cast = dequeueReusableCell(withIdentifier: withIdentifier, for: indexPath) as? T else {
            fatalError("Tried to dequeue cell of a type that doesn't exist!")
        }
        return cast
    }
    
}
