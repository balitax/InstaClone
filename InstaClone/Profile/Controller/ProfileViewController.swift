//
//  ProfileViewController.swift
//  InstaClone
//
//  Created by Philip Martin on 23/04/2020.
//  Copyright © 2020 Phil Martin. All rights reserved.
//

import AsyncDisplayKit

class ProfileViewController: ASViewController<BaseNode> {
    
    var profile: ProfilePresenter!
    init() {
        super.init(node: BaseNode())
        profile = ProfilePresenter()
        backgroundColour()
        self.node.addSubnode(profile)
        node.layoutSpecBlock = { (node, constrainedSize) in
            return ASInsetLayoutSpec(insets: UIEdgeInsets.zero, child: self.profile)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setupNavBar()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        backgroundColour()
    }
    
    private func backgroundColour() {
        self.node.backgroundColor = .systemBackground
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.topItem?.title = "That iOS Developer"
    }
    
}
