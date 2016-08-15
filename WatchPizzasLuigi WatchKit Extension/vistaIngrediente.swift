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
    
    @IBOutlet var sw_jamon: WKInterfaceSwitch!
    @IBOutlet var sw_pepperoni: WKInterfaceSwitch!
    @IBOutlet var sw_pavo: WKInterfaceSwitch!
    @IBOutlet var sw_salchicha: WKInterfaceSwitch!
    @IBOutlet var sw_aceituna: WKInterfaceSwitch!
    @IBOutlet var sw_pinha: WKInterfaceSwitch!
    
    var tamres = ""
    var masres = ""
    var queres = ""
    
    var configuracionPizza : enviotamano? = nil
    var numIngredientes : Int = 0
    var switchJamon : Bool = false
    var switchPepperoni : Bool = false
    var switchPavo : Bool = false
    var switchSalchicha : Bool = false
    var switchAceituna : Bool = false
    var switchPinha : Bool = false
    @IBOutlet var alerta: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let tp = context as! enviotamano
        tamres = (String(tp.tamanot))
        masres = (String(tp.masat))
        queres = (String(tp.quesot))
        
        numIngredientes = 0
        alerta.setHidden(true)
        // Configure interface objects here.
    }
    
    
    /* @IBAction func bajamon() {
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
     }*/
    
    
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func switchJamonChange(value: Bool) {
        
        if value {
            numIngredientes += 1
        }
        else {
            numIngredientes -= 1
        }
        
        switchJamon = value
    }
    
    @IBAction func switchPepperoniChange(value: Bool) {
        
        if value {
            numIngredientes += 1
        }
        else {
            numIngredientes -= 1
        }
        
        switchPepperoni = value
    }
    
    @IBAction func switchPavoChange(value: Bool) {
        
        if value {
            numIngredientes += 1
        }
        else {
            numIngredientes -= 1
        }
        
        switchPavo = value
    }
    
    @IBAction func switchSalchichaChange(value: Bool) {
        
        if value {
            numIngredientes += 1
        }
        else {
            numIngredientes -= 1
        }
        
        switchSalchicha = value
    }
    
    @IBAction func switchAceitunaChange(value: Bool) {
        
        if value {
            numIngredientes += 1
        }
        else {
            numIngredientes -= 1
        }
        
        switchAceituna = value
    }
    
    @IBAction func switchPiñaChange(value: Bool) {
        
        if value {
            numIngredientes += 1
        }
        else {
            numIngredientes -= 1
        }
        
        switchPinha = value
    }
    
    
    
    @IBAction func continuar() {
        
        
        var ingredientes : [String] = []
        
        if switchJamon { ingredientes.append("Jamón") }
        if switchPepperoni { ingredientes.append("Pepperoni") }
        if switchPavo { ingredientes.append("Pavo") }
        if switchSalchicha { ingredientes.append("Salchicha") }
        if switchAceituna { ingredientes.append("Aceitunas") }
        if switchPinha { ingredientes.append("Piña") }
        
        
        if numIngredientes == 0 {
            
            alerta.setText("¡Debes seleccionar al menos 1 ingrediente!")
            alerta.setHidden(false)
        }
        else if numIngredientes > 5 {
            
            alerta.setText("¡Máximo 5 ingredientes!")
            alerta.setHidden(false)
        }
        else {
            
            
            let configuracion = enviotamano(t:tamres, m:masres, q:queres, i: ingredientes)
            pushControllerWithName("iConfirmacion", context: configuracion)
            alerta.setHidden(true)
        }
    }
}
