import SwiftUI

struct DetailView: View {
    var productTitle: String
    var productImage: String
    var productManufacturer: String
    var scannedBarcode: String
    @State private var news: [String] = ["News Item 1", "News Item 2"] // Example news items

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                AsyncImageView(urlString: productImage)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                Text("Product: \(productTitle)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Manufacturer: \(productManufacturer)")
                    .font(.headline)
                
                Text("Barcode: \(scannedBarcode)")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                if !news.isEmpty {
                    Text("Related News:")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    ForEach(news, id: \.self) { item in
                        Text(item)
                            .padding(.bottom, 2)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Product Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AsyncImageView: View {
    let urlString: String
    
    var body: some View {
        if let url = URL(string: urlString), !urlString.isEmpty {
            AsyncImage(url: url) { image in
                image.resizable()
                     .aspectRatio(contentMode: .fit)
            } placeholder: {
                Image(systemName: "photo")
                     .aspectRatio(contentMode: .fit)
                     .frame(width: 200, height: 200)
            }
        } else {
            Image(systemName: "photo")
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
    }
}
