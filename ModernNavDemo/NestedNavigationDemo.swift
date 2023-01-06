//
//  NestedNavigation.swift
//  ModernNavDemo
//
//  Created by Shayan Ali on 07.01.23.
//

import SwiftUI

enum NestedNavigationDemo {
	class Model: ObservableObject {
		@Published var child: Model?
		init(child: Model? = nil) {
			self.child = child
		}
	}
	
	struct ContentView: View {
		@ObservedObject var model: Model
		
		var body: some View {
			NavigationLink(
				"Go to child Screen",
				isActive: Binding(
					get: { self.model.child != nil },
					set: { isActive in
						self.model.child = isActive ? Model() : nil
					}
				)
			) {
				if let child = self.model.child {
					ContentView(model: child)
				}
			}
		}
	}
}

