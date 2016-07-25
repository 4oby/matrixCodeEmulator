//
//  ViewController.swift
//  matrixSaver
//
//  Created by 4oby on 7/25/16.
//  Copyright © 2016 cvv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var webView: UIWebView!

}

extension ViewController {

  override func viewDidLoad() {
      showTheDammPage()
    UIApplication.sharedApplication().idleTimerDisabled = true
  }

  
  func showTheDammPage() -> Void {
    let htmlFile = NSBundle.mainBundle().pathForResource("index", ofType: "html")
    do {
    let htmlString = try NSString(contentsOfFile: htmlFile!, encoding: NSUTF16StringEncoding)
    webView.loadHTMLString(String(htmlString), baseURL: NSBundle.mainBundle().bundleURL)
    } catch {
    
    }
  }
}