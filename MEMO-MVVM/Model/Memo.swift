//
//  Memo.swift
//  MEMO-MVVM
//
//  Created by 최순원 on 21/02/2021.
//  Copyright © 2021 최순원. All rights reserved.
//

import Foundation

struct Memo : Equatable {
    var content: String
    var insertDate: Date
    var identity: String

    init(content: String, insertDate: Date = Date()) {
        self.content = content
        self.insertDate = insertDate
        self.identity = "\(insertDate.timeIntervalSinceReferenceDate)"
    }

    init(original: Memo, updatedContent: String) {
        self = original
        self.content = updatedContent
    }
}
