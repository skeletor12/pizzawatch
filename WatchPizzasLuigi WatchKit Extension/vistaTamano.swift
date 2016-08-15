//
//  vistaTamano.swift
//  WatchPizzasLuigi
//
//  Created by Luis Rodriguez on 22/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation


class vistaTamano: WKInterfaceController {
    
    
    @IBOutlet var bchica: WKInterfaceButton!
    @IBOutlet var bmediana: WKInterfaceButton!
    @IBOutlet var bgrande: WKInterfaceButton!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    
   
    @IBAction func bachica() {
        let tamanot = enviotamano(t:"CHICA", m:"MASA", q:"QUESO", i:[])
        pushControllerWithName("iMasa", context: tamanot)
    }
    
    
    @IBAction func bamediana() {
        let tamanot = enviotamano(t:"MEDIANA", m:"MASA", q:"QUESO", i:[])
        pushControllerWithName("iMasa", context: tamanot)
    }
    
    
    @IBAction func BAGRANDE() {
        let tamanot = enviotamano(t:"GRANDE", m:"MASA", q:"QUESO", i:[])
        pushControllerWithName("iMasa", context: tamanot)
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
