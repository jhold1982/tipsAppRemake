//
//  ListingRow.swift
//  tipsAppRemake
//
//  Created by Justin Hold on 12/28/24.
//

import SwiftUI

struct ListingRow: View {
	// MARK: - Properties
	
	
	
	// MARK: - View Body
    var body: some View {
        
		HStack(spacing: 10) {
			
			Image(systemName: "sun.max")
				.resizable()
				.scaledToFit()
				.frame(width: 44, height: 44)
				.clipShape(RoundedRectangle(cornerRadius: 10))
				.background(Color(white: 0.7, opacity: 0.25))
			
			VStack(alignment: .leading) {
				Text("Welcome to the Jungle")
					.font(.title).bold()
				Text("Get to know stuff")
				Text("5 tips")
					.foregroundStyle(.secondary)
			}
		}
			
    }
}

#Preview {
    ListingRow()
}
