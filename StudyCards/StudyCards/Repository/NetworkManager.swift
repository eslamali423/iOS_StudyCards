//
//  NetworkManager.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//


import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class NetworkManager {
    
    static let shared =  NetworkManager()
    
    let store =  Firestore.firestore()
    @Published   var studyCards : [StudyCard] = []
    let path  = "StudyCards"
    
    

    func get()  {
        store.collection(path).addSnapshotListener { (snapshot, error) in
            guard let snapshot =  snapshot , error == nil else {
                print(error)
                return
            }
            
            
            self.studyCards = snapshot.documents.compactMap {
            try? $0.data(as: StudyCard.self)
            } ?? []
       
        }
       
    }
    
    func add (studyCard :  StudyCard){
        do {
           _ =  try store.collection(path).addDocument(from: studyCard )
        }catch{
            print("utgyutguytbiuyitfgybuukbh")
        }
        
    }
    
    
    }// class
    
    




