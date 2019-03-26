//
//  ViewController.swift
//  Project-4-Easy-Browser
//
//  Created by Raul Sulaimanov on 26.03.19.
//  Copyright © 2019 Raul Sulaimanov. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://github.com/RaulSul/swiftExercises")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }


}

