//
//  ModernNavApp.swift
//  ModernNavApp
//
//  Created by Shayan Ali on 06.01.23.
//

import SwiftUI

@main
struct ModernNavApp: App {
	var body: some Scene {
		WindowGroup {
			
			SheetViewDemo.ContentView(
				model: .init()
			)
			
		// uncomment me: 🤩
			
		/*
			NavigationView {
				EmptyView()
				NavigateThenSheetThenPopover.ContentView(
					model: .init(child: .init(sheetModel: .init(popoverValue: 66))))
			}
			.navigationViewStyle(.stack)
		 */

			// uncomment me too: 🫣
			/*
			NavigationView {
				EmptyView()
				NestedNavigationDemo.ContentView(model: .init(child: .init(child: .init(child: .init(child: .init())))))
			}
			.navigationViewStyle(.stack)
			 */
			
			
			
//			NavigationStackDemo.ContentView(
//				model: .init()
//			)
			
			
			
			//	NavigationPathView()
		}
	}
}
