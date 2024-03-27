//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Lesley Lopez on 3/26/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Questions {
    let text: String
    let options: [String]
    let answer: String
    
    init(q: String, o: [String], a:String ) {
        text = q
        options = o
        answer = a
    }
}
