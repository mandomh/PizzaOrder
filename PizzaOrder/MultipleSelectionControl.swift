//
//  MultipleSelectionControl.swift
//  PizzaOrder
//
//  Created by Mando on 1/16/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import UIKit

class MultipleSelectionControl: UIView {

    // MARK: Properties
    
    let initialX = 0
    let initialY = 0
    let switchWidth = 51
    let switchHeight = 31
    let labelWidth = 150
    let labelHeight = 21
    let labelXPositionPlus = 57
    let labelYPositionPlus = 5
    let rowSeparation = 8
    let values = [String]()

    var switches = [UISwitch]()
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        var y = 0
        for ingredient in INGREDIENT.values {
            let switchComponent = UISwitch(frame: CGRect(x: initialX, y: y, width: switchWidth, height: switchHeight))
            let labelComponent = UILabel(frame: CGRect(x: initialX + labelXPositionPlus, y: y + labelYPositionPlus, width: labelWidth, height: labelHeight))
            labelComponent.text = ingredient.rawValue
            switches.append(switchComponent)
            switchComponent.addTarget(self, action: Selector("switchIsChanged:"), forControlEvents: UIControlEvents.ValueChanged)
            addSubview(switchComponent)
            addSubview(labelComponent)
            y += switchHeight + rowSeparation
        }
    }
    
    func switchIsChanged(uiSwitch: UISwitch) {
        let index = switches.indexOf(uiSwitch)!
        let ingredient = INGREDIENT.values[index]
        if (uiSwitch.on) {
            if (!pizzaOrder.ingredients.contains(ingredient)) {
                pizzaOrder.ingredients.append(ingredient)
            }
        } else {
            let i = pizzaOrder.ingredients.indexOf(ingredient)
            if (i != nil) {
                pizzaOrder.ingredients.removeAtIndex(i!)
            }
        }
    }
    
    func updateSwitches() {
        for ingredient in pizzaOrder.ingredients {
            let index = INGREDIENT.values.indexOf(ingredient)!
            switches[index].on = true;
        }
    }
}
