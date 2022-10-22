//
//  StringExtensions.swift
//  EquipmentMaintainance
//
//  Created by Drillmaps on 22/10/22.
//

import Foundation


extension String {
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        print(self)
        return emailTest.evaluate(with: email)
    }
    
    var isPasswordStrong : Bool {
        return true
    }
}
