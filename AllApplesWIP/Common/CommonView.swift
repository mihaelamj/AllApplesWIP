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
    super.customInit()
    myColor = AColor.systemPink
  }
  
}

// MARK: -
// MARK: Gesture Events -

public extension CommonView {
  
  override func rotationChanged(degrees: Float) {
    debugPrint("Rotation- degrees: \(degrees)")
  }
  
  override func rotationChanged(radians: Float) {
    debugPrint("Rotation- radians: \(radians)")
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

