//
//  Athkar.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/22/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import SwiftUI

struct Athkar: View {
    @State var counter: [String] = ["0", "0", "0", "0", "0", "0"]
    @State var thekr: [String] = ["قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.", "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.", "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.", "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً.", "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. ", "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم."]
    var body: some View {
        NavigationView{
            
            List{
                NavigationLink(destination: Thekr2(counter:$counter[0], thekr: $thekr[0])){
                    Thekr(counter: $counter[0], thekr: $thekr[0]).offset(x: 12)
                }
                
                NavigationLink(destination: Thekr2(counter:$counter[1], thekr: $thekr[1])){
                    Thekr(counter: $counter[1], thekr: $thekr[1]).offset(x: 27)
                }
                
                NavigationLink(destination: Thekr2(counter:$counter[2], thekr: $thekr[2])){
                    Thekr(counter: $counter[2], thekr: $thekr[2]).offset(x: 16)
                }
                
                NavigationLink(destination: Thekr2(counter:$counter[3], thekr: $thekr[3])){
                    Thekr(counter: $counter[3], thekr: $thekr[3]).offset(x: 35)
                }
                
                NavigationLink(destination: Thekr2(counter:$counter[4], thekr: $thekr[4])){
                    Thekr(counter: $counter[4], thekr: $thekr[4]).offset(x: 21)
                }
                
                NavigationLink(destination: Thekr2(counter:$counter[5], thekr: $thekr[5])){
                    Thekr(counter: $counter[5], thekr: $thekr[5]).offset(x: 17)
                }
            }.navigationBarTitle("الأذكار")
                .onAppear {
                    self.counter = ["0", "0", "0", "0", "0", "0"]
            }
        }
    }
}

struct Athkar_Previews: PreviewProvider {
    static var previews: some View {
        Athkar()
    }
}

struct Thekr: View {
    @Binding var counter: String
    @Binding var thekr: String
    var body: some View {
        VStack{
            Text(thekr).font(.system(size: 25)).multilineTextAlignment(.center)
            Button(action: {
                self.counter = String(Int(self.counter)! + 1)
            }) {
                Text(counter)
                    .font(.largeTitle)
            }.frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.gray.opacity(0.7))
                .clipShape(Circle())
                .padding()
        }
    }
}

struct Thekr2: View {
    @Binding var counter: String
    @Binding var thekr: String
    var body: some View {
        VStack{
            Text(thekr).font(.system(size: 25)).multilineTextAlignment(.center)
            Button(action: {
                self.counter = String(Int(self.counter)! + 1)
            }) {
                Text(counter)
                    .font(.largeTitle)
            }.frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.7))
                    .clipShape(Circle())
                    .padding()
            }.onTapGesture {
                self.counter = String(Int(self.counter)! + 1)
            }
        }
    }

