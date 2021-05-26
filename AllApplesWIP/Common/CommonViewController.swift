//
//  CommonViewController.swift
//  AllApplesWIP
//
//  Created by Mihaela Mihaljevic Jakic on 24.05.2021..
//

import Foundation

#if os(iOS) || os(tvOS)
import UIKit
#endif

#if os(OSX)
import Cocoa
#endif


class CommonViewController: AViewController {
  
  // MARK: -
  // MARK: Properties -
  
  private(set) public lazy var myView: CommonView = {
    let v = CommonView()
    return v
  }()
  
  // MARK: -
  // MARK: Life Cycle -
  
  // INFO: Need to create the appropriate `View` type for the OS -
  override func loadView() {
    self.view = self.myView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // INFO: Need to typecast our view to the appropriate `View` type, which will be resolved at compile time
    if let aView = view as? ALayerView {
      
      #if os(iOS) || os(tvOS)
      aView.myColor = AColor.randomColor()
      #endif
      
      #if os(OSX)
      var size = AScreen.supposedSize()
      if size.width > 1000 { size = CGSize(width: 1000, height: 1000) }
      aView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
      #endif
      
    }
    view.debugLayerInfo()
  }

}


