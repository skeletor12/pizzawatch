//
//  enviotamano.swift
//  WatchPizzasLuigi
//
//  Created by Luis Rodriguez on 22/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import WatchKit

class enviotamano: NSObject {
    
    var tamanot: String = ""
    var masat: String = ""
    var quesot: String = ""
    var ingredientet: String = ""
    
    init(t:String,m:String,q:String,i:String) {
        tamanot=t
        masat=m
        quesot=q
        ingredientet=i
    }

}
