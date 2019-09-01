//
//  ViewController.swift
//  MVVM_MusicAPI
//
//  Created by Anurag Kashyap on 02/09/19.
//  Copyright © 2019 Anurag Kashyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Service.sharedInstance.getMusicData()
    }


}

