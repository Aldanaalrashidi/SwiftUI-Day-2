//
//  Athkarr.swift
//  SwiftUI Day2
//
//  Created by tahani alrashidi on 8/22/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

//working on it

//import SwiftUI
//struct thekr{
//    @State var thekrr: String
//    @State var counter: String
//}
// var athkar: [thekr] =
//    [
//        thekr(thekrr: "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ", counter: "0"),
//        thekr(thekrr: "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ.", counter: "0"),
//        thekr(thekrr: "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ.", counter: "0"),
//        thekr(thekrr: "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً. ", counter:"0"),
//        thekr(thekrr: "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم.", counter: "0"),
//        thekr(thekrr: "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.", counter: "0")
//]
//
//struct Athkarr: View {
//    var body: some View {
//        NavigationView{
//            List{
//                NavigationLink(destination: Thekr1(counter: athkar[0].$counter, thekr: athkar[0].$thekrr)){
//                    Thekr0(counter: athkar[0].$counter, thekr: athkar[0].$thekrr).offset(x: 12)
//                }
//
//                NavigationLink(destination: Thekr1(counter: athkar[1].$counter, thekr: athkar[1].$thekrr)){
//                                   Thekr0(counter: athkar[1].$counter, thekr: athkar[1].$thekrr).offset(x: 12)
//                               }
//
//                 NavigationLink(destination: Thekr1(counter: athkar[2].$counter, thekr: athkar[2].$thekrr)){
//                                   Thekr0(counter: athkar[2].$counter, thekr: athkar[2].$thekrr).offset(x: 12)
//                               }
//
//                 NavigationLink(destination: Thekr1(counter: athkar[3].$counter, thekr: athkar[3].$thekrr)){
//                                   Thekr0(counter: athkar[3].$counter, thekr: athkar[3].$thekrr).offset(x: 12)
//                               }
//
//                 NavigationLink(destination: Thekr1(counter: athkar[4].$counter, thekr: athkar[4].$thekrr)){
//                                   Thekr0(counter: athkar[4].$counter, thekr: athkar[4].$thekrr).offset(x: 12)
//                               }
//
//                 NavigationLink(destination: Thekr1(counter: athkar[5].$counter, thekr: athkar[5].$thekrr)){
//                                   Thekr0(counter: athkar[5].$counter, thekr: athkar[5].$thekrr).offset(x: 12)
//                               }
//            }.navigationBarTitle("الأذكار")
////                .onAppear {
////                    self.counter = "0"
////            }
//        }
//    }
//}
//
//struct Athkarr_Previews: PreviewProvider {
//    static var previews: some View {
//        Athkarr()
//    }
//}
//
//struct Thekr0: View {
//    @Binding var counter: String
//    @Binding var thekr: String
//
//    var body: some View {
//        VStack{
//            Text(thekr).font(.system(size: 25)).multilineTextAlignment(.center)
//            Button(action: {
//                self.counter = String(Int(self.counter)! + 1)
//            }) {
//                Text(counter)
//                    .font(.largeTitle)
//            }.frame(width: 50, height: 50, alignment: .center)
//                .foregroundColor(.white)
//                .background(Color.gray.opacity(0.7))
//                .clipShape(Circle())
//                .padding()
//        }
//    }
//}
//
//struct Thekr1: View {
//    @Binding var counter: String
//    @Binding var thekr: String
//
//    var body: some View {
//        VStack{
//            Text(thekr).font(.system(size: 25)).multilineTextAlignment(.center)
//            Button(action: {
//                self.counter = String(Int(self.counter)! + 1)
//
//            }) {
//                Text(counter)
//                    .font(.largeTitle)
//            }.frame(width: 50, height: 50, alignment: .center)
//                .foregroundColor(.white)
//                .background(Color.gray.opacity(0.7))
//                .clipShape(Circle())
//                .padding()
//        }.onTapGesture {
//            self.counter = String(Int(self.counter)! + 1)
//
//        }
//    }
//}
//
//
//
