//
//  DetailView.swift
//  HackerNews
//
//  Created by everis on 3/01/21.
//  Copyright © 2021 Irwin Oporto. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "htpps://wwww.google.com")
    }
}


