//
//  LabeledCardTest.swift
//  MarvelHerosAppTests
//
//  Created by Fabio Quintanilha on 16/04/23.
//

import XCTest
@testable import MarvelHerosApp

final class LabeledCardTest: XCTestCase {

    let labeledCard = LabeledCard()
    
    func testImage() {
        labeledCard.image = UIImage(named: "img_test")
        XCTAssertEqual(labeledCard.imageView.image,  labeledCard.image)
    }
    
    func testHeadline() {
        labeledCard.headline = "Super Hero"
        XCTAssertEqual(labeledCard.headLineView.text, labeledCard.headline)
        XCTAssertFalse(labeledCard.headLineView.isHidden)
    }
    
    func testInfo() {
        labeledCard.info = "I wil save the world agains enemies."
        XCTAssertEqual(labeledCard.infoView.text, labeledCard.info)
        XCTAssertFalse(labeledCard.infoView.isHidden)
    }
}
