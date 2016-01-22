//
//  DoughInterfaceController.swift
//  PizzaOrder
//
//  Created by Mando on 1/21/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import WatchKit
import Foundation


class DoughInterfaceController: WKInterfaceController {

	@IBOutlet var doughPicker: WKInterfacePicker!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
		var doughPickerItems = [WKPickerItem]()
		for size in DOUGH.values {
			let pickerItem = WKPickerItem()
			pickerItem.title = size.rawValue
			doughPickerItems.append(pickerItem)
		}
		doughPicker.setItems(doughPickerItems)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

	@IBAction func doughPickerChange(value: Int) {
		pizzaOrder.dough = DOUGH.values[value]
	}
}
