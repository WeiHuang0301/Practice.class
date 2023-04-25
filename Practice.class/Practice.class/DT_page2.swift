//
//  DT-page2.swift
//  Practice.class
//
//  Created by Wei Huang on 2023/4/23.
//

import UIKit

class DT_page2: UIViewController {

    
    @IBOutlet weak var TextPg2: UITextField!
    @IBOutlet weak var BtnPg2: UIButton!
    @IBOutlet weak var LabelPg2: UILabel!
    
    // A common msg contener
    var msg :String? = nil
    
    @IBAction func didTapped_BtnPg2(_ sender: UIButton) {
        msg = TextPg2.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let p2Receive = msg {
            LabelPg2.text = msg
            print("p2Receive:\(p2Receive)")
        }
        
    }
    
    
    }


