//
//  ListingView.swift
//  tipsAppRemake
//
//  Created by Justin Hold on 12/28/24.
//

import SwiftUI

struct ListingView: View {
	
	// MARK: - Properties
	
	
	
	// MARK: - View Body
    var body: some View {
		
		List {
			Section(header: NavigationLink(destination: DetailView()) {
				ZStack(alignment: .topLeading) {
					Image(systemName: "person")
						.renderingMode(.original)
						.resizable()
						.scaledToFill()
						.frame(height: 250)
						.clipShape(RoundedRectangle(cornerRadius: 10))
					
					VStack(alignment: .leading) {
						Text("What's new")
							.font(.title).bold()
							.foregroundStyle(.red)
						
						Text("2 Tips")
							.foregroundStyle(Color.red.opacity(0.8))
					}
					.textCase(.none)
					.offset(x: 15, y: 10)
				}
			}) {
				ForEach(0..<30) { row in
					NavigationLink(destination: DetailView()) {
						ListingRow()
					}
					.listRowBackground(Color.green)
				}
			}
		}
		.listStyle(.grouped)
    }
}

#Preview {
    ListingView()
}
