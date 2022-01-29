import XCTest
import CoreLocation
@testable import TryTddSimple

class LocationTests: XCTestCase {
  override func setUpWithError() throws {
    try super.setUpWithError()
  }
  override func tearDownWithError() throws {
    try super.tearDownWithError()
  }

  func testInitSetsName() {
    let location = Location(name: "Foo")
    XCTAssertEqual(location.name, "Foo")
  }

  func testInitSetsCoordinates() {
    let coordinates = CLLocationCoordinate2D(
      latitude: 1,
      longitude: 2
    )

    let location = Location(name: "Foo", coordinates: coordinates)

    XCTAssertEqual(location.coordinates?.latitude, coordinates.latitude)

    XCTAssertEqual(location.coordinates?.longitude, coordinates.longitude)
  }
}
