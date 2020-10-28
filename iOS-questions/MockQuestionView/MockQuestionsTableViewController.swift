//
//  MockQuestionsTableViewController.swift
//  iOS-questions
//
//  Created by David Anglin on 10/28/20.
//

import UIKit

class MockQuestionsTableViewController: UITableViewController {
    
    // MARK: Properties
    weak var coordinator: MainCoordinator?
    var viewModel: MockQuestionsVMContract!
    
    init(viewModel: MockQuestionsVMContract) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: type(of: self)), bundle: Bundle.main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Questions"
        
        tableView.tableFooterView = UIView.init(frame: .zero)
        tableView.register(UINib.init(nibName: MockQuestionCell.reuseIdentifier, bundle: Bundle.main), forCellReuseIdentifier: MockQuestionCell.reuseIdentifier)
        
        viewModel.questionsUpdated = tableView.reloadData
    }
}

// MARK: - Table view data source
extension MockQuestionsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MockQuestionCell.reuseIdentifier, for: indexPath) as? MockQuestionCell else {
            return UITableViewCell()
        }

        let question = viewModel.questions[indexPath.row]
        cell.configure(with: question)
        return cell
    }
}
