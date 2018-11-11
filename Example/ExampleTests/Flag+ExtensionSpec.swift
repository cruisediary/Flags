//
//  Flag+ExtensionSpec.swift
//  ExampleTests
//
//  Created by Cruz on 12/11/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import XCTest
import Flags
import Quick
import Nimble

@testable import Example
class FlagExtensionSpec: QuickSpec {
    override func spec() {
        super.spec()
        var sut: Flag!

        describe("Flag+Extension") {
            describe("given Sweden Flag") {
                beforeEach {
                    sut = Flag(countryCode: "SE")
                }

                it("emoji with name should be '🇸🇪 Sweden'") {
                    expect(sut.emojiWithName) == "🇸🇪 Sweden"
                }
            }

            describe("given Korea Flag") {
                beforeEach {
                    sut = Flag(countryCode: "KR")
                }

                it("emoji with name should be '🇰🇷 South Korea'") {
                    expect(sut.emojiWithName) == "🇰🇷 South Korea"
                }
            }
        }
    }
}
