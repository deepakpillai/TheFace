//
//  ContentView.swift
//  TheFace
//
//  Created by Deepak on 14/02/23.
//

import SwiftUI

enum ControlPosition {
    case left
    case center
    case right
}
struct ContentView: View {
    @State var isHappyVisable = false
    @State var isConfusedVisable = true
    @State var isSadVisable = false
    
    @State var mouthWidth = 30.0
    @State var mouthHeight = 60.0
    @State var confusedColorWidth = 1000.0
    @State var confusedColorHeight = 1000.0
    @State var happyColorWidth = 0.0
    @State var happyColorHeight = 0.0
    
    @State var leftEyeBlackX = -20.0
    @State var leftEyeBlackY = -18.0
    @State var leftEyeInnerWhiteX = -25.0
    @State var leftEyeInnerWhiteY = -22.0
    
    @State var rightEyeBlackX = -20.0
    @State var rightEyeBlackY = -18.0
    @State var rightEyeInnerWhiteX = -25.0
    @State var rightEyeInnerWhiteY = -22.0
    
    @State var leftEyeBlackWidth = 30.0
    @State var leftEyeBlackHeight = 30.0
    @State var leftEyeInnerWhiteWidth = 10.0
    @State var leftEyeInnerWhiteHeight = 10.0
    
    @State var rightEyeBlackWidth = 30.0
    @State var rightEyeBlackHeight = 30.0
    @State var rightEyeInnerWhiteWidth = 10.0
    @State var rightEyeInnerWhiteHeight = 10.0
    
    @State var leftEyeWidth = 100.0
    @State var leftEyeHeight = 100.0
    
    @State var rightEyeWidth = 100.0
    @State var rightEyeHeight = 100.0
    
    @State var mouthSpacer = 0.0
    @State var eyeHSpacing = 20.0
    
    @State var shouldShowTeath = false
    
    @State var dragCircleX = 0.0
    @State var dragCircleColor = Color.init(red: 248/255, green: 208/255, blue: 85/255)
    @State var currentPosition: ControlPosition = .center
    @State var leftControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
    @State var centerControlPointColor = Color.black
    @State var rightControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
    
    var body: some View {
        ZStack {
            Color(red: 237/255, green: 131/255, blue: 77/255)
             //SadColor
            Circle()
                .frame(width: confusedColorWidth, height: confusedColorHeight)
                .foregroundColor(Color.init(red: 248/255, green: 208/255, blue: 85/255)) //ConfusedColor
            Circle()
                .frame(width: happyColorWidth, height: happyColorHeight)
                .foregroundColor(Color(red: 166/255, green: 204/255, blue: 102/255)) //HappyColor
            VStack(spacing: 30) {
                Spacer()
                    .frame(height: 80)
                VStack {
                    if isSadVisable {
                        Text("sad")
                            .font(.system(size: 80))
                            .font(Font.headline.weight(.heavy))
                            .bold()
                            .foregroundStyle(LinearGradient(colors: [.white, Color(red: 237/255, green: 113/255, blue: 83/255)], startPoint: .top, endPoint: .bottom))
                            .animation(.easeInOut)
                    }
                    if isConfusedVisable {
                        Text("confuse")
                            .font(.system(size: 80))
                            .font(Font.headline.weight(.heavy))
                            .bold()
                            .foregroundStyle(LinearGradient(colors: [.white, Color.init(red: 248/255, green: 208/255, blue: 85/255)], startPoint: .top, endPoint: .bottom))
                            .animation(.easeInOut)
                    }
                    if isHappyVisable {
                        Text("happy")
                            .font(.system(size: 80))
                            .font(Font.headline.weight(.heavy))
                            .bold()
                            .foregroundStyle(LinearGradient(colors: [.white, Color(red: 166/255, green: 204/255, blue: 102/255)], startPoint: .top, endPoint: .bottom))
                            .animation(.easeInOut)
                    }
                    
                }
                HStack(spacing: eyeHSpacing) {
                    ZStack {
                        Circle()
                            .frame(width: leftEyeWidth, height: leftEyeHeight)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: leftEyeBlackWidth, height: leftEyeBlackHeight)
                            .foregroundColor(.black)
                            .offset(x: leftEyeBlackX, y: leftEyeBlackY)
                        Circle()
                            .frame(width: leftEyeInnerWhiteWidth, height: leftEyeInnerWhiteHeight)
                            .foregroundColor(.white)
                            .offset(x: leftEyeInnerWhiteX, y: leftEyeInnerWhiteX)
                        Circle()
                            .mask(MoonMask().fill(style: FillStyle(eoFill: true)))
                            .frame(width: 100, height: 100)
                            .rotationEffect(Angle(degrees: 65))
                            .foregroundColor(.red.opacity(0.2))
                            .blur(radius: 4)
                        Circle()
                            .mask(MoonMask().fill(style: FillStyle(eoFill: true)))
                            .frame(width: 100, height: 100)
                            .rotationEffect(Angle(degrees: 35))
                            .foregroundColor(Color(red: 236/255, green: 98/255, blue: 77/255))
                            .blur(radius: 6)
                            .offset(x: 11, y: 7)
                    }
                    ZStack {
                        Circle()
                            .frame(width: rightEyeWidth, height: rightEyeHeight)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: rightEyeBlackWidth, height: rightEyeBlackHeight)
                            .foregroundColor(.black)
                            .offset(x: rightEyeBlackX, y: rightEyeBlackY)
                        Circle()
                            .frame(width: rightEyeInnerWhiteWidth, height: rightEyeInnerWhiteHeight)
                            .foregroundColor(.white)
                            .offset(x: rightEyeInnerWhiteX, y: rightEyeInnerWhiteY)
                        Circle()
                            .mask(MoonMask().fill(style: FillStyle(eoFill: true)))
                            .frame(width: 100, height: 100)
                            .rotationEffect(Angle(degrees: 65))
                            .foregroundColor(.red.opacity(0.2))
                            .blur(radius: 4)
                        Circle()
                            .mask(MoonMask().fill(style: FillStyle(eoFill: true)))
                            .frame(width: 100, height: 100)
                            .rotationEffect(Angle(degrees: 35))
                            .foregroundColor(Color(red: 236/255, green: 98/255, blue: 77/255))
                            .blur(radius: 6)
                            .offset(x: 11, y: 7)
                    }
                }
                HStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.white, lineWidth: 20)
                            .frame(width: mouthWidth, height: mouthHeight)
                            .background(.black)
                        if shouldShowTeath {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: -8, y: -13)
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: -21, y: -13)
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: 5, y: -13)
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: 18, y: -13)
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: -8, y: 13)
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: -21, y: 13)
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: 5, y: 13)
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 10, height: 20)
                                .foregroundColor(.white)
                                .offset(x: 18, y: 13)
                        }
                    }
                    Spacer()
                        .frame(width: mouthSpacer)
                }
                
                Spacer()
                    .frame(height: 150)
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 330)
                    VStack(spacing: 50) {
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.white)
                                Circle()
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(dragCircleColor)
                                    .gesture(DragGesture(minimumDistance: 10, coordinateSpace: .global)
                                        .onEnded({ value in
                                            if value.translation.width < 0 {
                                                // left
                                                if currentPosition == .center {
                                                    sadLeft()
                                                } else if currentPosition == .right {
                                                    confucedCenter()
                                                }
                                            }

                                            if value.translation.width > 0 {
                                                // right
                                                print("right")
                                                if currentPosition == .left {
                                                    confucedCenter()
                                                } else if currentPosition == .center {
                                                    happyRight()
                                                }
                                            }
                                        }))
                                HStack {
                                    RoundedRectangle(cornerRadius: 20, style: .circular)
                                        .frame(width: 5, height: 30)
                                        .foregroundColor(.gray.opacity(0.6))
                                    RoundedRectangle(cornerRadius: 20, style: .circular)
                                        .frame(width: 5, height: 30)
                                        .foregroundColor(.gray.opacity(0.6))
                                }
                            }
                        }
                        .offset(x: dragCircleX, y: 20)
                        HStack(spacing: 25) {
                            RoundedRectangle(cornerRadius: 20, style: .circular)
                                .frame(width: 10, height: 70)
                                .foregroundColor(leftControlPointColor)
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color(red: 216/255, green: 214/255, blue: 217/255))
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color(red: 216/255, green: 214/255, blue: 217/255))
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color(red: 216/255, green: 214/255, blue: 217/255))
                            RoundedRectangle(cornerRadius: 20, style: .circular)
                                .frame(width: 10, height: 70)
                                .foregroundColor(centerControlPointColor)
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color(red: 216/255, green: 214/255, blue: 217/255))
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color(red: 216/255, green: 214/255, blue: 217/255))
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color(red: 216/255, green: 214/255, blue: 217/255))
                            RoundedRectangle(cornerRadius: 20, style: .circular)
                                .frame(width: 10, height: 70)
                                .foregroundColor(rightControlPointColor)
                        }
                    }
                    .offset(y: -115)
                }
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
    
    func shouldShowTeathFunc() {
        if isSadVisable {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                shouldShowTeath = true
            }
        } else {
            shouldShowTeath = false
        }
    }

    func sadLeft() {
        withAnimation {
            isHappyVisable = false
            isSadVisable = true
            isConfusedVisable = false
            mouthWidth = 110
            mouthHeight = 45
            confusedColorWidth = 0
            confusedColorHeight = 0
            happyColorWidth = 0
            happyColorHeight = 0
            
            leftEyeBlackX = 0.0
            leftEyeBlackY = 0.0
            leftEyeInnerWhiteX = 0.0
            leftEyeInnerWhiteY = 0.0
            
            rightEyeBlackX = 0.0
            rightEyeBlackY = 0.0
            rightEyeInnerWhiteX = 0.0
            rightEyeInnerWhiteY = 0.0
            
            leftEyeBlackWidth = 15
            leftEyeBlackHeight = 15
            leftEyeInnerWhiteWidth = 5
            leftEyeInnerWhiteHeight = 5
            
            rightEyeBlackWidth = 15
            rightEyeBlackHeight = 15
            rightEyeInnerWhiteWidth = 5
            rightEyeInnerWhiteHeight = 5
            
            
            leftEyeWidth = 80
            leftEyeHeight = 80
            
            rightEyeWidth = 80
            rightEyeHeight = 80
            
            mouthSpacer = 0
            eyeHSpacing = 60
            dragCircleX = -140
            shouldShowTeathFunc()
            currentPosition = .left
            dragCircleColor = Color(red: 237/255, green: 131/255, blue: 77/255)
            leftControlPointColor = .black
            centerControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
            rightControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
        }
    }

    func confucedCenter() {
        withAnimation {
            isHappyVisable = false
            isSadVisable = false
            isConfusedVisable = true
            mouthWidth = 30
            mouthHeight = 60
            confusedColorWidth = 1000
            confusedColorHeight = 1000
            happyColorWidth = 0
            happyColorHeight = 0

            leftEyeBlackX = -20
            leftEyeBlackY = -18
            leftEyeInnerWhiteX = -25
            leftEyeInnerWhiteY = -22

            rightEyeBlackX = -20
            rightEyeBlackY = -18
            rightEyeInnerWhiteX = -25
            rightEyeInnerWhiteY = -22

            leftEyeBlackWidth = 30
            leftEyeBlackHeight = 30
            leftEyeInnerWhiteWidth = 10
            leftEyeInnerWhiteHeight = 10

            rightEyeBlackWidth = 30
            rightEyeBlackHeight = 30
            rightEyeInnerWhiteWidth = 10
            rightEyeInnerWhiteHeight = 10

            leftEyeWidth = 100
            leftEyeHeight = 100

            rightEyeWidth = 100
            rightEyeHeight = 100

            mouthSpacer = 30
            eyeHSpacing = 20
            dragCircleX = 0
            shouldShowTeathFunc()
            currentPosition = .center
            dragCircleColor = Color.init(red: 248/255, green: 208/255, blue: 85/255)
            leftControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
            centerControlPointColor = .black
            rightControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
        }
    }

    func happyRight() {
        withAnimation {
            isHappyVisable = true
            isSadVisable = false
            isConfusedVisable = false
            mouthWidth = 80
            mouthHeight = 30
            confusedColorWidth = 0
            confusedColorHeight = 0
            happyColorWidth = 1000
            happyColorHeight = 1000

            leftEyeBlackX = 5.0
            leftEyeBlackY = 5.0
            leftEyeInnerWhiteX = 10
            leftEyeInnerWhiteY = 10

            rightEyeBlackX = 5.0
            rightEyeBlackY = 5.0
            rightEyeInnerWhiteX = 10
            rightEyeInnerWhiteY = 10

            leftEyeBlackWidth = 30
            leftEyeBlackHeight = 30
            leftEyeInnerWhiteWidth = 10
            leftEyeInnerWhiteHeight = 10

            rightEyeBlackWidth = 30
            rightEyeBlackHeight = 30
            rightEyeInnerWhiteWidth = 10
            rightEyeInnerWhiteHeight = 10

            leftEyeWidth = 100
            leftEyeHeight = 100

            rightEyeWidth = 100
            rightEyeHeight = 100

            mouthSpacer = 0
            eyeHSpacing = 20
            dragCircleX = 140
            shouldShowTeathFunc()
            currentPosition = .right
            dragCircleColor = Color(red: 166/255, green: 204/255, blue: 102/255)
            leftControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
            centerControlPointColor = Color(red: 216/255, green: 214/255, blue: 217/255)
            rightControlPointColor = .black
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MoonMask: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Rectangle().path(in: rect)
        path.addPath(Circle().path(in: rect.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            .offsetBy(dx: -15, dy: 0)))
        return path
    }
}
