//
//  CheeseInterfaceController.swift
//  PizzaOrder
//
//  Created by Mando on 1/21/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import WatchKit
import Foundation


class CheeseInterfaceController: WKInterfaceController {

	@IBOutlet var cheesePicker: WKInterfacePicker!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
		var cheesePickerItems = [WKPickerItem]()
		for size in CHEESE.values {
			let pickerItem = WKPickerItem()
			pickerItem.title = size.rawValue
			cheesePickerItems.append(pickerItem)
		}
		cheesePicker.setItems(cheesePickerItems)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func cheesePickerChange(value: Int) {
		pizzaOrder.cheese = CHEESE.values[value]
	}
}
