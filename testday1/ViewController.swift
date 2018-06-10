//
//  ViewController.swift
//  testday1
//
//  Created by 許廷綺 on 2018/6/9.
//  Copyright © 2018 許廷綺. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var showImage: UIImageView!
    
    @IBOutlet weak var accountIn: UITextField!
    @IBOutlet weak var pwdInput: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var showMsg: UILabel!
    @IBAction func loginBtnClick(_ sender: UIButton) {
        if (pwdInput.text!.isEmpty){
            print("isEmpty")
        }
        if (pwdInput.text?.isEmpty ?? true)
        {
//            print("\(pwdInput.text):::isEmpty")
        }
//        print("\(accountIn.text)....\(pwdInput.text)")
        if (accountIn.text == "matty" && pwdInput.text == "12"){
            showMsg.text = "success"
            performSegue(withIdentifier: "segueLogin", sender: self)
        }
        else{
            showMsg.text = "failed"
            return
        }
        
    }
    
//    func goArticle() {
//        self.presentViewController(ＭainViewController(), animated: true, completion: nil)
//    }
//
//    func goIntro() {
//        self.presentViewController(MainViewController(), animated: true, completion: nil)
//    }
    //此处省略引用声明
    //通过委托来实现放弃第一响应者
    //UITextField Delegate Method
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //通过委托来实现放弃第一响应者
    //UITextView Delegate  Method
//     func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
//        if (text == "\n") {
//            textView.resignFirstResponder()
//            return false
//        }
//        return true
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pwdInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(".....prepare")
        if segue.identifier == "sequeLogin"{
            let vc = segue.destination as! MainViewController
        }
    }

}

