//
//  Repository.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//

import Foundation

class Repository {
    
    func get()  {
        NetworkManager.shared.get()
    }
    func add(studyCard : StudyCard)  {
        NetworkManager.shared.add(studyCard: studyCard)
    } 
    
    
}
