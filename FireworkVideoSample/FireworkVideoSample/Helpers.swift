//
//  Helpers.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

final class TargetAction {
    typealias Handler = () -> ()
    
    let handler: Handler
    
    init(_ handler: @escaping Handler) {
        self.handler = handler
    }
    
    @objc func performAction() {
        self.handler()
    }
}

final class SenderSuppliedTargetAction {
    typealias Handler = (AnyObject) -> ()
    
    let handler: Handler
    
    init(_ handler: @escaping Handler) {
        self.handler = handler
    }
    @objc func performAction(_ sender: AnyObject) {
        self.handler(sender)
    }
}

extension UILabel {
    static func standardLabel(text: String,
                              font: UIFont = UIFont.preferredFont(forTextStyle: .callout),
                              textAlignment: NSTextAlignment = .center) -> UILabel {
        let label = UILabel()
        label.font = font
        label.textAlignment = textAlignment
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
