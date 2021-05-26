//
//  CommonView.swift
//  AllApplesWIP
//
//  Created by Mihaela Mihaljevic Jakic on 24.05.2021..
//

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif

public class CommonView: AGestureRecognizerView {
  
  // MARK: -
  // MARK: Template Overrides -
  
  override public func customInit() {
    // call super to setup `AGestureRecognizerView` gestures
    super.customInit()
    forcedLayer.borderWidth = 20.0
    forcedLayer.borderColor = AColor.systemGray.cgColor
    forcedLayer.cornerRadius = 20.0
    let rr = readableRect()
  }
  
  #if os(OSX)
  
  // MARK: -
  // MARK: Framework Overrides -
  
  public override func updateLayer() {
    forcedLayer.backgroundColor = AColor.randomColor().cgColor
  }
  #endif
}

// MARK: -
// MARK: Gesture Events -

public extension CommonView {
  
  override func rotationChanged(degrees: Float, radians: Float)  {
    debugPrint("Rotation: degrees: \(degrees), radians: \(radians)")
  }
  
  override func displacementChanged(displacement: CGPoint) {
    debugPrint("Moved to: \(displacement)")
  }
  
  override func scaleChanged(scale: CGFloat) {
    debugPrint("Scaled: \(scale)")
  }
  
  override func tapHappened() {
    debugPrint("Tapped: \(isOn)")
  }
  
}

// INFO: Example of usage -
#if os(OSX)
class ColorView: AView {
  override var wantsUpdateLayer : Bool {
    get { return true }
  }
  
  override func updateLayer() {
    self.layer?.backgroundColor = NSColor.systemRed.cgColor
  }
}
#endif

