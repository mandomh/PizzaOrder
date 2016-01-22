//
//  SizeInterfaceController.swift
//  PizzaOrder
//
//  Created by Mando on 1/21/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import WatchKit
import Foundation


class SizeInterfaceController: WKInterfaceController {
	
	@IBOutlet var sizePicker: WKInterfacePicker!
	
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
		var sizePickerItems = [WKPickerItem]()
		for size in SIZE.values {
			let pickerItem = WKPickerItem()
			pickerItem.title = size.rawValue
			sizePickerItems.append(pickerItem)
		}
		sizePicker.setItems(sizePickerItems)
    }
	
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
	
	@IBAction func sizePickerChange(value: Int) {
		pizzaOrder.size = SIZE.values[value]
	}

}
