import XCTest
@testable import Rational

class RationalTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Rational().text, "Hello, World!")
    }


    static var allTests : [(String, (RationalTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
