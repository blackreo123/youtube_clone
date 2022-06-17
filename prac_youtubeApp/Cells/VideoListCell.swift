//
//  videoListCell.swift
//  prac_youtubeApp
//
//  Created by JIHA on 2021/09/08.
//

import UIKit
import Nuke

class VideoListCell: UICollectionViewCell {
    
    var videoItem: Item? {
        didSet {
            
            if let url = URL(string: videoItem?.snippet.thumbnails.medium.url ?? "") {
                //                let data = try! Data(contentsOf: url)
                //                thumbnailImageView.image = UIImage(data: data)
                Nuke.loadImage(with: url, into: thumbnailImageView)
            }
            
            if let channelUrl = URL(string: videoItem?.channel?.items[0].snippet.thumbnails.medium.url ?? "") {
                Nuke.loadImage(with: channelUrl, into: channelImageView)
            }
            
            titleLabel.text = videoItem?.snippet.title
            descriptionLabel.text = videoItem?.snippet.description
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var channelImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        channelImageView.layer.cornerRadius = 40 / 2
    }
}
