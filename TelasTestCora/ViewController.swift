//
//  ViewController.swift
//  TelasTestCora
//
//  Created by Cora on 02/12/21.
//

import UIKit

class BemVindoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func returnPage() {
        navigationController?.popViewController(animated: true)
    }

}

