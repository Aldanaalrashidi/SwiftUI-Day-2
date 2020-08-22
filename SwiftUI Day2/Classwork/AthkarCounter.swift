//
//  AthkarCounter.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/20/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct AthkarCounter: View {
    @State var counter: [String] = ["0", "0", "0"]
    @State var thekr: [String] = ["استغفرالله العظيم", "سبحان الله وبحمده", "الحمدالله"]
    var body: some View {
        VStack(alignment: .trailing){
            ThekrButton(counter: $counter[0], thekr: $thekr[0])
            ThekrButton(counter: $counter[1], thekr: $thekr[1])
            ThekrButton(counter: $counter[2], thekr: $thekr[2])
        }

    }
}


struct AthkarCounter_Previews: PreviewProvider {
    static var previews: some View {
        AthkarCounter()
    }
}

struct ThekrButton: View {
    @Binding var counter: String
    @Binding var thekr: String
    var body: some View {
        HStack{
            Text(thekr).font(.largeTitle)
            Button(action: {
                self.counter = String(Int(self.counter)! + 1)
            }) {
                Text(counter)
                    .font(.largeTitle)
            }.frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
        }
    }
}
