//
//  ViewController.swift
//  CombineSpecs
//
//  Created by Quentin Jin on 2019/6/16.
//  Copyright © 2019 Quentin Jin. All rights reserved.
//

import UIKit
import Combine

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enum E: Error {
            case e
        }
        
        Publishers.Once<Int, Never>(1).dropFirst(0)
            .sink { (v) in
                print("receive", v)
            }
    }
}

