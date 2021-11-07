//
//  ContentView.swift
//  SwiftUIPractice211107
//
//  Created by branch10480 on 2021/11/07.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
//      View1()
//      View2()
//      View3()
      View4()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

/// Case1
struct View1: View {
  var body: some View {
    HStack {
      Text("DevTechie")
        .font(.largeTitle)
      Text("Learn by example")
        .font(.title3)
    }
  }
}

/// Case2
struct View2: View {
  @State private var spacing: CGFloat = 1.0
  
  var body: some View {
    HStack(spacing: spacing) {
      Text("D")
        .font(.system(size: 38))
      Text("E")
        .font(.system(size: 34))
      Text("V")
        .font(.system(size: 30))
      Text("T")
        .font(.system(size: 26))
      Text("H")
        .font(.system(size: 22))
      Text("C")
        .font(.system(size: 18))
      Text("H")
        .font(.system(size: 14))
      Text("I")
        .font(.system(size: 10))
      Text("E")
        .font(.system(size: 6))
    }
    .padding()
    .border(Color.orange)
    .task {
      spacing = spacing == 1 ? 20 : 1
    }
    .animation(
      Animation.easeInOut(duration: 2).repeatForever(),
      value: spacing
    )
  }
}

/// Case3
struct View3: View {
  @State private var alignmentProp: VerticalAlignment = .center
  
  var body: some View {
    VStack {
      HStack(alignment: alignmentProp) {
        VStack {
          Text("DevTechie")
          Text("Learn by example")
        }
        .font(.largeTitle)
        
        HStack {
          Text("SwiftUI")
          Text("Swift")
          Text("iOS")
        }
        .padding()
        .background(Color.blue)
      }
      .frame(maxWidth: .infinity)
      .background(Color.orange)
      .animation(.easeInOut, value: alignmentProp)
      
      ControlGroup {
        Button("Top") {
          alignmentProp = .top
        }
        Button("Center") {
          alignmentProp = .center
        }
        Button("Bottom") {
          alignmentProp = .bottom
        }
        Button("First Text") {
          alignmentProp = .firstTextBaseline
        }
        Button("Last Text") {
          alignmentProp = .lastTextBaseline
        }
      }
      .padding(20)
    }
  }
}

/// Case4
struct View4: View {
  var body: some View {
    HStack {
      Capsule()
        .fill(Color.orange)
        .overlay(Text("Dev"))
      Capsule()
        .fill(Color.blue)
        .overlay(Text("Tech"))
      Capsule()
        .fill(Color.teal)
        .overlay(Text("ie"))
    }
    .frame(maxHeight: 200)
  }
}
