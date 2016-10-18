//
//  ViewController.swift
//  SwiftForDelegate
//
//  Created by 刘浩浩 on 2016/10/18.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

import UIKit

class ViewController: UIViewController,MyDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.red
        
     
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let view1 = ViewController1()
        view1.delegate = self
        self.present(view1, animated: true, completion: nil)
        
    }
    
    func didAcceptSomethiong(someoneName: String) {
        print(someoneName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

