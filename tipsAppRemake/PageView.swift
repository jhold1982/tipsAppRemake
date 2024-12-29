//
//  PageView.swift
//  tipsAppRemake
//
//  Created by Justin Hold on 12/28/24.
//

import SwiftUI

struct PageView: View {
	
	// MARK: - Properties
	let tipText = String(
		repeating: "Lorem ipsum dolar sit amet, consectetur adipiscing elit. ",
		count: Int.random(in: 2...5)
	)
	
	// MARK: - View Body
    var body: some View {
        
		GeometryReader { geo in
			ScrollView {
				VStack(alignment: .leading) {
					Image(systemName: "square.and.arrow.up")
						.resizable()
						.scaledToFit()
						.padding()
					
					VStack(alignment: .leading, spacing: 10) {
						Text("Pre-heading goes here")
							.font(.subheadline)
							.textCase(.uppercase)
							.foregroundStyle(.secondary)
						
						Text("Heading goes here")
							.font(.title)
						
						Text(tipText)
					}
					.padding([.top, .horizontal])
					.offset(x: geo.frame(in: .global).minX / 5)
				}
			}
		}
    }
}

#Preview {
    PageView()
}
