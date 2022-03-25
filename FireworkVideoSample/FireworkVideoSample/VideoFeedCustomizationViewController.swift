//
//  ProgrammaticCustomizationViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

/// Example of a customization panel that can be used
/// to modify the apperance of the video feed at runtime
class VideoFeedCustomizationViewController: UIViewController {
    
    var embeddedVideoFeedViewController: VideoFeedViewController!
    
    /// This wraps get and set calls to the viewConfiguration property
    /// of the embedded view controller
    var videoFeedContentConfiguration: VideoFeedContentConfiguration! {
        get {
            return self.embeddedVideoFeedViewController.viewConfiguration
        }
        set(newValue) {
            self.embeddedVideoFeedViewController.viewConfiguration = newValue
        }
    }
    
    /// Controls that change apperance, along with helpers
    var colorAttributesSegmentedControl: UISegmentedControl!
    var playerStyleSegmentedControl: UISegmentedControl!
    var selectedColorPreview: UIView!
    var customizationControlsStackView: UIStackView!
    
    var selectedColor: UIColor = .lightGray
    var targetActions: [TargetAction] = []
    var senderSuppliedTargetActions: [SenderSuppliedTargetAction] = []
    var selectedPlayerStyle: VideoPlayerContentConfiguration.VideoPlayerStyle = .fit
    
    /// The video feed view controller is embedded when view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.secondarySystemBackground
        
        self.embeddedVideoFeedViewController = VideoFeedLayoutTypes.horizontalViewController
        self.setupVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController,
                            topSpacing: 20.0,
                            fullHeight: false)
        self.setupCustomizationControls()
    }
    
    private func setupColorAttributesSegmentedControl() -> UISegmentedControl {
        let colorSegmentedControl = UISegmentedControl()
        colorSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        colorSegmentedControl.insertSegment(withTitle: "Background Color",
                                                 at: 0,
                                                 animated: false)
        colorSegmentedControl.insertSegment(withTitle: "Video Title Text Color",
                                                 at: 1,
                                                 animated: false)
        return colorSegmentedControl
    }
    
    private func setupPlayerStyleSegmentedControl() -> UISegmentedControl {
        let segmentedControl = UISegmentedControl()
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.insertSegment(withTitle: "Fit Style",
                                       at: 0,
                                       animated: false)
        segmentedControl.insertSegment(withTitle: "Full Bleed Style",
                                       at: 1,
                                       animated: false)
        return segmentedControl
    }
    
    private func setupSelectedColorPreview() -> UIView {
        let selectedColorPreview = UIView()
        selectedColorPreview.translatesAutoresizingMaskIntoConstraints = false
        selectedColorPreview.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        selectedColorPreview.layer.cornerRadius = 10.0
        return selectedColorPreview
    }
    
    private func setupPickDifferentColorButton() -> UIButton {
        let pickDifferentColorButton = UIButton()
        pickDifferentColorButton.setTitle("Pick Different Color", for: .normal)
        pickDifferentColorButton.setTitleColor(.systemBlue, for: .normal)
        pickDifferentColorButton.setTitleColor(UIColor.systemBlue.withAlphaComponent(0.75), for: .highlighted)
        return pickDifferentColorButton
    }
    
    private func setupFontSizePickingSlider() -> UISlider {
        let fontSizePickingSlider = UISlider()
        fontSizePickingSlider.translatesAutoresizingMaskIntoConstraints = false
        fontSizePickingSlider.minimumValue = 6.0
        fontSizePickingSlider.maximumValue = 24.0
        return fontSizePickingSlider
    }
    
    private func setupCustomizationControls() {
        let colorSegmentExplanation = UILabel.standardLabel(text: NSLocalizedString("Pick a Color Attribute to Change",
                                                                                    comment: ""))
        self.colorAttributesSegmentedControl = self.setupColorAttributesSegmentedControl()
        self.colorAttributesSegmentedControl.selectedSegmentIndex = 0
        let colorSegmentTargetAction = SenderSuppliedTargetAction { (sender) in
            if let segmentedControl = sender as? UISegmentedControl {
                self.updateSelected(segmentIndex: segmentedControl.selectedSegmentIndex)
            }
        }
        self.senderSuppliedTargetActions.append(colorSegmentTargetAction)
        
        self.colorAttributesSegmentedControl.addTarget(colorSegmentTargetAction,
                                             action: #selector(SenderSuppliedTargetAction.performAction(_:)),
                                             for: .valueChanged)
        
        let colorSelectionLabel = UILabel.standardLabel(text: NSLocalizedString("Current Color Selected",
                                                                                comment: ""))
        self.selectedColorPreview = self.setupSelectedColorPreview()
        selectedColorPreview.backgroundColor = self.selectedColor
        
        
        let targetAction = TargetAction {
            let viewController = compatibleColorPicker(initialColor: self.selectedColor) { (color) in
                self.selectedColor = color
                self.updateSelectedColor()
            }
            self.navigationController?.pushViewController(viewController,
                                                          animated: true)
        }
        self.targetActions.append(targetAction)
        let pickDifferentColorButton = self.setupPickDifferentColorButton()
        pickDifferentColorButton.addTarget(targetAction,
                                           action: #selector(TargetAction.performAction),
                                           for: .touchUpInside)
        
        let fontSizeSlider = self.setupFontSizePickingSlider()
        fontSizeSlider.value = Float(self.videoFeedContentConfiguration.itemView.title.font.pointSize)
        let sliderTargetAction = SenderSuppliedTargetAction { sender in
            if let s = sender as? UISlider {
                var configuration = self.videoFeedContentConfiguration!
                configuration.itemView.title.font = UIFont.preferredFont(forTextStyle: .body).withSize(CGFloat(s.value))
                self.videoFeedContentConfiguration = configuration
            }
        }
        self.senderSuppliedTargetActions.append(sliderTargetAction)
        fontSizeSlider.addTarget(sliderTargetAction,
                                 action: #selector(SenderSuppliedTargetAction.performAction(_:)),
                                 for: .valueChanged)
                                 
        self.playerStyleSegmentedControl = self.setupPlayerStyleSegmentedControl()
        
        let playerStyleSegmentTargetAction = SenderSuppliedTargetAction { (sender) in
            if let segmentedControl = sender as? UISegmentedControl {
                self.updateSelectedPlayerStyle(segmentIndex: segmentedControl.selectedSegmentIndex)
            }
        }
        self.senderSuppliedTargetActions.append(playerStyleSegmentTargetAction)
        self.playerStyleSegmentedControl.addTarget(playerStyleSegmentTargetAction,
                                             action: #selector(SenderSuppliedTargetAction.performAction(_:)),
                                             for: .valueChanged)
        self.playerStyleSegmentedControl.selectedSegmentIndex = 0

        self.customizationControlsStackView = UIStackView(arrangedSubviews: [
            colorSegmentExplanation,
            self.colorAttributesSegmentedControl,
            pickDifferentColorButton,
            colorSelectionLabel,
            selectedColorPreview,
            UILabel.standardLabel(text: NSLocalizedString("Drag Slider to Change Title Font Size",
                                                                                      comment: "")),
            fontSizeSlider,
            UILabel.standardLabel(text: NSLocalizedString("Pick a Player Appearance Style",
                                                                                      comment: "")),
            playerStyleSegmentedControl,
        ])
        
        self.customizationControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        self.customizationControlsStackView.spacing = 10.0
        self.customizationControlsStackView.axis = .vertical
        self.customizationControlsStackView.distribution = .fillProportionally
        
        self.view.addSubview(self.customizationControlsStackView)
        self.customizationControlsStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,
                                                           constant: 8.0).isActive = true
        self.customizationControlsStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,
                                                           constant: -8.0).isActive = true
        self.customizationControlsStackView.topAnchor.constraint(equalTo: self.embeddedVideoFeedViewController.view.bottomAnchor,
                                                       constant: 16.0).isActive = true
    
        self.updateSelectedColor()
    }
    
    /// Handler methods for controls
    func updateSelected(segmentIndex: Int) {
        switch segmentIndex {
        case 0:
            self.selectedColor = self.videoFeedContentConfiguration.backgroundColor!
            self.selectedColorPreview.backgroundColor = self.selectedColor
        case 1:
            self.selectedColor = self.videoFeedContentConfiguration.itemView.title.textColor
            self.selectedColorPreview.backgroundColor = self.selectedColor
        default:
            break
        }
    }
    
    func updateSelectedPlayerStyle(segmentIndex: Int) {
        switch segmentIndex {
            case 0:
                self.selectedPlayerStyle = .fit
                var c = self.embeddedVideoFeedViewController.viewConfiguration
                c.playerView.playerStyle = .fit
                self.embeddedVideoFeedViewController.viewConfiguration = c
            case 1:
                self.selectedPlayerStyle = .fullBleed
                var c = self.embeddedVideoFeedViewController.viewConfiguration
                c.playerView.playerStyle = .fullBleed
                self.embeddedVideoFeedViewController.viewConfiguration = c
            default:
                break
        }
    }
    
    func updateSelectedColor() {
        self.selectedColorPreview.backgroundColor = self.selectedColor
        
        switch self.colorAttributesSegmentedControl.selectedSegmentIndex {
        case 0:
            self.videoFeedContentConfiguration.backgroundColor = self.selectedColor
            break
        case 1:
            var configuration = self.videoFeedContentConfiguration!
            configuration.itemView.title.textColor = self.selectedColor
            self.videoFeedContentConfiguration = configuration
            break
        default:
            break
        }
    }
}
