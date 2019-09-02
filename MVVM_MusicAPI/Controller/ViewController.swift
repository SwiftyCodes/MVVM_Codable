//
//  ViewController.swift
//  MVVM_MusicAPI
//
//  Created by Anurag Kashyap on 02/09/19.
//  Copyright © 2019 Anurag Kashyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: MusicTableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData() {
        Service.sharedInstance.getMusicData { (music, error) in
            if error != nil {
                print(error!)
            }else{
                self.tableView.musicVMArray = music?.map({return MusicVM(music: $0) }) ?? []
            }
        }
    }
}


