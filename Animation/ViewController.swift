//
//  ViewController.swift
//  Animation
//
//  Created by Pramahadi Tama Putra on 17/05/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var variantColorsBackgroundView: [CGColor] = [
        #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1),
        #colorLiteral(red: 1, green: 0.8666666667, blue: 0, alpha: 1),
        #colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1),
        #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
    ]
    
    var variantColorsBackgroundButton: [CGColor] = [
        #colorLiteral(red: 0.5607843137, green: 0, blue: 1, alpha: 1),
        #colorLiteral(red: 1, green: 0.4901960784, blue: 0, alpha: 1),
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
        #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    ]
    
    
    

    @IBOutlet weak var myObject: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myObject.layer.cornerRadius = myObject.frame.width/2
        

    
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        var randomNumberBGColor = Int.random(in: 0..<4)
        var randomNumberButtonColor = Int.random(in: 0..<4)
        UIView.animate(withDuration: 3) {
            self.view.layer.backgroundColor = self.variantColorsBackgroundView[randomNumberBGColor]
            self.myObject.layer.backgroundColor = self.variantColorsBackgroundButton[randomNumberButtonColor]
            
            
        
        }
        
        
        

    }
    


}

