//
//  CardViewModel.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//

import Foundation
import Combine

class CardViewModel {
    
    var repository = Repository()
   // @Published   var studyCards : [StudyCard] = []
   // var studyCards =  NetworkManager.shared.studyCards

    func get()  {
        repository.get()
    }
    
    func  add( studyCard : StudyCard)  {
        repository.add(studyCard: studyCard)
    }
    
    
    
    
}
