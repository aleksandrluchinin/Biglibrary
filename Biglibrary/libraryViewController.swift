//
//  libraryViewController.swift
//  Biglibrary
//
//  Created by Aleksandr Luchinin on 25.10.2022.
//

import UIKit
import WebKit

final class libraryViewController: UIViewController, WKUIDelegate {
    
    private var webView: WKWebView!
    
    @IBOutlet weak var goHomeItem: UIBarButtonItem!
    @IBOutlet weak var goBackItem: UIBarButtonItem!
    @IBOutlet weak var goForwardItem: UIBarButtonItem!
    @IBOutlet weak var goRefreshItem: UIBarButtonItem!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://go.mail.ru")
        let myRequest = URLRequest(url: myURL!)
        
    }
    
    // MARK: - Action
    
    @IBAction func goHomeAction(_ sender: Any) {
        if webView.canGoBack {
            webView.url
            
        }
    }
    @IBAction func goBackAtion(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @IBAction func goForwardAction(_ sender: Any) {
        if webView.canGoForward {
            webView.goForward()
        }
    }
    @IBAction func refreshAction(_ sender: Any) {
        webView.reload()
        
    }
    
}
