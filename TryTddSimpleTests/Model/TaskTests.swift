import XCTest
@testable import TryTddSimple

class TaskTests: XCTestCase {
  func testInitTaskWithTitle() {
    let task = Task(title: "Foo")

    XCTAssertNotNil(task)
  }

  func testInitTaskWithTitleAndDescription() {
    let task = Task(title: "Foo", description: "Bar")

    XCTAssertNotNil(task)
  }

  func testWhenGivenTitleSetsTitle() {
    let task = Task(title: "Foo")

    XCTAssertEqual(task.title, "Foo")
  }

  func testWhenGivenDescriptionSetsDescription() {
    let task = Task(title: "Foo", description: "Bar")

    XCTAssertTrue(task.description == "Bar")
  }

  func testTaskInitsWithDate() {
    let task = Task(title: "Foo")

    XCTAssertNotNil(task.date)
  }

  func testWhenGivenLocationSetsLocation() {
    let location = Location(name: "Foo")

    let task = Task(
      title: "Foo",
      description: "Bar",
      location: location
    )

    XCTAssertEqual(location, task.location)
  }
}
