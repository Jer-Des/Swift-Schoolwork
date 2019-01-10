//
//  Item.swift
//  Spotify
//
//  Created by Brad Richardson on 1/29/16.
//  Copyright © 2016 USU. All rights reserved.
//

import Foundation

class SpotifyTrack {
    static let artUrl = "https://api.spotify.com/v1/albums/"
    var title = ""
    var artist = ""
    var previewUrl = ""
    var albumArtwork = ""
    
    init(itemJSON: [String: AnyObject]) {
        guard let title = itemJSON["name"] as? String
            else {
                return
        }
        self.title = title
        
        guard let artists = itemJSON["artists"] as? [[String: AnyObject]],
            let firstArtist = artists.first,
            let artist = firstArtist["name"] as? String
            else {
                return
        }
        self.artist = artist

        guard let previewUrl = itemJSON["preview_url"] as? String
            else {
                return
        }
        self.previewUrl = previewUrl
    }
    
}
