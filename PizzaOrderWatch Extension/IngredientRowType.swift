//
//  IngredientRowType.swift
//  PizzaOrder
//
//  Created by Mando on 1/21/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import WatchKit

class IngredientRowType: NSObject {

	@IBOutlet weak var ingredientSwitch: WKInterfaceSwitch!
	var ingredient: INGREDIENT? = nil
	var onSwitchChange: (() -> ())? = nil
	var switchState: Bool?
	
	override init() {
		
	}

	@IBAction func ingredientSwitchChange(value: Bool) {
		switchState = value
		if value {
			pizzaOrder.ingredients.append(ingredient!)
		} else {
			if let index = pizzaOrder.ingredients.indexOf(ingredient!) {
				pizzaOrder.ingredients.removeAtIndex(index)
			}
		}
		if (onSwitchChange != nil) {
			onSwitchChange!()
		}
	}
}
