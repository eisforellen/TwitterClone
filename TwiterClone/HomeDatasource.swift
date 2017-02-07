//
//  HomeDatasource.swift
//  TwiterClone
//
//  Created by Ellen Mey on 2/2/17.
//  Copyright © 2017 Ellen Mey. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let ellenUser = User(name: "Ellen Mey", username: "@MeydYouLook", bioText: "Beer. Hockey. Dev.", profileImage: #imageLiteral(resourceName: "profile_image"))
        let barbUser = User(name: "Barb", username: "@redHeadBarb", bioText: "Why did you leave me in the Upside Down? Seriously, not cool.", profileImage: #imageLiteral(resourceName: "barb"))
        return [ellenUser, barbUser]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
}
