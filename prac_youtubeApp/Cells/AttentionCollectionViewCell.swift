//
//  AttentionCollectionViewCell.swift
//  prac_youtubeApp
//
//  Created by JIHA on 2021/09/09.
//

import UIKit
import Nuke
class AttentionCollectionViewCell: UICollectionViewCell {
    
    var videoItem: Item? {
        didSet {
            if let url = URL(string: videoItem?.snippet.thumbnails.medium.url ?? "") {
                
                Nuke.loadImage(with: url, into: thumbnailImageView)
            }
            videoTitleLabel.text = videoItem?.snippet.title
            descriptionLabel.text = videoItem?.snippet.description
            channelTitleLabel.text = videoItem?.channel?.items[0].snippet.title
            
        }
    }
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var channelTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
