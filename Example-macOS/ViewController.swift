//
//  ViewController.swift
//  Example-macOS
//
//  Created by Jiar on 2019/6/16.
//  Copyright © 2019 Jiar. All rights reserved.
//

import Cocoa
import openssl

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let rsa = RSA_generate_key(1024, UInt(RSA_F4), nil, nil) {
            print("RSA's bits is: \(BN_num_bits(rsa.pointee.n))")
        }
    }

}

