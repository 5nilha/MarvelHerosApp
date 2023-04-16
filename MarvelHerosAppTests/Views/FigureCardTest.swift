//
//  FigureCardTest.swift
//  MarvelHerosAppTests
//
//  Created by Fabio Quintanilha on 16/04/23.
//

import XCTest
@testable import MarvelHerosApp

final class FigureCardTest: XCTestCase {
    
    let figureCard = FigureCard()
    
    func testTitle() {
        figureCard.title = "Super Hero"
        XCTAssertEqual(figureCard.titleView.text, figureCard.title)
        XCTAssertFalse(figureCard.titleView.isHidden)
    }
    
    func testFigureImage() {
        figureCard.image = UIImage(named: "img_test")
        XCTAssertEqual(figureCard.imageView.image,  figureCard.image)
    }

    func testHightlightingOnClick() {
        figureCard.isHightlighted = true
        XCTAssertEqual(figureCard.backgroundColor, .red)
        
        figureCard.isHightlighted = false
        XCTAssertEqual(figureCard.backgroundColor, .black)
    }
}
