//
//  DecodableTestCase.swift
//  MoviesDataModelTest
//
//  Created by Putri Rahmadewi on 21/03/23.
//

import Foundation
import XCTest

protocol DecodableTestCase: class {
    associatedtype T: Decodable
    var sut: T! { get set }
}
extension DecodableTestCase {
    func givenSUTFromJSON(fileName: String = "\(T.self)") throws {
        let decoder = JSONDecoder()
        let data = try Data.fromJSON(fileName: fileName)
        sut = try decoder.decode(T.self, from: data)
    }
}
