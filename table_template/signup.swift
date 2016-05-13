//
//  signup.swift
//  ProjectV1
//
//  Created by DE DPU on 5/4/2559 BE.
//  Copyright © 2559 Kimhore. All rights reserved.
//

import UIKit

class signup: UIViewController {
    
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmpassword: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signup(sender: AnyObject) {
        
        if(password != confirmpassword){
            let kumulosAPI = Kumulos()
            kumulosAPI.createUserWithUsername(user.text, andPassword: password.text, andEmail: email.text)
            var alert = UIAlertView(title: "Success", message: "Logged In", delegate: self, cancelButtonTitle: "OK")
            alert.show()
            
        }else{
           var alert = UIAlertView(title: "Error", message: "กรุณาใส่ให้ตรงกัน", delegate: self, cancelButtonTitle: "OK")
            alert.show()

        }
    }
    
    
}
