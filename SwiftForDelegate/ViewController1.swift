//
//  ViewController1.swift
//  SwiftForDelegate
//
//  Created by 刘浩浩 on 2016/10/18.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

import UIKit

protocol MyDelegate {
    func didAcceptSomethiong(someoneName : String)
}
class ViewController1: UIViewController {

    var delegate : MyDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blue

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        self.dismiss(animated: false, completion: nil)
        delegate?.didAcceptSomethiong(someoneName: "Hello")

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
