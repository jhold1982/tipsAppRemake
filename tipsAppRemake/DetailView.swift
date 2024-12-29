//
//  DetailView.swift
//  tipsAppRemake
//
//  Created by Justin Hold on 12/28/24.
//

import SwiftUI

struct DetailView: View {
	
	// MARK: - Properties
	
	
	
	// MARK: - View Body
    var body: some View {
		
		TabView {
			ForEach(0..<5) { _ in
				PageView()
			}
		}
		.navigationTitle("Essentials")
		.navigationBarTitleDisplayMode(.inline)
		.tabViewStyle(PageTabViewStyle())
		.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    DetailView()
}
