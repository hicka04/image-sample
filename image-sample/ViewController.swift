//
//  ViewController.swift
//  image-sample
//
//  Created by hicka04 on 2018/12/16.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit
import Nuke
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet private weak var nukeImageView: UIImageView!
    @IBOutlet private weak var kfImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://s3-ap-northeast-1.amazonaws.com/hicka04-image-sample/hicka04.png")!
        kfImageView.loadImageKingfisher(with: url)
        nukeImageView.loadImageNuke(with: url)
    }
}

extension UIImageView {
    
    func loadImageNuke(with url: URL) {
        Nuke.loadImage(with: url, into: self)
    }
    
    func loadImageKingfisher(with url: URL) {
        kf.setImage(with: url)
    }
}
