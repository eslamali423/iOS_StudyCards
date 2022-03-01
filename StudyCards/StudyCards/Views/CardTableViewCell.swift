//
//  CardTableViewCell.swift
//  StudyCards
//
//  Created by Eslam Ali  on 01/03/2022.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func starButton(_ sender: Any) {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
    func  configureCell(question : String)  {
        questionLabel.text =  question
    }
    
    

}
