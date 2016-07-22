//
//  vistaIngrediente.swift
//  WatchPizzasLuigi
//
//  Created by Luis Rodriguez on 22/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngrediente: WKInterfaceController {
    
    var tamres = ""
    var masres = ""
    var queres = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let tp = context as! enviotamano
        tamres = (String(tp.tamanot))
        masres = (String(tp.masat))
        queres = (String(tp.quesot))
        
        // Configure interface objects here.
    }
    
    
    @IBAction func bajamon() {
        let tamanot = enviotamano(t:tamres, m:masres, q:queres, i:"JAMÓN")
        pushControllerWithName("iConfirmacion", context: tamanot)
    }
    
    
    @IBAction func bapeperoni() {
        let tamanot = enviotamano(t:tamres, m:masres, q:queres, i:"PEPERONI")
        pushControllerWithName("iConfirmacion", context: tamanot)
    }
    
    
    @IBAction func bapavo() {
        let tamanot = enviotamano(t:tamres, m:masres, q:queres, i:"PAVO")
        pushControllerWithName("iConfirmacion", context: tamanot)
    }
    
    
    @IBAction func basalchicha() {
        let tamanot = enviotamano(t:tamres, m:masres, q:queres, i:"SALCHICHA")
        pushControllerWithName("iConfirmacion", context: tamanot)
    }
    
    
    @IBAction func baaceituna() {
        let tamanot = enviotamano(t:tamres, m:masres, q:queres, i:"ACEITUNA")
        pushControllerWithName("iConfirmacion", context: tamanot)
    }
    
    
    
    @IBAction func bapiña() {
        let tamanot = enviotamano(t:tamres, m:masres, q:queres, i:"PIÑA")
        pushControllerWithName("iConfirmacion", context: tamanot)
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
