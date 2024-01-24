//
//  ViewController.swift
//  CUELiveDemoSPM
//
//  Created by Alexander Mokrushin on 24.01.2024.
//  Copyright © 2024 CUE Audio, LLC. All rights reserved.
//

import UIKit
import CUELive

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LaunchLightshowButtonPressed(_ sender: Any) {
        let initialController = NavigationManager.initialController()
        initialController.modalPresentationStyle = .fullScreen
        present(initialController, animated: true)
    }
}

