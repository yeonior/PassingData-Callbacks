//
//  ViewController.swift
//  PassingData-Callbacks
//
//  Created by Ruslan on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func goButtonAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard case let secondVC as SecondViewController = storyboard.instantiateViewController(withIdentifier: "second") else { return }
        
        // sending closure
        secondVC.closure = { [weak self] text in
            self?.myLabel.text = text
        }
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
}
