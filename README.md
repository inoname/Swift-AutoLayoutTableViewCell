# Swift-AutoLayoutTableViewCell
自动布局计算内容可变TableViewCell的行高
---
## 表格Cell的高度是根据内容自动改变的
``` swift
override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell") as! WeiboCell
        cell.weibo = weiboList![indexPath.row]
        cell.layoutIfNeeded()
        return CGRectGetMaxY(cell.pictureView.frame)+20
    }
```
![image](https://github.com/kouliang/Swift-AutoLayoutTableViewCell/blob/master/image/1.png)

![image](https://github.com/kouliang/Swift-AutoLayoutTableViewCell/blob/master/image/2.png)
