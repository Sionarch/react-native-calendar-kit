import Foundation
import CalendarKit
import DateToolsSwift

@objc (RNCalendarKitManager)
class RNCalendarKitManager: RCTViewManager {
    
    let rnCalendarKit = RNCalendarKit()
    
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    override func view() -> UIView! {
        if rnCalendarKit.state == nil {
            rnCalendarKit.state = DayViewState()
        }
        
        return rnCalendarKit
    }
}
