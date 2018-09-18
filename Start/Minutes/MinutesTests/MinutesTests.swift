//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Abdul Shamim on 18/09/18.
//  Copyright © 2018 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
    var entryTest: Entry!
    
    override func setUp() {
        super.setUp()
        
        entryTest = Entry("Title", "Content")
    }
    
    override func tearDown() {
        entryTest = nil
        super.tearDown()
    }
    
    func testSerialization() {
        let serializeData = FileEntryStore.serialize(entryTest)
        let entry = FileEntryStore.deserialize(serializeData!)
        
        XCTAssertEqual(entry?.title, "Titls", "Title does not match")
        XCTAssertEqual(entry?.content, "Content", "Content does not match")
    }
    
   
}
