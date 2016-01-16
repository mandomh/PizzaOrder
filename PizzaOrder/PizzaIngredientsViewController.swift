//
//  PizzaIngredientsViewController.swift
//  PizzaOrder
//
//  Created by Mando on 1/16/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import UIKit

class PizzaIngredientsViewController: UIViewController {

    @IBOutlet weak var ingredientsMultipleSelection: MultipleSelectionControl!
    @IBOutlet weak var confirmationButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientsMultipleSelection.onSwitchChange = self.onSwitchChange
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        ingredientsMultipleSelection.updateSwitches()
        confirmationButton.enabled = pizzaOrder.ingredients.count > 0
        
    }
    
    func onSwitchChange(noSelected: Int) {
        if (noSelected > 0) {
            confirmationButton.enabled = true
        } else {
            confirmationButton.enabled = false
        }
    }
}
