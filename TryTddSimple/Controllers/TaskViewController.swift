import UIKit

class TaskListViewController: UIViewController {
  let tableView = UITableView()
  let dataProvider: DataProvider?

  init() {
    self.dataProvider = DataProvider()
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .yellow

    view.addSubview(tableView)
    tableView.dataSource = dataProvider
    tableView.delegate = dataProvider
    tableView.register(TaskCell.self, forCellReuseIdentifier: String(describing: TaskCell.self))
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()

    tableView.frame = view.bounds
  }
}
