//
//  ValueReturnViewController.swift
//  DataTransferSample
//
//  Created by Muramoto & Co. on 2021/04/10.
//

import UIKit

class ValueReturnViewController: UIViewController {
    /// CatchProtocol
    var delegate:CatchProtocol?
    /// 前の画面に戻すTextを入れておく変数
    var backString = String()
    /// 前の画面にTextを戻し、画面遷移をするButton
    @IBOutlet weak var valueReturn: UIButton!
    /// 前の画面に渡す文字を入力するTextField
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valueReturn.settingButton()
    }
    
    // TextFieldからTextを取得して前の画面に渡す
    @IBAction func valueReturn(_ sender: Any) {
        // TextFieldからtextを取得
        backString = textField.text!
        // 渡したい引数
        delegate?.catchData(backString: backString)
        // 前の画面に戻る
        dismiss(animated: true, completion: nil)
    }
}

protocol CatchProtocol {
    func catchData (backString: String)
}
