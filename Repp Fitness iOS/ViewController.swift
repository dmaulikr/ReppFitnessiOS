//
//  ViewController.swift
//  Repp Fitness iOS
//
//  Created by James Ormond on 4/23/16.
//  Copyright (c) 2016 James Ormond. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIWebView!
    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL(string:"https://powerful-ridge-18151.herokuapp.com/") // make a URL
        var req = NSURLRequest(URL:url!) // make a request w/ that URL
        self.webView = WKWebView() // instantiate WKWebView
        self.webView!.loadRequest(req) // unwrap the webView and load the request.
        self.view = self.webView! // make it the main view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

