//
//  vistaConfirmacion.swift
//  WatchPizzasLuigi
//
//  Created by Luis Rodriguez on 22/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmacion: WKInterfaceController {
    
    
    @IBOutlet var tamres: WKInterfaceLabel!
    @IBOutlet var masres: WKInterfaceLabel!
    @IBOutlet var queres: WKInterfaceLabel!
    @IBOutlet var ingres: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let tp = context as! enviotamano
        tamres.setText(String(tp.tamanot))
        masres.setText(String(tp.masat))
        queres.setText(String(tp.quesot))
        ingres.setText(String(tp.ingredientet))
        
        // Configure interface objects here.
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
