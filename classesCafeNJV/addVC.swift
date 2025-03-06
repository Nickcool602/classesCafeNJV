//
//  addVC.swift
//  classesCafeNJV
//
//  Created by NICHOLAS VINTARTAS on 3/6/25.
//

import UIKit

class addVC: UIViewController {

    func clear() {
        nameField.text = ""
        priceField.text = ""
        caloriesField.text = ""
    }
    
    let warningAlert = UIAlertController(title: "Warning", message: "Item already added", preferredStyle: .alert)
    
    let okAction = UIAlertAction(title: "Ok", style: .default)
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var priceField: UITextField!
    
    @IBOutlet weak var caloriesField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        appData.items.append(foodClass(name: nameField.text ?? "Empty Name Field", price: Double(priceField.text ?? String(0.0)) ?? 0.0, calories: Int(caloriesField.text ?? String(0)) ?? 0, images: "placeholder"))
        clear()
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        clear()
    }
    
}
