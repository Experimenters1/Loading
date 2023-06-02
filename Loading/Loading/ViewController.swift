//
//  ViewController.swift
//  Loading
//
//  Created by Macmini on 02/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.isHidden = true
    }
    @IBAction func tapLoadData(_ sender: Any) {
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false
        view.isUserInteractionEnabled = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            // ...
            print("load data")
            self.view.isUserInteractionEnabled = true
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
        
    }
    

}

