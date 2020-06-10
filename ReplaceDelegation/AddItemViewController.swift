//
//  AddItemViewController.swift
//  ReplaceDelegation
//
//  Created by Zafar on 6/10/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit
import Combine

class AddItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        newItem.send(textField.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    let newItem = PassthroughSubject<String, Never>()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
}
