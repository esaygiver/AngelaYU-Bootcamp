//
//  PostData.swift
//  H4X0R News
//
//  Created by admin on 1.11.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import Foundation


struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let url: String?
    let title: String
    let points: Int
    
}
