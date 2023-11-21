import SwiftUI

struct ImageGalleryView: View {
    let images: [String] = ["12", "12", "12", "12", "12"] 
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack( alignment: .top) {
                        ForEach(images, id: \.self) { imageName in
                            NavigationLink(destination: ImageDetail(imageName: imageName)) {
                                Image(imageName)
                                    .resizable()
                                    .frame(width: 350, height: 500)
                                    .cornerRadius(10)
                                    .scaledToFit()
                                    .shadow(radius: 5)
                            }
                        }
                    }
                   .padding()
                
                    Spacer()
              
            }
            .navigationTitle("Image Gallery")
        }
    }
}

struct ImageDetail: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .navigationBarTitle(imageName, displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGalleryView()
    }
}
