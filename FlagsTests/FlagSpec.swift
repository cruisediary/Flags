//
//  FlagSpec.swift
//  FlagSpec
//
//  Created by Cruz on 18/10/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import Flags
class FlagSpec: QuickSpec {
    
    override func spec() {
        super.spec()
        var sut: Flag?
        
        describe("Flag") {
            for countryCode in NSLocale.isoCountryCodes {
                context("when country code is \(countryCode)") {
                    beforeEach {
                        sut = Flag(countryCode: countryCode)
                    }
                    
                    it("should not be nil") {
                        expect(sut).toNot(beNil())
                    }
                    
                    it("emoji should not be nil") {
                        expect(sut?.emoji).toNot(beNil())
                    }
                    
                    it("image should not be nil") {
                        expect(sut?.image).toNot(beNil())
                    }

                    it("country name should not be nil") {
                        expect(sut?.countryName).toNot(beNil())
                    }
                }
                
                context("when country code is lowercased \(countryCode.lowercased())") {
                    beforeEach {
                        sut = Flag(countryCode: countryCode.lowercased())
                    }
                    
                    it("should not be nil") {
                        expect(sut).toNot(beNil())
                    }
                    
                    it("emoji should not be nil") {
                        expect(sut?.emoji).toNot(beNil())
                    }
                    
                    it("image should not be nil") {
                        expect(sut?.image).toNot(beNil())
                    }
                }
            }
        }
    }
}
