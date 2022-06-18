//
//  SecondViewController.swift
//  PassingData-Callbacks
//
//  Created by Ruslan on 16.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    var closure: ((String) -> ())?
    
    @IBAction func goBackAction(_ sender: UIButton) {
        guard let text = myTextField.text, text != "" else {
            
            // receiving closure and sending back with no data
            closure?("no data")
            
            navigationController?.popViewController(animated: true)
            return
        }
        
        // receiving closure and sending back with data
        closure?(text)
        
        navigationController?.popViewController(animated: true)
    }
}
