import SwiftUI

struct ContentView: View {
    
    @State var offset: CGFloat = 0

    var body: some View {
        ZStack {
            GeometryReader { geomerty  in
                Image("cloud")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .ignoresSafeArea()
        
            ScrollView {
                VStack {
                    if offset >= 50 {
                        Text("부산광역시")
                            .font(.title)
                    } else {
                        VStack {
                            Text("부산광역시")
                                .font(.title)
                            HStack {
                                Text("8°")
                                    .font(.title3)
                                Text("맑음")
                                    .font(.title3)
                            }
                        }
                    }

                    Text("8°")
                        .font(.system(size: 80, weight:.thin))
                        .opacity(setOpacity())
                    Text("맑음")
                        .font(.title3)
                        .opacity(setOpacity())
                    HStack {
                        Text("최고:9°")
                            .font(.title3)
                            .opacity(setOpacity())
                        Text("최저:-1°")
                            .font(.title3)
                            .opacity(setOpacity())
                    }
                }
                .offset(y: -offset + 70)
                .background(
                    GeometryReader(content: { geometry -> Color in
                        let minY = geometry.frame(in: .global).minY
                        
                        DispatchQueue.main.async {
                            offset = minY
                        }
                        
                        return Color.clear
                    })
                )
                
                BlurStackView {
                    Text("남은 하루 동안 맑은 상태가 이어지겠습니다. 돌풍의 풍속은 최대 6m/s입니다.")
                } contentView: {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 35) {
                            ForecaseView(time: "지금", imageName: "cloud.sun", celcius: 8)
                            ForecaseView(time: "오후2시", imageName: "cloud.sun", celcius: 9)
                            ForecaseView(time: "오후3시", imageName: "cloud.sun", celcius: 9)
                            ForecaseView(time: "오후4시", imageName: "cloud.sun", celcius: 9)
                            ForecaseView(time: "오후5시", imageName: "cloud.sun", celcius: 7)
                            ForecaseView(time: "오후6시", imageName: "moon", celcius: 5)
                        }
                    }
//                    HStack {
//                        VStack {
//                            Text("지금")
//                            Image(systemName: "cloud.fill")
//                            Text("8°")
//                        }
//                        VStack {
//                            Text("오후 3시")
//                            Image(systemName: "cloud.fill")
//                            Text("8°")
//                        }
//                        VStack {
//                            Text("오후 4시")
//                            Image(systemName: "cloud.fill")
//                            Text("8°")
//                        }
//                        VStack {
//                            Text("오후 5시")
//                            Image(systemName: "cloud.fill")
//                            Text("7°")
//                        }
//                    }
                }

                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10일간의 일기예보")
                    }
                } contentView: {
                    VStack {
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                    }
                }
                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10일간의 일기예보")
                    }
                } contentView: {
                    VStack {
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                    }
                }
                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10일간의 일기예보")
                    }
                } contentView: {
                    VStack {
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                    }
                }
                BlurStackView {
                    HStack {
                        Image(systemName: "calendar")
                        Text("10일간의 일기예보")
                    }
                } contentView: {
                    VStack {
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                        HStack {
                            Text("오늘")
                            Image(systemName: "cloud.fill")
                            Text("0°")
                        }
                    }
                }
            }
        }
    }
    
    func setOpacity() -> CGFloat {
        if offset < 70 {
            return offset/70
        } else {
            return 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
