//
//  ContentView.swift
//  SwiftUIPlayingNew
//
//  Created by IslamSwira on 29/12/2024.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var body: some View {
        GeometryReader { _ in
            ZStack {
                Color(.darkGray)
                SpriteView(scene: SnowFall(), options: [.allowsTransparency])
            }
        }
//        .ignoresSafeArea()
    }
}


class SnowFall: SKScene {
    override func sceneDidLoad() {
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        anchorPoint = CGPoint(x: 0.5, y: 1)
        backgroundColor = .clear


        let node = SKEmitterNode(fileNamed: "ParticleRain.sks")!
        addChild(node)
        node.particlePositionRange.dx = UIScreen.main.bounds.width
    }
}

#Preview {
    ContentView()
}
