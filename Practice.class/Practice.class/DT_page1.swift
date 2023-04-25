//
//  DT-page1.swift
//  Practice.class
//
//  Created by Wei Huang on 2023/4/23.
//

import UIKit

class DT_page1: UIViewController {
    
    
    @IBOutlet weak var TextPg1: UITextField!
    @IBOutlet weak var BtnPg1: UIButton!
    @IBOutlet weak var LabelPg1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue1to2" {
            let p1Send = segue.destination as! DT_page2
            p1Send.msg = TextPg1.text
            print("1>2 Success")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        if segue.identifier == "segue2to1" {
            let msg2 = segue.source as! DT_page2
            if let p2Send = msg2.msg {
                LabelPg1.text = p2Send
                print("2>1 Success:\(p2Send)")
            }
        }
    }
    
}
