//
//  ViewController.swift
//  Project1
//
//  Created by Nina van den Broek on 08/02/2019.
//  Copyright © 2019 Nina van den Broek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //alfabetisch
    @IBOutlet weak var woordInvoer: UITextField!
    @IBOutlet weak var veranderWoord: UIButton!
    @IBOutlet weak var woordUitkomst: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var nummers = [Int]()
        nummers += 1...100
        for num in nummers{
        print("\(fizzBuzz(number: num))")
        }
    }

    @IBAction func veranderTekst(_ sender: Any) {
        let woord = woordInvoer.text!;
        let gesorteerd = String(woord.sorted());
        woordUitkomst.text = "\(gesorteerd)";
        
    }
    
    func fizzBuzz(number:Int)->String{
            if(number % 5 == 0 && number % 3 == 0){
                return "fizzbuzz"
            }
            if(number % 3 == 0){
                return "fizz"
            }
            if(number % 5 == 0){
                return "buzz"
            }
            else{
                return String(number)
            }
        
    }
    
}

