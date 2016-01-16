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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        ingredientsMultipleSelection.updateSwitches()
    }
}
