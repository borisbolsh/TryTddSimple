import XCTest
@testable import TryTddSimple

class TaskListViewControllerTests: XCTestCase {
  var sut: TaskListViewController?

  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = TaskListViewController()
    sut?.loadViewIfNeeded()
  }

  override func tearDownWithError() throws {
    try super.tearDownWithError()
    sut = nil
  }

  func testWhenViewIsLoadedTableViewNotNil() {
    XCTAssertNotNil(sut?.tableView)
  }

  func testWhenViewIsLoadedDataProviderIsNotNil() {
    XCTAssertNotNil(sut?.dataProvider)
  }

  func testWhenViewIsLoadedTableViewDelegateIsSet() {
    XCTAssertTrue(sut?.tableView.delegate is DataProvider)
  }

  func testWhenViewIsLoadedTableViewDataSourceIsSet() {
    XCTAssertTrue(sut?.tableView.dataSource is DataProvider)
  }

  func testWhenViewIsLoadedTableViewDelegateEqualsTableViewDataSource() {
    XCTAssertEqual(
      sut?.tableView.delegate as? DataProvider,
      sut?.tableView.dataSource as? DataProvider
    )
  }
}
