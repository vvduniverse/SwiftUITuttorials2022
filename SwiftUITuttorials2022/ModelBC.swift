//
//  ModelBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 16.03.2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBC: View {
    
    @State private var users: [UserModel] = [
    UserModel(displayName: "Marath", userName: "gurin_DC", followerCount: 1024, isVerified: true),
    UserModel(displayName: "Enthony", userName: "mamba22", followerCount: 333, isVerified: true),
    UserModel(displayName: "Kiril", userName: "torchik", followerCount: 10000, isVerified: true),
    UserModel(displayName: "Alexandra", userName: "sashkagirl", followerCount: 666, isVerified: false),
    UserModel(displayName: "Butusov", userName: "batiavash", followerCount: 2, isVerified: false),
    UserModel(displayName: "Vahtang", userName: "tushkun", followerCount: 999, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .foregroundColor(.mint)
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.yellow)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

struct ModelBC_Previews: PreviewProvider {
    static var previews: some View {
        ModelBC()
    }
}
