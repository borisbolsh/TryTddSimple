import UIKit

enum Section: Int {
  case todo
  case done
}

class DataProvider: NSObject {
  var taskManager: TaskManager?
}

extension DataProvider: UITableViewDelegate {}

// MARK: UITableViewDataSource
extension DataProvider: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    guard let section = Section(rawValue: section) else { fatalError() }
    guard let taskManager = taskManager else { return 0 }
    switch section {
    case .todo: return taskManager.tasksCount
    case .done: return taskManager.doneTasksCount
    }
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(
      withIdentifier: String(describing: TaskCell.self), for: indexPath
    ) as! TaskCell 
    if let task = taskManager?.task(at: indexPath.row) {
      cell.configure(withTask: task)
    }
    return cell
  }

  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
}
