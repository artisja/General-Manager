//
//  ViewController.swift
//  GeneralManager
//
//  Created by Justin Artis on 5/19/17.
//  Copyright © 2017 Justin Artis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var teamNameField: UITextField!
    @IBOutlet weak var easyButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var hardButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        easyButton.isSelected = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func easySelected(_ sender: Any) {
        easyButton.isSelected = true
        mediumButton.isSelected = false
        hardButton.isSelected = false
    }
    
    @IBAction func mediumSelected(_ sender: Any) {
        mediumButton.isSelected = true
        easyButton.isSelected = false
        hardButton.isSelected = false
    }
    
    
    @IBAction func hardSelected(_ sender: Any) {
        hardButton.isSelected = true
        mediumButton.isSelected = false
        easyButton.isSelected = false
    }
    
    @IBAction func startPressed(_ sender: Any) {
        if (teamNameField.text?.isEmpty)!{
            let alertController = UIAlertController(title: "Error", message: "Please fill in team field.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }else{
            performSegue(withIdentifier: "TeamTVC", sender:(Any).self)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "TeamTVC" {
            if let teamTVC = segue.destination as? TeamTableViewController {
                    teamTVC.teamName = teamNameField.text!
                if easyButton.isSelected {
                    teamTVC.budget = 45.65
                }else if mediumButton.isSelected{
                    teamTVC.budget = 77.43
                }else if hardButton.isSelected{
                    teamTVC.budget = 120.81
                }
            }
        }
     
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

