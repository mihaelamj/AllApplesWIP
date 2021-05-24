//
//  AppDelegate.swift
//  AllApplesWIP
//
//  Created by Mihaela Mihaljevic Jakic on 24.05.2021..
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
  private var window: NSWindow?
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    window = AppSceneDelegate.makeWindow_Mac(theVC: CommonViewController())
  }
}


