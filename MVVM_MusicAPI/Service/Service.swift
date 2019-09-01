//
//  Service.swift
//  MVVM_MusicAPI
//
//  Created by Anurag Kashyap on 02/09/19.
//  Copyright © 2019 Anurag Kashyap. All rights reserved.
//

import Foundation

class Service: NSObject {
    static let sharedInstance = Service()
    func getMusicData(){
        let url = URL(string: musicApiUrl)!
        URLSession.shared.dataTask(with: url) { (data, reponse, error) in
            guard error == nil, let dataValue = data else {print("Error"); return}
            let musicData = try? JSONDecoder().decode(MusicResponse.self, from: dataValue)
            for singleMusic in (musicData?.results)! {
                print(singleMusic.artistName, ":", singleMusic.trackName, ":", singleMusic.imageUrl, ":", singleMusic.soundPreview)
            }
        }.resume()
    }
}
