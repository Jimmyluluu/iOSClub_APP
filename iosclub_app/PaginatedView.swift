//
//  PaginatedView.swift
//  iosclub_app
//
//  Created by 薛竣祐 on 2020/9/7.
//  Copyright © 2020 魯敬元. All rights reserved.
//  Git on  gist.github.com/mattThousand/794a3d2d57242188211346f0f3411bc2


import SwiftUI

struct PaginatedView<Page: View & Identifiable>: View {
  @State private var totalOffset: CGFloat = 0
  @State private var pageOffset: CGFloat = 0
  @State private var currentPageIndex: Int = 0
  var pages: [Page]
  var spacing: CGFloat

  var body: some View {
    GeometryReader { proxy in
      VStack {
        HStack(spacing: self.spacing) {
          ForEach(self.pages) { (page: Page) in
            page
              .frame(width: proxy.size.width - self.spacing, height: proxy.size.height)
              .shadow(radius: 5)
          }
        }
        .padding(.bottom, 30)
        .gesture(self.dragGesture(pageWidth: proxy.size.width))
        .offset(x: self.totalOffset, y: 0)
        DotsComponent(pageIndex: self.currentPageIndex,
                      pageCount: self.pages.count)
            .offset(y:-50)
      }
      .onAppear {
        self.totalOffset = proxy.size.width / 2 * (CGFloat(self.pages.count) - 1)
        self.pageOffset = self.totalOffset
      }
    }
  }

  func dragGesture(pageWidth: CGFloat) -> AnyGesture<DragGesture.Value> {
    let gesture = DragGesture()
      .onChanged({ value in
        self.totalOffset += value.translation.width
      })
      .onEnded({ value in
        withAnimation {
          if self.pageOffset != pageWidth * round(self.totalOffset / pageWidth) {
            let o = self.pageOffset - self.totalOffset
            print(self.pageOffset)
            switch o {
            case (-.infinity)...0:
              guard self.currentPageIndex > 0 else {
                self.totalOffset = self.pageOffset
                return
              }
              // Decrement Index
              self.currentPageIndex -= 1
            case 0...(.infinity):
              guard self.currentPageIndex < self.pages.count - 1 else {
                self.totalOffset = self.pageOffset
                return
              }
              // Increment Index
              self.currentPageIndex += 1
            default:
              break
            }
          }
          self.totalOffset = pageWidth * round(self.totalOffset / pageWidth)
          self.pageOffset = self.totalOffset
        }
      })
    return AnyGesture(gesture)
  }

}


/// Page Model
struct Page: View, Identifiable {
    var id: Int {
        index
    }
    var index: Int
    var name:String
    var is_manager:Bool
    var body: some View {
        ZStack{
            Image("CheckIn")
                .fixedSize(horizontal: false, vertical: true)
            VStack{
                HStack{
                    Image("card")
                    VStack(alignment:.leading){
                        Text(name).foregroundColor(.white).font(.system(.headline,design:.rounded)).tracking(6)
                        
                        Text(is_manager ? "MANAGER" : "MEMBER")
                            .foregroundColor(.white).font(.system(.footnote,design:.rounded))
                    }
                }
                Image("CheckInline")
            }
            DateView(count: "第\(6*index-5)週",offset: [-55,-45])
            DateView(count: "第\(6*index-4)週",offset: [55,-45])
            DateView(count: "第\(6*index-3)週",offset: [-55,95])
            DateView(count: "第\(6*index-2)週",offset: [55,95])
            DateView(count: "第\(6*index-1)週",offset: [-55,225])
            DateView(count: "第\(6*index)週",offset: [55,225])
        }
    }
}

/// Paging Dots
private struct DotsComponent: View {
    var pageIndex: Int
    var pageCount: Int
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<self.pageCount) { index in
                Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(index == self.pageIndex ? .white : .gray)
            }
        }
    }
}

/// Int to Float Conversion
private extension Int {
    var toFloat: CGFloat {
        CGFloat(self)
    }
}
struct DateView:View {
    var count:String
    var offset:[CGFloat]
    var body: some View{
        Text(count)
        .foregroundColor(Color.gray)
        .tracking(3)
        .font(.system(.caption,design:.rounded))
        .offset(x: offset[0],y: offset[1])
    }
}

struct scrolltest_Previews: PreviewProvider {
    static var previews: some View {
        PaginatedView(
            pages: [
                Page(index: 1,name: "薛竣祐",is_manager: true),
                Page(index: 2,name: "薛竣祐",is_manager: true),
                Page(index: 3,name: "薛竣祐",is_manager: true),
                Page(index: 4,name: "薛竣祐",is_manager: true),
                Page(index: 5,name: "薛竣祐",is_manager: true)
            ], spacing: CGFloat(50)
        ).background(Color.black).edgesIgnoringSafeArea(.all)
    }
}
