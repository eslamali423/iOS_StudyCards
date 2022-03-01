//
//  CardModel.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//

import Foundation
import FirebaseFirestoreSwift

public struct StudyCard : Codable ,Identifiable{
    
    @DocumentID public var id :  String?
    let question :  String
    let answer :  String
    let pressed : Bool = false
    
    
    init(question : String , answer : String ) {
        self.question = question
        self.answer = answer
    }
}
