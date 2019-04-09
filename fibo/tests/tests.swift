import XCTest

class Tests: XCTestCase {
    private var fibo: Fibo!
    
    override func setUp() {
        fibo = Fibo()
    }
    
    func testNumbers() {
        XCTAssertEqual(1, fibo.number(1))
        XCTAssertEqual(1, fibo.number(2))
        XCTAssertEqual(2, fibo.number(3))
        XCTAssertEqual(3, fibo.number(4))
        XCTAssertEqual(5, fibo.number(5))
        XCTAssertEqual(8, fibo.number(6))
        XCTAssertEqual(13, fibo.number(7))
        XCTAssertEqual(0, fibo.number(0))
    }
}

fileprivate class Fibo {
    func number(_ integer: Int) -> Int {
        if integer < 1 {
            return 0
        } else if integer == 1 || integer == 2 {
            return 1
        } else {
            return number(integer - 1) + number(integer - 2)
        }
    }
}
