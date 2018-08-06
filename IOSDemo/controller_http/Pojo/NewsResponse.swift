//
// Created by makai on 2018/8/6.
// Copyright (c) 2018 makai. All rights reserved.
//

import Foundation
import HandyJSON

class NewsResponse: HandyJSON {

    var meta: Meta?
    var body: Array<News>?

    required init() {
    }

}
