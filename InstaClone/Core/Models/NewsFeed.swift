//
//  NewsFeed.swift
//  InstaClone
//
//  Created by Philip Martin on 05/01/2020.
//  Copyright © 2020 Phil Martin. All rights reserved.
//

import Foundation

struct NewsFeed: Codable{
    let user: User?
    let imageUrl: String?
    let likes: Int?
    let lastComment: Comment?
    let postId: Int
    
    enum CodingKeys: String, CodingKey{
        case user, likes
        case imageUrl = "image_url"
        case lastComment = "last_comment"
        case postId = "post_id"
    }
    
}
