//
//  Constants.swift
//  DeckTransition
//
//  Created by Harshil Shah on 04/08/17.
//  Copyright © 2017 Harshil Shah. All rights reserved.
//

open class DeckConstants {
    
    /// Default duration for present and dismiss animations when the user hasn't
    /// specified one
    public static var defaultAnimationDuration: TimeInterval = 0.3
    
    /// The corner radius applied to the presenting and presented view
    /// controllers's views
    public var cornerRadius: CGFloat = 8
    
    /// The alpha value of the presented view controller's view
    public var alphaForPresentingView: CGFloat = 0.8
    
    /// As best as I can tell using my iPhone and a bunch of iOS UI templates I
    /// came across online, 8 points is the distance between the top edges of
    /// the presented and the presenting views
    public var initialInsetForPresentedView: CGFloat = 8
    public var maxAllowInsetForPresentedView: CGFloat?
    
    public var allowExpansionEvenInSmallContent = true
    
    //Params to configure splitter in the top of presented controller
    public var topSplitterNeeded : Bool = false
    public var topSplitterColor : UIColor = UIColor.white
    public var topSplitterWidth : CGFloat = 35
    public var topSplitterHeight : CGFloat = 5
    public var topSplitterCornerRadius : CGFloat = 2.5
    public var topSplitterVerticalOffset : CGFloat = 15
    
    public init() {
        
    }
}
