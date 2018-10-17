//
//  ViewController.swift
//  Capitals & Countries Quiz
//
//  Created by Ramy on 10/15/18.
//  Copyright © 2018 Ramy. All rights reserved.
//

import UIKit
import TransitionButton
class ViewController: UIViewController {
    
    @IBOutlet weak var button2: TransitionButton!

    override func viewDidLoad() {
        button2.cornerRadius = 10
        super.viewDidLoad()
  
    }
    
    @IBAction func button2Pressed(_ sender: TransitionButton) {
        button2.startAnimation()
        let qualityOfServiceClass = DispatchQoS.QoSClass.background
        let backgroundQueue = DispatchQueue.global(qos: qualityOfServiceClass)
        backgroundQueue.async(execute: {
            sleep(1)
            DispatchQueue.main.async(execute: { () -> Void in
                
                self.button2.stopAnimation(animationStyle: .expand, completion: {
                    self.performSegue(withIdentifier: "StartView", sender: self)
                })
            })
        })
        
        
    }

}


