//
//  IF_vc1.swift
//  Practice.class
//
//  Created by Wei Huang on 2023/4/23.
//

import UIKit

class IF_vc1: UIViewController {
    
    @IBOutlet weak var SegueCtrl_vc1: UISegmentedControl!
    @IBOutlet weak var Image_vc1: UIImageView!
    @IBOutlet weak var Slider_vc1: UISlider!
    @IBOutlet weak var Stepper_vc1: UIStepper!
    @IBOutlet weak var Label_vc1: UILabel!
    
    
    let name0 = "Lisa"
    let name1 = "Bart"
    let name2 = "Homer"
    let name3 = "Marge"
    let name4 = "Maggie"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Image_vc1.image = UIImage(named: "Sim1")
        
        SegueCtrl_vc1.setTitle(name0, forSegmentAt: 0)
        SegueCtrl_vc1.setTitle(name1, forSegmentAt: 1)
        SegueCtrl_vc1.setTitle(name2, forSegmentAt: 2)
        SegueCtrl_vc1.setTitle(name3, forSegmentAt: 3)
        SegueCtrl_vc1.setTitle(name4, forSegmentAt: 4)
        
        
        
        
    }
    
    @IBAction func segCtrl_ValueChange(_ sender: UISegmentedControl) {
        let i = SegueCtrl_vc1.selectedSegmentIndex
        
        if i == 0{
            Image_vc1.image = (UIImage(named: "Sim1"))
        } else if i == 1{
            Image_vc1.image = (UIImage(named: "Sim2"))
        } else if i == 2{
            Image_vc1.image = (UIImage(named: "Sim3"))
        } else if i == 3{
            Image_vc1.image = (UIImage(named: "Sim4"))
        } else if i == 4{
            Image_vc1.image = (UIImage(named: "Sim5"))
        }
    }
    
    
    @IBAction func ValueChange_Slider(_ sender: UISlider) {
        Image_vc1.frame.size.width = CGFloat(sender.value)
        Stepper_vc1.value = Double(sender.value)
        let i = sender.value/100
        let mag = String(format: "%.2f", i)
        self.Label_vc1.text = "倍率： Ｘ\(mag)"
        
    }
    
    @IBAction func ValueChange_Stepper(_ sender: UIStepper) {
        Image_vc1.frame.size.width = CGFloat(sender.value)
        Slider_vc1.value = Float(sender.value)
        let i = sender.value/100
        let mag = String(format: "%.2f", i)
        self.Label_vc1.text = "倍率： Ｘ\(mag)"
    }
    
    
    
}
