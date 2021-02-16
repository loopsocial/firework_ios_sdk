//
//  VideoFeedExamplesViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

class VideoFeedExamplesViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Firework Video Sample App"
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = self.viewController(at: indexPath) {
            self.navigationController?.pushViewController(viewController,
                                                          animated: true)
        }
    }
    
    func viewController(at selectedIndexPath:IndexPath) -> UIViewController? {
        if selectedIndexPath.section == 0 && selectedIndexPath.row == 0 {
            return VideoFeedLayoutsExampleViewController()
        } else if selectedIndexPath.section == 0 && selectedIndexPath.row == 1 {
            /// A grid view controller is configured and returned in this method
            let gridViewController = VideoFeedLayoutTypes.configureGridVideoFeedViewController()
            return gridViewController
        } else if selectedIndexPath.section == 0 && selectedIndexPath.row == 2 {
            return VideoFeedCustomizationViewController()
        } else if selectedIndexPath.section == 0 && selectedIndexPath.row == 3 {
            return TableViewEmbeddedVideoFeedViewController()
        } else if selectedIndexPath.section == 0 && selectedIndexPath.row == 4 {
            return VideoFeedChannelSourceViewController()
        }
        
        return nil
    }
}

