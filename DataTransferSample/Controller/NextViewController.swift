//
//  NextViewController.swift
//  DataTransferSample
//
//  Created by Muramoto & Co. on 2021/04/03.
//

import UIKit

class NextViewController: UIViewController {
    
    /// 前の画面から受け取ったTextを表示するLabel
    @IBOutlet weak var displayDataLabel: UILabel!
    /// 前の画面に戻るButton
    @IBOutlet weak var backToMain: UIButton!
    /// 前の画面から受け取ったTextを入れる変数
    var argumentString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayDataLabel.text = argumentString
        backToMain.settingButton()
    }
    
    // 前の画面に戻る
    @IBAction func backToMain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
