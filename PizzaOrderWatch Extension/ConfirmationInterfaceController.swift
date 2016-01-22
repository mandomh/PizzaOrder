//
//  ConfirmationInterfaceController.swift
//  PizzaOrder
//
//  Created by Mando on 1/22/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmationInterfaceController: WKInterfaceController {

	@IBOutlet var sizeLabel: WKInterfaceLabel!
	@IBOutlet var doughLabel: WKInterfaceLabel!
	@IBOutlet var cheeseLabel: WKInterfaceLabel!
	@IBOutlet var ingredientsTable: WKInterfaceTable!
	@IBOutlet var confirmButton: WKInterfaceButton!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
		sizeLabel.setText(pizzaOrder.size.rawValue)
		doughLabel.setText(pizzaOrder.dough.rawValue)
		cheeseLabel.setText(pizzaOrder.cheese.rawValue)
		if (pizzaOrder.ingredients.count == 0) {
			confirmButton.setEnabled(false)
		} else {
			confirmButton.setEnabled(true)
		}
		ingredientsTable.setNumberOfRows(pizzaOrder.ingredients.count, withRowType: "confirmationIngredientRow")
		for (i, ingredient) in pizzaOrder.ingredients.enumerate() {
			let row = ingredientsTable.rowControllerAtIndex(i) as! IngredientConfirmationRow
			row.ingredientLabel.setText(ingredient.rawValue)
		}
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
	
	@IBAction func confirmButtonClick() {
	}
}

class IngredientConfirmationRow: NSObject {
	
	@IBOutlet var ingredientLabel: WKInterfaceLabel!
	
	override init() {
		
	}
}
