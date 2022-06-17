//
//  Channel.swift
//  prac_youtubeApp
//
//  Created by JIHA on 2021/09/08.
//

import Foundation

class Channel: Decodable {
    let items: [ChannelItems]
}

class ChannelItems: Decodable {
    let snippet: ChannelSnippet
}

class ChannelSnippet: Decodable {
    let title: String
    let thumbnails: Thumbnails
}
