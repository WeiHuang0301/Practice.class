//
//  IF_vc2.swift
//  Practice.class
//
//  Created by Wei Huang on 2023/4/23.
//

import UIKit

class IF_vc2: UIViewController {

    @IBOutlet weak var ImageView_vc2: UIImageView!
    @IBOutlet weak var PageCtrl: UIPageControl!
    var Image = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...5{
            Image.append(UIImage(named: "Sim\(i)")!)
        }
        
        ImageView_vc2.animationImages = Image
        ImageView_vc2.animationDuration = 10.0
        ImageView_vc2.startAnimating()
        
        
        
        
    }
    
    

}
