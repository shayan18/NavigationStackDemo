//
//  SheetView.swift
//  ModernNavDemo
//
//  Created by Shayan Ali on 06.01.23.
//

import SwiftUI

enum SheetViewDemo {
	class Model: ObservableObject {
		@Published var sheet: SheetModel?
		
		init(sheet: SheetModel? = nil) {
			self.sheet = sheet
		}
	}
	
	class SheetModel: Identifiable, ObservableObject {
		@Published var popoverValue: Int?
		
		var id: ObjectIdentifier {
			ObjectIdentifier(self)
		}
		
		init(popoverValue: Int? = nil) {
			self.popoverValue = popoverValue
		}
	}
	
	struct ContentView: View {
		@ObservedObject var model: Model
		
		var body: some View {
			Button("Show sheet") {
				self.model.sheet = SheetModel()
			}
			.sheet(item: self.$model.sheet) { sheetModel in
				SheetView(model: sheetModel)
			}
		}
	}
	
	struct SheetView: View {
		@ObservedObject var model: SheetModel
		
		var body: some View {
			Button("Show popover") {
				self.model.popoverValue = .random(in: 1...100)
			}
			.popover(item: self.$model.popoverValue) { value in
				PopoverView(count: value)
					.frame(width: 300, height: 300)
			}
		}
	}
	
	
	struct PopoverView: View {
		@State var count: Int
		var body: some View {
			HStack {
				Button("Minus") { self.count -= 1 }
				Text("\(self.count)")
				Button("Plus") { self.count += 1 }
			}
		}
	}
}

extension Int: Identifiable {
	public var id: Self { self }
}
