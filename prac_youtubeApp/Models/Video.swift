//
//  Video.swift
//  prac_youtubeApp
//
//  Created by JIHA on 2021/09/08.
//

import Foundation

class Video: Decodable{
    
    let kind: String
    let items: [Item]
}

class Item: Decodable {
    var channel: Channel?
    let snippet: Snippet
}

class Snippet: Decodable {
    let publishedAt: String
    let channelId: String
    let title: String
    let description: String
    let thumbnails: Thumbnails
}

class Thumbnails: Decodable {
    let medium: ThumbnailInfo
    let high: ThumbnailInfo
}

class ThumbnailInfo: Decodable {
    let url: String
    let width: Int?
    let height: Int?
}
