//
//  RNCalendarKit.swift
//  norsuHomeApp
//
//  Created by Eric Svensson on 2018-11-12.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit
import CalendarKit
import DateToolsSwift

class RNCalendarKit: UIView, DayViewStateUpdating {

    @objc var onMove: RCTDirectEventBlock?

    static let headerVisibleHeight: CGFloat = 88
    var headerHeight: CGFloat = headerVisibleHeight

    let dayHeaderView = DayHeaderView()
    var dayHeaderStyle = DayHeaderStyle()

    func move(from oldDate: Date, to newDate: Date) {
        if onMove != nil {
            onMove!(["to": newDate.toString(dateFormat: "yyyy-MM-dd")])
        }
    }

    public var state: DayViewState? {
        willSet(newValue) {
            print("willSet state")
            state?.unsubscribe(client: self)
        }
        didSet {
            print("didSet state")
            state?.subscribe(client: self)
            dayHeaderView.state = state

        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.addSubview(dayHeaderView)

        dayHeaderStyle.backgroundColor = UIColor(white: 247/255, alpha: 0)
        dayHeaderView.updateStyle(dayHeaderStyle)

        //    if state == nil {
        //      state = DayViewState()
        //      print("Set dayviewstate!")
        //    }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        dayHeaderView.anchorAndFillEdge(.top, xPad: 0, yPad: 0, otherSize: headerHeight)
    }
}

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
