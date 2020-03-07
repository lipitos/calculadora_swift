//
//  ViewController.swift
//  app_calculadora
//
//  Created by Professor SENAI on 3/7/20.
//  Copyright © 2020 fneves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber01: UITextField!
    @IBOutlet weak var lblNumber02: UITextField!
    @IBOutlet weak var lblResult: UITextField!
    
    var number01: Int = 0;
    var number02: Int = 0;
    var result: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNumber01.text = "0";
        lblNumber02.text = "0";
        lblResult.text = "0";
    }


    @IBAction func zerarNumber01(_ sender: Any) {
        lblNumber01.text = "";
        
    }
    
    @IBAction func zerarNumber02(_ sender: Any) {
        lblNumber02.text = "";
    }
    
    @IBAction func changeNumber01(_ sender: Any) {
        let n1: String = lblNumber01.text!;
        number01 = Int(n1) ?? 0;
    }
    
    @IBAction func changeNumber02(_ sender: Any) {
        let n2: String = lblNumber02.text!;
        number02 = Int(n2) ?? 0;
    }
    
    @IBAction func sum(_ sender: Any) {
        result = number01 + number02;
        lblResult.text = String(result);
        closeTeclado()    }
    
    @IBAction func diff(_ sender: Any) {
        result = number01 - number02;
        lblResult.text = String(result);
        closeTeclado()    }
    
    @IBAction func mult(_ sender: Any) {
        result = number01 * number02;
        lblResult.text = String(result);
        closeTeclado()    }
    
    @IBAction func div(_ sender: Any) {
        result = number01 / number02;
        lblResult.text = String(result);
        closeTeclado()
   }
    
    @IBAction func reset(_ sender: Any) {
        lblNumber01.text = "0";
        lblNumber02.text = "0";
        lblResult.text = "0";
        number01 = 0;
        number02 = 0;
        result = 0;
        
    }
    
    func closeTeclado(){
        self.view.endEditing(true);
    }
    
    
}


