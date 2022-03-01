//
//  ViewController.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel =  CardViewModel()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
        
        let card  =  StudyCard(question: "eslam??", answer: "eslam...")
        viewModel.add(studyCard: card)
        viewModel.get()
        
        
        
    }
    
    // table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NetworkManager.shared.studyCards.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath ) as! CardTableViewCell
        let data = viewModel.get()
        cell.configureCell(question: NetworkManager.shared.studyCards[indexPath.row].question)
        return cell
    }
    
    


}

