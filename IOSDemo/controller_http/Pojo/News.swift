//
// Created by makai on 2018/8/6.
// Copyright (c) 2018 makai. All rights reserved.
//

import Foundation
import HandyJSON

class News: HandyJSON {

    var id: String?
    var type: String?
    var content: String?
    var title: String?
    var shareTitle: String?
    var cid: Int?
    var thumbnail: String?
    var cThumbnail: String?
    var source: String?
    var status: Int?
    var shareUrl: String?
    var commentsUrl: String?
    var ctime: Date?
    var utime: Date?
    var img: Array<Img>?
    var staticImg: String?
    var link: Link?
    var praise: String?
    var tread: String?
    var comments: Int?
    var commentsall: Int?
    var likes: Int?

    required init() {
    }

}
