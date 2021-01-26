//
//  ColorPickers.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import ChromaColorPicker

@available(iOS 14.0, *)
class ColorPickerDelegate: NSObject {
    static let shared: ColorPickerDelegate = ColorPickerDelegate()
    
    var colorPicker: UIColorPickerViewController
    var colorChangedHandler: ColorChangeHandler?
    
    override init() {
        self.colorPicker = UIColorPickerViewController()
        super.init()
        self.colorPicker.delegate = self
        self.colorPicker.view.backgroundColor = UIColor.secondarySystemBackground
    }
}

@available(iOS 14.0, *)
extension ColorPickerDelegate: UIColorPickerViewControllerDelegate {
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        self.colorChangedHandler?(viewController.selectedColor)
    }
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        self.colorChangedHandler?(viewController.selectedColor)
    }
}

typealias ColorChangeHandler = (UIColor) -> ()

class ChromaColorPickerHolder: UIViewController {
    static let shared: ChromaColorPickerHolder = ChromaColorPickerHolder()
    
    var colorChangedHandler: ColorChangeHandler?
    var colorSelectionFinishedHandler: ColorChangeHandler?
    
    var colorPicker: ChromaColorPicker
    var brightnessSlider: ChromaBrightnessSlider
    
    override init(nibName nibNameOrNil: String?,
                  bundle nibBundleOrNil: Bundle?) {
        self.colorPicker = ChromaColorPicker()
        self.brightnessSlider = ChromaBrightnessSlider()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.colorPicker.delegate = self
        self.colorPicker.connect(self.brightnessSlider)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.secondarySystemBackground
        
        self.colorPicker.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.colorPicker)
        self.colorPicker.leadingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.leadingAnchor,
                                                  constant: 8.0).isActive = true
        self.colorPicker.trailingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.trailingAnchor,
                                                   constant: -8.0).isActive = true
        self.colorPicker.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                              constant: 20.0).isActive = true
        self.colorPicker.heightAnchor.constraint(equalTo: self.view.widthAnchor,
                                                 constant: -16.0).isActive = true
        
        self.brightnessSlider.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.brightnessSlider)
        self.brightnessSlider.leadingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.leadingAnchor,
                                                  constant: 8.0).isActive = true
        self.brightnessSlider.trailingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.trailingAnchor,
                                                   constant: -8.0).isActive = true
        self.brightnessSlider.widthAnchor.constraint(equalTo: self.colorPicker.widthAnchor).isActive = true
        self.brightnessSlider.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        self.brightnessSlider.topAnchor.constraint(equalTo: self.colorPicker.bottomAnchor,
                                              constant: 20.0).isActive = true
    }
}

extension ChromaColorPickerHolder: ChromaColorPickerDelegate {
    func colorPickerHandleDidChange(_ colorPicker: ChromaColorPicker,
                                    handle: ChromaColorHandle,
                                    to color: UIColor) {
        self.colorChangedHandler?(color)
    }
}

func compatibleColorPicker(initialColor: UIColor,
                           colorChangedHandler: @escaping ColorChangeHandler) -> UIViewController {
    if #available(iOS 14.0, *) {
        ColorPickerDelegate.shared.colorChangedHandler = colorChangedHandler
        let viewController = ColorPickerDelegate.shared.colorPicker
        viewController.selectedColor = initialColor
        return viewController
    } else {
        let viewController = ChromaColorPickerHolder()
        viewController.colorPicker.addHandle(at: initialColor)
        viewController.colorChangedHandler = colorChangedHandler
        return viewController
    }
}

//func colorPickerTargetAction(handler: TargetAction.Handler) -> TargetAction {
//    return 
//}

