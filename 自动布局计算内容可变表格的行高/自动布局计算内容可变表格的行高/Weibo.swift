//
//  Weibo.swift
//  自动布局计算内容可变表格的行高
//
//  Created by kouliang on 15/3/9.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class Weibo: NSObject {
    
    var name: String?
    var text: String?
    var icon: String?
    var picture: String?
    var vip = false

    class func weiboWithDict(dict: [NSObject : AnyObject]) ->Weibo{
        let weibo = Weibo()
        weibo.setValuesForKeysWithDictionary(dict)
        return weibo
    }
}
