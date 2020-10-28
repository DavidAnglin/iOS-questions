//
//  MockQuestionCell.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import UIKit

class MockQuestionCell: UITableViewCell {
    static var reuseIdentifier: String {
        return "MockQuestionCell"
    }
    
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with question: Question) {
        titleLabel.text = question.question
    }
}
