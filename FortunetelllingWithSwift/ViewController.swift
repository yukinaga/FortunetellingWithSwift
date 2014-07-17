//
//  ViewController.swift
//  FortunetelllingWithSwift
//
//  Created by Yukinaga Azuma on 2014/07/17.
//  Copyright (c) 2014年 Yukinaga Azuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var どうぶつラベル: UILabel
    @IBOutlet var 占いラベル: UILabel
    
    let 🐶🐱🐴 = ["🐶", "🐱", "🐴", "🐮", "🐘", "🐯"]
    
    @IBAction func 占う() {
        let 🐶🐱🐴の要素数 = UInt32(🐶🐱🐴.count)
        let 乱数 = Int(arc4random()%🐶🐱🐴の要素数)
        let どうぶつ = 🐶🐱🐴[乱数]
        
        どうぶつラベル.text = どうぶつ
        
        switch どうぶつ {
        case "🐶":
            占いラベル.text = "大吉だワン！"
        case "🐱":
            占いラベル.text = "中吉だニャー！"
        case "🐴":
            占いラベル.text = "吉だヒヒーン！"
        case "🐮":
            占いラベル.text = "末吉だモー！"
        case "🐘":
            占いラベル.text = "凶だゾウ！"
        case "🐯":
            占いラベル.text = "大凶だガオー！"
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

