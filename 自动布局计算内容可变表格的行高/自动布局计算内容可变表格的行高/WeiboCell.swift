//
//  WeiboCell.swift
//  自动布局计算内容可变表格的行高
//
//  Created by kouliang on 15/3/9.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class WeiboCell: UITableViewCell {
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var pictureHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var vipView: UIImageView!
    @IBOutlet weak var pictureView: UIImageView!

    
    var weibo: Weibo?{
        didSet{
            iconView.image = UIImage(named: weibo!.icon!)
            nameLabel.text = weibo!.name!
            contentLabel.text = weibo!.text!
            self.vipView.hidden = !weibo!.vip
            
            if weibo!.picture == nil{
                pictureHeightConstraint.constant = 0
            }else{
                pictureHeightConstraint.constant = 100
                pictureView.image = UIImage(named: weibo!.picture!)
            }
        }
        
    }
}
