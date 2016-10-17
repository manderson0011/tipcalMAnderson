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
    //private var tipCalc = TipCalculator()
    

    
    func go() {
        var billAmt: Double
        var tipPct: Double
        var taxAmount: Double
        var people: Double
       

        while !done {
            
            io.writeMessage(" Type Calculate to calculate tip, Press q to quit, Press h for Help.")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
                print ( "Exiting.....")
            } else if currentInput == "h" {
                print ("Bill amount is the amount of your total food bill.  \n Tip Percentage is the percentage of the tip you want to give.  \n Total Amount is the total amount including tax. \n Tax amount is the sales tax in your state. \nTotal amount for each person is the bill split by the amount of people in your party. /nPress you may enter q at any time to quit)")
            
            } else if currentInput == "calculate" {
            
                io.writeMessage("What is the subtotal?")
                currentInput = io.getInput()
                billAmt = Double(currentInput)!
                io.writeMessage("What is the tip percentage?")
                 currentInput = io.getInput()
                tipPct = Double(currentInput)!
                io.writeMessage("What is the tax amount?")
                 currentInput = io.getInput()
                taxAmount = Double(currentInput)!
                io.writeMessage("How many people will split this total?")
                currentInput = io.getInput()
                people = Double(currentInput)!
            
             
            
                let tipPercent = tipPct * 0.01
            
                let taxAmt = taxAmount * 0.01 * billAmt
            
                let tipTotal = billAmt * tipPercent
                print("The total tip amount is: \(tipTotal)")
                
                let amountTotal = billAmt + tipTotal + taxAmt
                
                
                
                let twoThirds = 2.0/3.0
                let tmp = (twoThirds * 100).rounded(.toNearestOrAwayFromZero)
                let roundedTwoThirds = tmp/100
                
                let splitBill = amountTotal/people
                
                func roundTwoDigits(num:Double) -> Double {
                
                let tmp = (splitBill * 100).rounded(.toNearestOrAwayFromZero)
                return tmp/100
            }
                print ("This is the amount total including tip $: \(amountTotal)")
                
                print ("This is the amount per person $: \(splitBill)")
                
                
                    
            }
                
        }
    }
            
}


       /// make variables for all input..
    // use if loop to input

  
        



