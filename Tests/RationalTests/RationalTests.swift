import XCTest
@testable import Rational

class RationalTests: XCTestCase {
	
	func testRational() {
		let ratio: Rational = 1/4
		
		XCTAssertEqual(Double(ratio), 0.25)
	}
	
	func testDivideByZero() {
		XCTAssertEqual(Rational(1, 0).isNaN, true)
	}
	
    static var allTests : [(String, (RationalTests) -> () throws -> Void)] {
        return [
			("testRational", testRational),
            ("testDivideByZero", testDivideByZero),
        ]
    }
}
