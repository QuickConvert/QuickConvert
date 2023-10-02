//
//  QuickConvertWidgetsLiveActivity.swift
//  QuickConvertWidgets
//
//  Created by Nevio Hirani on 02.10.23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct QuickConvertWidgetsAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct QuickConvertWidgetsLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: QuickConvertWidgetsAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension QuickConvertWidgetsAttributes {
    fileprivate static var preview: QuickConvertWidgetsAttributes {
        QuickConvertWidgetsAttributes(name: "World")
    }
}

extension QuickConvertWidgetsAttributes.ContentState {
    fileprivate static var smiley: QuickConvertWidgetsAttributes.ContentState {
        QuickConvertWidgetsAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: QuickConvertWidgetsAttributes.ContentState {
         QuickConvertWidgetsAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: QuickConvertWidgetsAttributes.preview) {
   QuickConvertWidgetsLiveActivity()
} contentStates: {
    QuickConvertWidgetsAttributes.ContentState.smiley
    QuickConvertWidgetsAttributes.ContentState.starEyes
}
