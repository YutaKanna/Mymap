//
//  ViewController.swift
//  Mymap
//
//  Created by 漢那優太 on 2019/01/13.
//  Copyright © 2019 Yuta Kanna. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Text Fieldのdelegate通知先を設定
        inputText.delegate = self
    }

    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var dispMap: MKMapView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる(1)
        textField.resignFirstResponder()
        
        // 入力された文字を取り戻す(2)
        if let searchKey = textField.text {
            
            // 入力された文字列をデバッグエリアに表示(3)
            print(searchKey)
        }
        
        // デフォルト動作を行うのでtrueを返す(4)
        return true
    }
}
