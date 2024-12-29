//
//  ContentView.swift
//  tipsAppRemake
//
//  Created by Justin Hold on 12/28/24.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - Properties
	
	
	
	// MARK: - View Body
    var body: some View {
        
		NavigationView {
			ListingView()
				.navigationTitle("Collections")
				.onAppear {
					UITableView.appearance().backgroundColor = UIColor(named: "Background")
					UIPageControl.appearance().currentPageIndicatorTintColor = .label
				}
		}
    }
}

#Preview {
    ContentView()
}
