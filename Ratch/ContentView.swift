//
//  ContentView.swift
//  Ratch
//
//  Created by DQ on 27.05.21.
//

import SwiftUI

struct ContentView: View {
    @State var pdfURL: URL?;
    
    var body: some View {
        VStack {
            if pdfURL == nil {
                Button("Open", action: {
                    let panel = NSOpenPanel()
                    panel.allowsMultipleSelection = false
                    panel.canChooseDirectories = false
                    if panel.runModal() == .OK {
                        self.pdfURL = panel.url
                    }
                })
            } else {
                PDFContentView(url: self.pdfURL!)
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
