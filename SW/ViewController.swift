//
//  ViewController.swift
//  SW
//
//  Created by 杭州米发 on 2018/2/6.
//  Copyright © 2018年 冯硕. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let b :Int = 10;
        print(b);
        
        let  view:UIView = UIView();
        view.backgroundColor = UIColor.red;
        view.frame = CGRect(origin: CGPoint(x:100, y:100), size:CGSize(width:200, height:200));
        view.alpha = 0.5;
        view.isHidden = false;
        print(view);
        
//        let m = 10
//        let n = 2.2
//        let tempM = DoubleI(m)
//        let result = n + tempM
//        print(result);
        let a = 10;
        if a >= 10{
            print("判断正确");
        }
        
        let m = 30;
        let n = 20
        var result = 0;
        result = m > n ? m : n
        print(result)
        
        
        
        //想去上网的话 必须满十八岁 并且带了身份证 并且有钱
        func judegeCanonline(_age : Int, _card: Bool, _monty : Int){
            if _age > 18 {
                if _card  == true{
                    if _monty > 20{
                        print("可以上网了");
                    }else{
                       print("没有钱")
                    }
                }else{
                    print("没有带身份证")
                }
               
            }else{
                 print("回家找妈妈")
            }
            
        }
        
        judegeCanonline(_age: 19, _card: true, _monty: 50)
        
        
        func online(age : Int, card : Bool, money:Int){
            guard age > 18 else {
                print("未满十八")
                return
            }
            
            guard card else {
                print("没有携带身份证")
                return
            }
            
            guard money > 20 else {
                print("钱不够")
                return
            }
            
            print("可以上网了")
        }
        
        online(age: 18, card: true, money: 21)
        
        
        //switch
        let sex = 1
        switch sex {
        case 0:
            print("男")
        case 1:
            print("女")
            
        default:
            print("其他")
    
        }
        
        let w = 3.14
        switch w {
        case 3.14:
            print("π")
        default:
            print("not π")
        }
        
        
        let scroe = 100;
        switch scroe {
        case 0..<60:
            print("不及格")
        case 60..<80:
            print("良好")
        case 80...99:
            print("优秀")
        default:
            print("满分")
        }
        
        
//        for var i = 0; 0...20; i += 1{
//            print(i)
//        }
        
        for a  in 0...10 {
            print(a)
        }
        
        for _ in 0...20 {
            print("不需要下标")
        }
        
        let string = "abcdefghijklmnopqrastuvwxyz"
        let string1 = "1234567890"
        let newstring = string + string1
        print(newstring)
        
        
        let age = 18;
        let sexs = "男"
        let str = "my name \(age), my sex \(sexs)"
        print(str);
        
        let  minute  = 10
        let second = 10
        
       let time = String(format: "%02d:%02d", arguments:[minute, second])
        print(time)
        
//        字符串的截取
        let url = "www.baidu.com"
       let header = (url as NSString).substring(to: 3)
        let mid = (url as NSString).substring(with: NSMakeRange(4, 5))
        let foot = (url as NSString).substring(from: 10
        )
        print("url header \(header), url mid \(mid), url foot \(foot)")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

