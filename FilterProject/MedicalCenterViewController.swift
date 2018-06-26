//
//  MedicalCenterViewController.swift
//  FilterProject
//
//  Created by Rodrigo Vianna on 26/06/18.
//  Copyright © 2018 Rodrigo Vianna. All rights reserved.
//

import UIKit

class MedicalCenterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Show")
    }
    
    @IBAction func showFilterAction(_ sender: UIBarButtonItem) {
        let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "filter")
        self.navigationController?.present(view, animated: true, completion: nil)
    }
    
    
}
