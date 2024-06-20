//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Ivan Yarm on 6/19/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack {
                VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
            }
        } //:Vstack
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
}
