//
//  PV_vc1.swift
//  Practice.class
//
//  Created by Wei Huang on 2023/4/25.
//

import UIKit

class PV_vc1: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let headerArray = ["1", "2"]
    var drinksArray = ["a", "b", "c"]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headerArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerArray[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.backgroundColor = .tertiarySystemBackground
        cell.textLabel?.text = "rrr"
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
            tableView.isEditing = true
        }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    /* 移動 tableView row 後 觸發 */
        func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
            let arr = drinksArray[sourceIndexPath.row]
            drinksArray.remove(at: sourceIndexPath.row)
            drinksArray.insert(arr, at: destinationIndexPath.row)
            
            print(sourceIndexPath.row)
            print(destinationIndexPath.row)
        }
        
        /* 設定 tableView cell 可編輯時的樣式 */
        func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return .none
        }
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }


}

