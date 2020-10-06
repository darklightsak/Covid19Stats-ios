//
//  StatsWidgetSmall.swift
//  Covid19StatsWidgetExtension
//
//  Created by Surasak Wattanapradit on 6/10/2563 BE.
//

import SwiftUI
import WidgetKit

struct StatsWidgetSmall: View {
    
    var entry: TotalCaseEntry
    
    var body: some View {
        VStack(spacing: 0) {
            TitleDateHeader(title: entry.totalCount.title, date: entry.date)
                .padding(.vertical, 4)
                .padding(.horizontal)
            CaseStatView(text: "Confiremed", totalCountText: entry.totalCount.confirmedText, color: confirmedColor)
            CaseStatView(text: "Death", totalCountText: entry.totalCount.deathText, color: deathColor)
            CaseStatView(text: "Recoverd", totalCountText: entry.totalCount.recoveredText, color: recoveredColor)
        }
        .redacted(reason: entry.isPlaceholder ? .placeholder : .init())
    }
}

struct StatsWidgetSmall_Previews: PreviewProvider {
    static var previews: some View {
        StatsWidgetSmall(entry: TotalCaseEntry.placeholder)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
