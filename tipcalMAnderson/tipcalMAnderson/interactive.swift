//
//  interactive.swift
//  tipcalMAnderson
//
//  Created by Melissa Anderson on 10/10/16.
//  Copyright © 2016 Melissa Anderson. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    
    func go() {
        while !done {
            io.writeMessage("\nInput?")
            currentInput = io.getInput()
            
            // ask the user for input right here
            
            if currentInput == "q" {
                done = true
            } else {
                print ( " The input is: \(currentInput)")
                
                }
            }
        print ( "Exiting.....")
        
        return
        }
    }



