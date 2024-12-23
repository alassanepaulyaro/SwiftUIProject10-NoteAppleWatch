//
//  DetailView.swift
//  SwiftUIProject10-NoteAppleWatch Watch App
//
//  Created by Yaro Paul  on 23/12/2024.
//

import SwiftUI

struct DetailView: View {
    
    let note: Note
    let count: Int
    let index: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            
            HeaderView(title: "")
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                
            }
            .foregroundColor(.secondary)
        }
        .padding(3)
    }
}

#Preview {
    var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    
    DetailView(note: sampleData, count: 5, index: 1)
}
