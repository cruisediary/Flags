//
//  ListFlagUITests.swift
//  ExampleUITests
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import XCTest

class ListFlagUITests: UITestCase {
    func testSearchFieldExists() {
        XCTAssertTrue(app.searchFields.firstMatch.exists)
    }

    func testCollectionViewExists() {
        XCTAssertTrue(app.collectionViews.firstMatch.exists)
    }

    func testFindSwedenFlagWhenTypingTextSE() {
        // given
        let searchField = app.searchFields.firstMatch

        // when
        searchField.tap()
        searchField.typeText("SE")

        // then
        XCTAssertTrue(app.staticTexts.matching(identifier: "🇸🇪").firstMatch.exists)
    }

    func testDefaultListFlags() {
        let collectionView = app.collectionViews.firstMatch
        XCTAssertTrue(collectionView.cells.count > 0)
    }
}
