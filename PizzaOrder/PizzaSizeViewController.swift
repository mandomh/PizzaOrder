//
//  ViewController.swift
//  PizzaOrder
//
//  Created by Mando on 1/15/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import UIKit

class PizzaSizeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pizzaSizePicker: UIPickerView!
    
    let pickerDatasource = SIZE.values
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pizzaSizePicker.dataSource = self
        pizzaSizePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let index = pickerDatasource.indexOf(pizzaOrder.size)!
        pizzaSizePicker.selectRow(index, inComponent: 0, animated: false)
    }
    
    // MARK: UIViewDelegate
    
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
        pizzaOrder.size = SIZE.values[row]
    }
}

