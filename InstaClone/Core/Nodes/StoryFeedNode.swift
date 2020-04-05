//
//  StoryFeedNode.swift
//  InstaClone
//
//  Created by Philip Martin on 05/04/2020.
//  Copyright © 2020 Phil Martin. All rights reserved.
//

import AsyncDisplayKit

class StoryFeedNode: ASCellNode {
    
    var imageNode = ASNetworkImageNode()
    var nameNode = ASTextNode()
    
    override init() {
        super.init()
        self.automaticallyManagesSubnodes = true
        setupNodes()
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASStackLayoutSpec(direction: .vertical, spacing: 6, justifyContent: .start, alignItems: .center, children: [imageNode, nameNode])
    }
    
    func populate(story: Stories?, isWatched: Bool){
        nameNode.attributedText = NSAttributedString(string: story?.user.username ?? "Unknown User", attributes: [NSAttributedString.Key.foregroundColor: UIColor.label, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 10)])
        imageNode.url = URL(string: story?.user.profileIcon ?? "")
        imageNode.borderColor = isWatched ? UIColor.lightGray.cgColor : UIColor.red.cgColor
    }
    
    private func setupNodes() {
        nameNode.maximumNumberOfLines = 1
        imageNode.style.preferredSize = CGSize(width: 63, height: 63)
        imageNode.cornerRadius = 63/2
        imageNode.borderWidth = 2
    }
    
}
