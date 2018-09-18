//
//  ViewController.swift
//  HelloWorld
//
//  Created by Pranav Sharma on 18/09/18.
//  Copyright © 2018 Pranav Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var emojiCollection: [String: String] = [
        "🎧": "Music Headphones",
        "☄️": "Comet",
        //"💨": "Wind Style",
        "🔥": "Fire Style"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage (sender: UIButton) {
        let selectedButton = sender
        var message: String?
        
        if let wordToLookup = selectedButton.titleLabel?.text {
            message = emojiCollection[wordToLookup]
        }
        
        var alertController: UIAlertController?
        
        if let message = message {
            alertController = UIAlertController(title: "Meaning", message: message, preferredStyle: UIAlertControllerStyle.alert)
        } else {
            alertController = UIAlertController(title: "Meaning", message: "Hello World!!", preferredStyle: UIAlertControllerStyle.alert)
        }
        
        if let alertController = alertController {
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
}

