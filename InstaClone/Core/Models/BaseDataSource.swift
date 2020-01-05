//
//  BaseDataSource.swift
//  InstaClone
//
//  Created by Philip Martin on 05/01/2020.
//  Copyright © 2020 Phil Martin. All rights reserved.
//

import Foundation

struct BaseDataSource: Codable{
    var stories: [Stories]?
    var newsFeed: [NewsFeed]?
}
