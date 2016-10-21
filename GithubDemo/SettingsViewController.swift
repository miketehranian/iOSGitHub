//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Mike Tehranian on 10/20/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var starSlider: UISlider!
    @IBOutlet weak var starLabel: UILabel!
    
    let defaults = UserDefaults.init()
    
    @IBAction func onSaveButton(_ sender: AnyObject) {
        defaults.set(starSlider.value, forKey: "settingsValue")
        
        GithubRepoSearchSettings(
        
        dismiss(animated: true, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
    
    @IBAction func starChanged(_ sender: AnyObject) {
        starLabel.text = String(starSlider.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let settingsValue = defaults.float(forKey: "settingsValue")
        starSlider.value = settingsValue
    }
    
    
    
    
    
}
