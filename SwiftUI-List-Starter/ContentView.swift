//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView{
            List(videos, id: \.id) { video in
                NavigationLink(
                    destination: VideoDetailView(video: video), label: {
                        HStack {
                            Image(video.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 70)
                                .cornerRadius(4)
                                .padding(.vertical, 5)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(video.title)
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                
                                Text(video.uploadDate)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                )
            }
            .navigationTitle("Navigation and Lists")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
