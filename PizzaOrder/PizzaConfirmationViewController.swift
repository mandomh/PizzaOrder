//
//  PizzaConfirmationViewController.swift
//  PizzaOrder
//
//  Created by Mando on 1/16/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import UIKit

class PizzaConfirmationViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var confirmLabel: UILabel!
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(animated: Bool) {
        var text = String("Tu orden es la siguiente:\n");
        text += "\nTamaño: \(pizzaOrder.size.rawValue)"
        text += "\nTipo de masa: \(pizzaOrder.dough.rawValue)"
        text += "\nQueso: \(pizzaOrder.cheese.rawValue)"
        if (pizzaOrder.ingredients.count > 0) {
            text += "\nIngredientes:"
            for ingredient in pizzaOrder.ingredients {
                text += "\n\t-\(ingredient.rawValue)"
            }
        } else {
            text += "\n(Sin ingredientes adicionales)"
        }
        textView.text = text;
    }
    
    @IBAction func confirmButtonClick(sender: UIButton) {
        confirmLabel.text = "¡Orden confirmada!"
    }
}
