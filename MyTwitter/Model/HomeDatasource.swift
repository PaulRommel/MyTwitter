//
//  HomeDatasource.swift
//  MyTwitter
//
//  Created by Pavel Popov on 22.05.2025.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let brianUser = User(name: "Brian Voong", username: "@buildthatapp", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: "profile_image")
                             
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, an gamig. Check out our conference.", profileImage: "ray_profile_image")
        
        let kindleCourseUser = User(name: "Kindle Course", username: "@kindleCourse", bioText: "This resfg Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, an gamig. Check out our conferenceRay Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, an gamig. Check out our conference.", profileImage: "profile_image")
        
        return [brianUser, rayUser, kindleCourseUser]
    }()
    
    let tweets: [Tweet] = {
        let brianUser = User(name: "Brian Voong", username: "@buildthatapp", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: "profile_image")
        let tweet = Tweet(user: brianUser, message: "Welcome to episode 9 of the Twitter Series, really hope you guys are enjoiying the series so far. I really really need a lng text block to reader uot so we're going to stop here.")
        let tweet2 = Tweet(user: brianUser, message: "This is the second tweet message for our sample project. Very very exciting message....")
        return [tweet, tweet2]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
