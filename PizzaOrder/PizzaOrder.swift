//
//  PizzaOrder.swift
//  PizzaOrder
//
//  Created by Mando on 1/16/16.
//  Copyright © 2016 Armando Muñoz Hernández. All rights reserved.
//

import Foundation

class PizzaOrder {
    
    var size: SIZE = .small
    var dough: DOUGH = .thin
    var cheese: CHEESE = .no_cheese
    var ingredients = [INGREDIENT]()
}

enum SIZE: String {
    case small = "Chica", medium = "Mediana", big = "Grande"
    static let values: [SIZE] = [small, medium, big]
}

enum DOUGH: String {
    case thin = "Delgada", crispy = "Crujiente", thick = "Gruesa"
    static let values = [thin, crispy, thick]
}

enum CHEESE: String {
    case no_cheese = "Sin queso", mozzarela = "Mozzarela", cheddar = "Cheddar", parmesano = "Parmesano"
    static let values = [no_cheese, mozzarela, cheddar, parmesano]
}

enum INGREDIENT: String {
    case ham = "Jamón", pepperoni = "Pepperoni", turkey = "Pavo", sausage = "Salchicha", olives = "Aceitunes", onion = "Cebolla", sweet_pepper = "Pimiento", pineapple = "Piña", anchovies = "Anchoas"
    static let values = [ham, pepperoni, turkey, sausage, olives, onion, sweet_pepper, pineapple, anchovies]
}

let pizzaOrder = PizzaOrder()