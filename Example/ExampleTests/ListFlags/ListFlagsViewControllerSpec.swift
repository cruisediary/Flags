//
//  ListFlagsViewControllerSpec.swift
//  ExampleTests
//
//  Created by Cruz on 04/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import Example
class ListFlagsViewControllerTests: QuickSpec {

    override func spec() {
        super.spec()
        var sut: ListFlagsViewController!
        var window: UIWindow!

        beforeEach {
            sut = ListFlagsViewController()
            window = UIWindow()
            window.addSubview(sut.view)
            window.makeKeyAndVisible()
            RunLoop.current.run(until: Date())
        }

        describe("ListFlagsViewController") {
            it("collectionView delegate & datasource should not be nil") {
                expect(sut.collectionView.delegate).toNot(beNil())
                expect(sut.collectionView.dataSource).toNot(beNil())
            }
        }
    }
}
