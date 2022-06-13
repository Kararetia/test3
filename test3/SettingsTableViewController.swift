//
//  SettingsTableViewController.swift
//  test3
//
//  Created by Anastasiia on 05.05.22.
//  Copyright © 2022 Nastia Dovhun. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    let testString = "testString"
    let nameKey = "nameKey"
    let soundKey = "soundKey"
    let volKey = "volKey"
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var volSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSetting()
 
    }
    
    func loadSetting(){
        if let name = UserDefaults.standard.string(forKey: nameKey){
            nameField.text = name
        }
        soundSwitch.isOn = UserDefaults.standard.bool(forKey: soundKey)
        volSlider.value = UserDefaults.standard.float(forKey: volKey)
    }
    
    @IBAction func changeNameAction(_ sender: UITextField) {

        if (sender.text != nil){
            UserDefaults.standard.set(sender.text!, forKey: nameKey)
        }
    }
    
    @IBAction func soundAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: soundKey)
    }
    
    @IBAction func volAction(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: volKey)
    }
    
}
