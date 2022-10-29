//
//  StringExtension.swift
//  EquipmentManagement
//
//  Created by Drillmaps on 28/10/22.
//

import Foundation

extension String {
    
    var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
}
