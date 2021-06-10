//
//  PDFContentView.swift
//  Ratch
//
//  Created by DQ on 07.06.21.
//

import SwiftUI
import PDFKit

struct PDFContentView: NSViewRepresentable {
    typealias NSViewType = PDFView
    typealias Context = NSViewRepresentableContext<PDFContentView>
    
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func makeNSView(context: Context) -> NSViewType {
        let pdfview = PDFView()
        pdfview.document = PDFDocument(url: url)
        return pdfview
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
    }
}
