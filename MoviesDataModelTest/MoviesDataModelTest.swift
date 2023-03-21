//
//  MoviesDataModelTest.swift
//  MoviesDataModelTest
//
//  Created by Putri Rahmadewi on 19/03/23.
//

import XCTest
@testable import MVVMMoviesApp

class MoviesDataModelTest: XCTestCase, DecodableTestCase {
    var sut: MoviesData!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        try givenSUTFromJSON()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        try super.tearDownWithError()
    }

    // MARK: - Type Tests
    func testConformsToDecodable() {
        XCTAssertTrue((sut as Any) is Decodable) // cast silences a warning
    }
    
    func testDecodableSetsDocs() {
        XCTAssertNotNil(sut.movies)
        XCTAssertEqual(sut.movies.count ?? -1, 2)
    }

}
