//
//  ViewController.swift
//  classesCafeNJV
//
//  Created by NICHOLAS VINTARTAS on 3/4/25.
//

import UIKit

class appData {
    static var items = [foodClass]()
}

class ViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var caloriesOutlet: UILabel!
    @IBOutlet weak var priceOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    
    var selection = 0
    
    func refresh() {
        if selection >= appData.items.count {
            selection = 0
        }
        else if selection < 0 {
            selection = appData.items.count - 1
        }
        nameOutlet.text = appData.items[selection].name
        caloriesOutlet.text = String(appData.items[selection].calories)
        priceOutlet.text = String(appData.items[selection].price)
        imageOutlet.image = UIImage(named: appData.items[selection].images)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appData.items.append(foodClass(name: "Burger", price: 5.50, calories: 300, images: "burgerImage"))
        appData.items.append(foodClass(name: "Pizza Slice", price: 2, calories: 400, images: "pizzaSliceImage"))
        appData.items.append(foodClass(name: "Pizza", price: 10, calories: 1200, images: "pizzaImage"))
        appData.items.append(foodClass(name: "Onion Rings", price: 3, calories: 770, images: "onionImage"))
    }
    
    @IBAction func random(_ sender: UIButton) {
        selection = Int.random(in: 0...(appData.items.count - 1))
        refresh()
    }
    
}

