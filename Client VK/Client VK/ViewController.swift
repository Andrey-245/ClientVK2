//
//  ViewController.swift
//  Client VK
//
//  Created by Андрей  on 17.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
   
    
    
    
    
    @IBAction func enterAction(_ sender: Any) {
    
        let login = loginTextField.text ??  ""
        let password = passwordTextField.text ?? ""
        
        if !(login.isEmpty && password.isEmpty) && login == "111" && password == "111" {
            
            print("Вход выполнен, выполняется переход на главный экран")
        }else {
            print("Неверный логин или пароль")
        }
        
        
    }
    
    
    @IBAction func showMessageAction(_ sender: Any) {
        
        print("Раздел в разработке")
        
    }
    func checkAuth() -> Bool {
        return (loginTextField.text ?? "").isEmpty && (passwordTextField.text ?? "").isEmpty
    }
    
    
    func showAuthError() {
        let alertVC = UIAlertController(title: "Ошибка", message: "Введите корректные данные", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        alertVC.addAction(okAction)
        self.present(alertVC, animated: true, completion: nil)
    }

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return identifier == "NewVC"
        if identifier == "NewVC"{
            
            return true
        }else {
            return false
        }
    }
   

//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if identifier == "showMainScreenID" &&  checkAuth(){
//            return true
//        }else {
//            showAuthError()
//            return false
//        }
//    }
//
}

