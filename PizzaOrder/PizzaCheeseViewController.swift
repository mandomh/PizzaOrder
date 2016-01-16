//
//  PizzaCheeseViewController.swift
//  PizzaOrder
//
//  Created by Mando on 1/16/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import UIKit

class PizzaCheeseViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var cheeseType: UIPickerView!
    
    let pickerDatasource = CHEESE.values
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cheeseType.delegate = self
        cheeseType.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UIViewDelegate
    
    override func viewWillAppear(animated: Bool) {
        let index = pickerDatasource.indexOf(pizzaOrder.cheese)!
        cheeseType.selectRow(index, inComponent: 0, animated: false)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDatasource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDatasource[row].rawValue
    }

    // MARK: UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pizzaOrder.cheese = CHEESE.values[row]
    }
}
