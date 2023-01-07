//
//  NavigationPath.swift
//  ModernNavDemo
//
//  Created by Shayan Ali on 07.01.23.
//

import SwiftUI

struct NavigationPathView: View {
//	@State var path = {
//		var path = NavigationPath()
//		path.append("A")
//		path.append("B")
//		path.append("C")
//		path.append(50)
//		return path
//	}()
	
	var body: some View {
			NavigationStack {
				List {
					NavigationLink(value: "A") {
						Text("Screen A")
					}
					NavigationLink(value: "B") {
						Text("Screen B")
					}
					NavigationLink(value: "C") {
						Text("Screen C")
					}
					
					NavigationLink(value: 50) {
						Text("Screen 50")
					}
				}
				.navigationDestination(for: String.self, destination: { letter in
					Text("Screen \(letter)")
						.navigationTitle(Text(letter))
				})
				.navigationDestination(for: Int.self, destination: { digit in
					Text("\(digit)")
						.navigationTitle(Text("\(digit)"))
				})
				.navigationTitle("Main View")
			}
			//		.onChange(of: self.path) { path in
			//			dump(path)
			//		}
		}
		
}


//struct ListView: View {
//	var body: some View {
//		List {
//			NavigationLink(value: "A") {
//				Text("Screen A")
//			}
//			NavigationLink(value: "B") {
//				Text("Screen B")
//			}
//			NavigationLink(value: "C") {
//				Text("Screen C")
//			}
//
//			NavigationLink(value: 42) {
//				Text("Screen 42")
//			}
//		}
//	}
//}

//VStack {
//	Button {
//			 self.path = NavigationPath()
//			 for _ in 0...Int.random(in: 3...6) {
//				 if Bool.random() {
//					 self.path.append(Int.random(in: 1...1_000))
//				 } else {
//					 self.path.append(
//						 String(
//							 Character(
//								 UnicodeScalar(
//									 UInt32.random(
//										 in: "A".unicodeScalars.first!.value
//											 ...
//											 "Z".unicodeScalars.first!.value
//									 )
//								 )!
//							 )
//						 )
//					 )
//				 }
//			 }
//		 } label: {
//			 Text("Random stack")
//		 }
