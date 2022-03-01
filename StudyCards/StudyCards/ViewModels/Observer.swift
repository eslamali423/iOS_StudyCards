//
//  Observer.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//

import Foundation

class Observer <T> {
    
    var value  : T? {
        didSet {
            listner?(value)
        }
    }
    
    var listner : ((T?) -> Void)?
 
    init(value : T?) {
        self.value =  value
    }

    
    func bind(listner : @escaping ((T?)-> Void))  {
        listner(value)
        self.listner = listner
    }
    
}
