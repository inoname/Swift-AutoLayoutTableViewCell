//
//  ViewController.swift
//  自动布局计算内容可变表格的行高
//
//  Created by kouliang on 15/3/9.
//  Copyright (c) 2015年 kouliang. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    lazy var weiboList: [Weibo]? = {
        let url = NSBundle.mainBundle().URLForResource("weibo.json", withExtension: nil)
        let data = NSData(contentsOfURL: url!)
        let dictArray = NSJSONSerialization.JSONObjectWithData(data!, options:  NSJSONReadingOptions.MutableContainers, error: nil) as! NSArray
        
        var modelArray = [Weibo]()
      
        for dict in dictArray{
            let dic = dict as! [NSObject : AnyObject]
            let model = Weibo.weiboWithDict(dic)
            modelArray.append(model)
        }
        return modelArray
    }()
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cun = weiboList!.count
        return cun
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath) as! WeiboCell
        cell.weibo = weiboList![indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell") as! WeiboCell
        cell.weibo = weiboList![indexPath.row]
        cell.layoutIfNeeded()
        return CGRectGetMaxY(cell.pictureView.frame)+20
    }
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
}

