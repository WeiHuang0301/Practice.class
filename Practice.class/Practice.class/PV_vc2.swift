//
//  PV-vc1.swift
//  Practice.class
//
//  Created by Wei Huang on 2023/4/24.
//

import UIKit

class PV_vc2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let drinkArray = ["Black Tea", "Green Tea", "Black Tea-Late"]
    let sugerArray = ["sFree", "aFew", "Half", "More"]
    
    
    
    
    
    // Components 零件、成分（數量）
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        4
    }
    
    // Rows 行數
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        "Drinks"
    }
    
    
    
    @IBOutlet weak var pickerDrink: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerDrink.delegate = self
        pickerDrink.dataSource = self
        
    }

    

}
