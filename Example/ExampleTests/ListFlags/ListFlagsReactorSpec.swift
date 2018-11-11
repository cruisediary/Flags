//
//  ListFlagsReactorSpec.swift
//  ExampleTests
//
//  Created by Cruz on 11/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import Example
class ListFlagsReactorSpec: QuickSpec {
    override func spec() {
        super.spec()
        var sut: ListFlagsReactor!
        beforeEach {
            sut = ListFlagsReactor()
        }

        describe("ListFlagsReactor") {
            context("when empty typing action") {
                beforeEach {
                    sut.action.onNext(.typing(text: ""))
                }

                it("countryCodes count should greater than 254") {
                    expect(sut.currentState.flags.count)
                        .toEventually(beGreaterThan(254))
                }
            }

            context("when country name 'Sweden' typing action") {
                beforeEach {
                    sut.action.onNext(.typing(text: "Sweden"))
                }

                it("should filter 'SE' country code") {
                    expect(sut.currentState.flags.first?.countryCode)
                        .toEventually(equal("SE"))
                }
            }
        }
    }
}
