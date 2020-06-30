//
//  ViewController.swift
//  HW4- IOS -XO
//
//  Created by ناصر الرشيدي on 6/30/20.
//  Copyright © 2020 ناصر الرشيدي. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var b1: UIButton!
     @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
     @IBOutlet weak var b7: UIButton!
     @IBOutlet weak var b8: UIButton!
     @IBOutlet weak var b9: UIButton!
    
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var turn = 0
    @IBAction func press(_ sender :UIButton) {
        if turn % 2 == 0 {
            sender.setTitle("X", for: .normal)
            sender.setTitleColor(.yellow, for: .normal)
            turnLabel.text = "O turn"
        } else{
            
            sender.setTitle("O", for: .normal)
            
            sender.setTitleColor(.white, for: .normal)
                     turnLabel.text = "X turn"
        }
        print(turn)
        turn += 1
        sender.isEnabled = false
       
    

        if  checkWinner(p: "X") {
            okAlert(title: "Great X Wins 🥳😎", message: "Congrats, Now reset the game!")
    
            
        
        } else if checkWinner(p: "O") {
     okAlert(title: "Great O Wins 🥳😎", message: "Congrats, Now reset the game!")
            
        }else if turn == 8 {
        okAlert(title: "No one wins 🤦‍♂️", message: "   Now reset the game 😉😎!")
        }
        
        }
//}
    func checkWinner(p: String) -> Bool {
              let f1 = b1.titleLabel?.text
              let f2 = b2.titleLabel?.text
              let f3 = b3.titleLabel?.text
              let f4 = b4.titleLabel?.text
              let f5 = b5.titleLabel?.text
              let f6 = b6.titleLabel?.text
              let f7 = b7.titleLabel?.text
              let f8 = b8.titleLabel?.text
              let f9 = b9.titleLabel?.text
            
            let r1 = (f1, f2, f3) == (p, p, p)
            let r2 = (f4, f5, f6) == (p, p, p)
            let r3 = (f7, f8, f9) == (p, p, p)
            let c1 = (f1, f4, f7) == (p, p, p)
            let c2 = (f2, f5, f8) == (p, p, p)
            let c3 = (f3, f6, f9) == (p, p, p)
            let d1 = (f1, f5, f9) == (p, p, p)
              let d2 = (f3, f5, f7) == (p, p, p)
            
            if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2 {
                
                print ( "🎁🎉👏 \(p) Wins" )
                return true
            }
            else  {
                return false
            }
        }


           @IBAction func reset(_ sender: Any) {
            b1.titleLabel?.text = ""
              b2.titleLabel?.text = ""
              b3.titleLabel?.text = ""
              b4.titleLabel?.text = ""
              b5.titleLabel?.text = ""
              b6.titleLabel?.text = ""
              b7.titleLabel?.text = ""
              b8.titleLabel?.text = ""
              b9.titleLabel?.text = ""
            
            b1.setTitle("", for: .normal)
            b2.setTitle("", for: .normal)
            b3.setTitle("", for: .normal)
            b4.setTitle("", for: .normal)
            b5.setTitle("", for: .normal)
            b6.setTitle("", for: .normal)
            b7.setTitle("", for: .normal)
            b8.setTitle("", for: .normal)
            b9.setTitle("", for: .normal)
            
            
            
            b1.isUserInteractionEnabled = true
            b2.isUserInteractionEnabled = true
            b3.isUserInteractionEnabled = true
            b4.isUserInteractionEnabled = true
            b5.isUserInteractionEnabled = true
            b6.isUserInteractionEnabled = true
            b7.isUserInteractionEnabled = true
            b8.isUserInteractionEnabled = true
            b9.isUserInteractionEnabled = true
            
            
            turn = 0
            
       
            
            
        }
        
        func okAlert(title: String, message: String)
        {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .cancel)
            alertController.addAction(okAction)
            present(alertController, animated: true)
        }
        
      
        
    }


    
    
    
    
           

 
 
