//
//  AwesomeApiTests.swift
//  AwesomeApiTests
//
//  Created by Fábio Salata on 25/10/19.
//  Copyright © 2019 Fábio Salata. All rights reserved.
//

import XCTest
@testable import AwesomeApi

class AwesomeApiTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTestRunSuccess() {
        let e = expectation(description: "Awesome request")
        
        AwesomeAPIClient.shared.testRun {
            e.fulfill()
        }
        
        waitForExpectations(timeout: 10) { error in
            if error != nil {
                print ("Failed")
            }
        }
    }

}
