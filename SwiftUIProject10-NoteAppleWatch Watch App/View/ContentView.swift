//
//  ContentView.swift
//  SwiftUIProject10-NoteAppleWatch Watch App
//
//  Created by Yaro Paul  on 23/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add New Note", text: $text)
                    
                    Button {
                        guard text.isEmpty == false else { return }
                        let note = Note(id: UUID(), text: text)
                        notes.append(note)
                        text = ""
                        save()
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.accentColor)
                }
                
                Spacer()
                Text("\(notes.count)")
                
                
            }
            .navigationTitle("Note")
        }
    }
    
    
    func save() {
        dump(notes)
    }
}

#Preview {
    ContentView()
}
