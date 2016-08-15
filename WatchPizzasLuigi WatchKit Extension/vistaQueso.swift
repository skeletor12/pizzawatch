//
//  vistaQueso.swift
//  WatchPizzasLuigi
//
//  Created by Luis Rodriguez on 22/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {
    
    var tamres = ""
    var masres = ""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let tp = context as! enviotamano
        tamres = (String(tp.tamanot))
        masres = (String(tp.masat))
        
        // Configure interface objects here.
    }

    
    @IBAction func bamozzarela() {
        let tamanot = enviotamano(t:tamres, m:masres, q:"MOZZARELA", i:[])
        pushControllerWithName("iIngrediente", context: tamanot)
    }
    
    
    @IBAction func bacheddar() {
        let tamanot = enviotamano(t:tamres, m:masres, q:"CHEDDAR", i:[])
        pushControllerWithName("iIngrediente", context: tamanot)
    }
    
    
    @IBAction func baparmesano() {
        let tamanot = enviotamano(t:tamres, m:masres, q:"PARMESANO", i:[])
        pushControllerWithName("iIngrediente", context: tamanot)
    }
    
    
    @IBAction func basinqueso() {
        let tamanot = enviotamano(t:tamres, m:masres, q:"SIN QUESO", i:[])
        pushControllerWithName("iIngrediente", context: tamanot)
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
