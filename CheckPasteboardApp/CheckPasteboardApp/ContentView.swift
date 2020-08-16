//
//  ContentView.swift
//  CheckPasteboardApp
//
//  Created by pook on 8/16/20.
//  Copyright © 2020 jinwoopeter. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.list, id: \.self) {
                    Text($0 ?? "nil")
                }
            }
            .navigationBarTitle("RepeatView")
            .onAppear {
                self.viewModel.start()
            }
            .onDisappear {
                self.viewModel.stop()
                self.viewModel.list = []
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Model

class ContentViewModel: ObservableObject {
    private var repeatViewTimer: DispatchSourceTimer? = nil
    @Published var list: [String?] = []
    
    func start() {
        let source = DispatchSource.makeTimerSource(queue: DispatchQueue.global())
        source.setEventHandler(handler: {
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.list.insert(UIPasteboard.general.string, at: 0)
            }
        })
        source.schedule(deadline: .now(), repeating: 1.0, leeway: .nanoseconds(0))
        source.resume()
        repeatViewTimer = source
    }
    
    func stop() {
        repeatViewTimer?.cancel()
        repeatViewTimer = nil
    }
}
