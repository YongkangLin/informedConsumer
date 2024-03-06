import SwiftUI

struct DetailView: View {
    var productTitle: String
    var productImage: String
    var productManufacturer: String
    var scannedBarcode: String
    var ingredientAnalysis: String?
    var stores: [OnlineStore]?
    var news: [news]?

    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                AsyncImageView(urlString: productImage)
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                Text(productTitle)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Manufacturer: \(productManufacturer)")
                    .font(.headline)
                
                Text("Barcode: \(scannedBarcode)")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                Text("Manufacturer News:")
                    .font(.title2)
                    .fontWeight(.bold)
                
                if ((news?.isEmpty) != nil) {
                    ForEach(news!, id: \.headline) { item in
                        Link(destination: URL(string: item.url)!) {
                            Text(item.headline)
                                .foregroundColor(.blue)
                                .padding(.bottom, 2)
                        }
                    }
                } else {
                    Text("No News Found")
                        .foregroundColor(.blue)
                        .padding(.bottom, 2)
                }
                
                Text("Prices Online: ")
                    .font(.title2)
                    .fontWeight(.bold)
                
                if let stores = stores, !stores.isEmpty {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(stores, id: \.name) { store in
                            VStack() {
                                Text(store.name)
                                    .fontWeight(.semibold)
                                Text("Price: \(store.price)")
                                Link("Visit Store", destination: URL(string: store.url)!)
                                    .foregroundColor(.blue)
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .cornerRadius(10)
                            .border(Color.gray, width: 1)
                        }
                    }
                    .padding(.top, 5)

                } else {
                    Text("No available prices found")
                        .font(.subheadline)
                        .padding(.bottom, 10)
                }
                
                Text("Ingredient Integrity:")
                    .font(.title2)
                    .fontWeight(.bold)
                
                if let analysis = ingredientAnalysis {
                    if analysis.isEmpty {
                        Text("No harmful ingredient found")
                            .font(.subheadline)
                            .padding(.bottom, 10)
                    } else {
                        Text(analysis)
                            .font(.subheadline)
                            .padding(.bottom, 10)
                    }
                } else {
                    Text("Loading ingredient analysis...")
                        .font(.subheadline)
                        .padding(.bottom, 10)
                }
            }
            .padding()
        }
        .navigationTitle("Product Details")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
            }
        }
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
