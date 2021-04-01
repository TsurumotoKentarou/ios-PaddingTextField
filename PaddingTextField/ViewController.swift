//
//  ViewController.swift
//  PaddingTextField
//
//  Created by 鶴本賢太朗 on 2021/04/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tf = PaddingTextField(edgeInsets: UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 40))
        tf.frame = CGRect(x: 100, y: 100, width: 300, height: 50)
        tf.layer.borderWidth = 1
        tf.layer.borderColor = UIColor.black.cgColor
        tf.placeholder = "余白付きTextField"
        tf.center = view.center
        view.addSubview(tf)
    }
}
