//
//  ContentView.swift
//  Formulir
//
//  Created by Muhammd Rafa Al bani on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(){
                    NavigationLink(destination: About()){
                    HStack{
                        Image("foto2")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack (alignment: .leading){
                            Text("Al bani").font(.headline)
                            Text("Gamer").font(.callout)
                        }
                    }
                    }
                    .padding(.top,10)
                    .padding(.bottom,10)
                }
                Section(header : Text("Pengaturan umum")){
                    NavigationLink(destination: About()){
                    HStack{
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Pesan Berbintang")
                    }
                    }
                    NavigationLink(destination: About()){
                    HStack{
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Whatsapp Web")
                    }
                }
                    
                }
                Section(header : Text("Pengaturan Akun")){
                    NavigationLink(destination: About()){
                    HStack{
                        Image(systemName: "person")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Akun")
                    }
            }
                    NavigationLink(destination: About()){
                    HStack{
                        Image(systemName: "phone.circle")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Chat")
                    }
                }
                }
            }
            .navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About : View {
    var body: some View{
        Text("Ini adalah halaman about")
    }
}
