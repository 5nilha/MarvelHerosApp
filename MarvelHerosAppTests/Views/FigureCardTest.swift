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
        figureCard.primaryViewColor = .blue
        figureCard.separatorColor = .yellow
        
        XCTAssertEqual(figureCard.backgroundColor, .blue)
        XCTAssertEqual(figureCard.hightligtedColor, .yellow)
        
        figureCard.isHightlighted = true
        XCTAssertEqual(figureCard.backgroundColor, .yellow)
        XCTAssertEqual(figureCard.primaryViewColor, .blue)
        
        figureCard.isHightlighted = false
        XCTAssertEqual(figureCard.backgroundColor, .blue)
        XCTAssertEqual(figureCard.primaryViewColor, .blue)
    }
    
    func testComponentColorsSetters() {
        figureCard.primaryViewColor = .blue
        XCTAssertEqual(figureCard.backgroundColor, .blue)
        
        figureCard.separatorColor = .yellow
        XCTAssertEqual(figureCard.separatorColor, .yellow)
        XCTAssertEqual(figureCard.hightligtedColor, .yellow)
        XCTAssertEqual(figureCard.backgroundColor, .blue)
        
        figureCard.titleColor = .green
        XCTAssertEqual(figureCard.titleColor, .green)
        XCTAssertEqual(figureCard.backgroundColor, .blue)
    }
}
