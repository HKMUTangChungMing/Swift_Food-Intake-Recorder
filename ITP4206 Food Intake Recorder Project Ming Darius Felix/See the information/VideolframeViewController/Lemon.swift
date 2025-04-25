//
//  Lemon.swift
//  See the information / VideolframeViewController
//
//  IT114118-2A
//  ITP4206 - Proprietary Mobile Application Development Project Guide
//  Created by 210056555 Tang Chung Ming
//  Created by 210069121 Shek Wai Kit
//  Created by 210397362 Cheng Man Hei
//

import UIKit
import WebKit

class Lemon: UIViewController {
    
   
    
    @IBOutlet weak var webView: WKWebView!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: "https://www.youtube.com/embed/RlTAYUWNTR8"){
            let urlRequest = URLRequest(url: url)
            self.webView.load(urlRequest)
        }
        
        
    
    }


}
