//
//  IngredientsInterfaceController.swift
//  PizzaOrder
//
//  Created by Mando on 1/21/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import WatchKit
import Foundation


class IngredientsInterfaceController: WKInterfaceController {

	@IBOutlet var ingredientsTable: WKInterfaceTable!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
		ingredientsTable.setNumberOfRows(INGREDIENT.values.count, withRowType: "mainRowController")
		for (index, ingredient) in INGREDIENT.values.enumerate() {
			let rowType = ingredientsTable.rowControllerAtIndex(index) as! IngredientRowType
			rowType.ingredientSwitch.setOn(pizzaOrder.ingredients.contains(ingredient))
			rowType.ingredientSwitch.setTitle(ingredient.rawValue)
			rowType.ingredient = ingredient
			rowType.switchState = pizzaOrder.ingredients.contains(ingredient)
			rowType.onSwitchChange = onIngredientSwitchChange
		}
		setSwitchesStatus()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	func onIngredientSwitchChange() {
		setSwitchesStatus()
	}
	
	func setSwitchesStatus() {
		if pizzaOrder.ingredients.count >= 5 {
			for (index, _) in INGREDIENT.values.enumerate() {
				let rowType = ingredientsTable.rowControllerAtIndex(index) as! IngredientRowType
				if !rowType.switchState! {
					rowType.ingredientSwitch.setEnabled(false)
				}
			}
		} else {
			for (index, _) in INGREDIENT.values.enumerate() {
				let rowType = ingredientsTable.rowControllerAtIndex(index) as! IngredientRowType
				rowType.ingredientSwitch.setEnabled(true)
			}
		}
	}
}
