//
//  Project_39_Unit_TestingTests.swift
//  Project-39-Unit-TestingTests
//
//  Created by Raul Sulaimanov on 04.04.19.
//  Copyright © 2019 Raul Sulaimanov. All rights reserved.
//

import XCTest
@testable import Project_39_Unit_Testing

class Project_39_Unit_TestingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAllWordsLoaded() {
        let playData = PlayData()
            XCTAssertEqual(playData.allWords.count, 384001, "allWords was not 384001")
    }
}
