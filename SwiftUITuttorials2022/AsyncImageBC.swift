//
//  AsyncImageBC.swift
//  SwiftUITuttorials2022
//
//  Created by Vahtee Boo on 20.03.2022.
//

import SwiftUI

struct AsyncImageBC: View {
    
    let url = URL(string: "https://picsum.photos/500")
    
    /*
     case empty ->      No image is loaded.
     case success(Image) ->      An image succesfully loaded.
     case failure(Error) ->      An image failed to load with an error.
     */
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
        //        AsyncImage(url: url) { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 200, height: 200)
        //                .cornerRadius(20)
        //        } placeholder: {
        //            ProgressView()
        //        }
    }
}

struct AsyncImageBC_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBC()
    }
}
