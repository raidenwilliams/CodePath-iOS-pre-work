//
//  ViewController.swift
//  Codepath Prework
//
//  Created by Raiden Williams on 1/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextboc: UITextField!
    @IBOutlet weak var lastnameTextbox: UITextField!
    @IBOutlet weak var schoolTextbox: UITextField!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var numPets: UILabel!
    @IBOutlet weak var morePetsStepped: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper){
        numPets.text = "\(Int(sender.value))"
    }

    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
            let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)

        let introduction = "My name is \(firstNameTextboc.text!) \(lastnameTextbox.text!) and I attend \(schoolTextbox.text!). I am currently in my \(year!) year and I own \(numPets.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
            
            
            // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

