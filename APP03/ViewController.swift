//
//  ViewController.swift
//  APP03
//
//  Created by Wei Huang on 2023/4/11.
//

import UIKit

// 在Class 記得加上在StoryBoard 為PickerView 拉好的“DataSource” &. “Delegate” 加上 兩個 UIPicker
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let drinksList = ["紅茶", "綠茶", "烏龍茶","奶茶", "美式咖啡","拿鐵"]
    let sizeList = ["500mL","700mL","1000mL"]
    let sugerList = ["More", "Medium", "Less", "A few", "Suger-Free"]
    let icedList = ["Freeze", "Iced", "Ice-Free", "Hot"]
    
    
    // These two default func are coming from the code keywords: "numberOfComponents", "numberOfRowsInComponent" , to initialize the PickerView column amounts (components) and the sections(rows).
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    } // component 成分
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return drinksList.count
        } // "List.count" can let the system automatically count the items in your list and creat the corresponding amount of section in your column.
        else if component == 1 {
            return sizeList.count
        }
        
        return 0
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return drinksList[row]
        }
        
        else if component == 1 {
            return sizeList[row]
        }
        
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("茶水：\(drinksList[row])")
        }
        
        else if component == 1 {
            print("容量：\(sizeList[row])")
        }
    }
    
    
    @IBAction func TimePick(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm"
        
        let theString = formatter.string(from: sender.date)
    print(theString)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }


}

