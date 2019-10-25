//
//  ViewController.swift
//  BaseApp
//
//  Created by Fábio Salata on 25/10/19.
//  Copyright © 2019 Fábio Salata. All rights reserved.
//

import UIKit
import AwesomeApi

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AwesomeAPIClient.shared.testRun {
            print("A")
        }
    }


}

