//
//  vistaMasa.swift
//  WatchPizzasLuigi
//
//  Created by Luis Rodriguez on 22/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasa: WKInterfaceController {
    
    var tamres = ""

    
    @IBOutlet var bdelgada: WKInterfaceButton!
    @IBOutlet var bgruesa: WKInterfaceButton!
    @IBOutlet var bcrujiente: WKInterfaceButton!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let tp = context as! enviotamano
        tamres = (String(tp.tamanot))
        
        // Configure interface objects here.
    }
    
    
    @IBAction func badelgada() {
        let tamanot = enviotamano(t:tamres, m:"DELGADA", q:"QUESO", i:[])
        pushControllerWithName("iQueso", context: tamanot)
    }
    
    
    @IBAction func bagruesa() {
        let tamanot = enviotamano(t:tamres, m:"GRUESA", q:"QUESO", i:[])
        pushControllerWithName("iQueso", context: tamanot)
    }
    
    
    @IBAction func bacrujiente() {
        let tamanot = enviotamano(t:tamres, m:"CRUJIENTE", q:"QUESO", i:[])
        pushControllerWithName("iQueso", context: tamanot)
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
