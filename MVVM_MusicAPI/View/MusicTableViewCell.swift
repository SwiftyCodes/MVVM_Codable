//
//  MusicTableViewCell.swift
//  MVVM_MusicAPI
//
//  Created by Anurag Kashyap on 02/09/19.
//  Copyright © 2019 Anurag Kashyap. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var musicImageView: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var trackName: UILabel!
    
    var singleMusicValue : MusicVM? {
        didSet{
            configireCell()
        }
    }
    
    func configireCell(){
        self.artistName.text = singleMusicValue?.artistName
        self.trackName.text = singleMusicValue?.trackName
        self.musicImageView.imageFromURL(urlString: (singleMusicValue?.imageUrl)!)
    }
}
