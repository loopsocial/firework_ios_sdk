//
//  CartItemViewCell.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

class CartItemViewCell: UITableViewCell {

    private static let cache = NSCache<NSURL, UIImage>()
    private var fetchingImageURL: URL?

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        itemImage.image = nil
        productLabel.text = nil
        unitLabel.text = nil
        priceLabel.text = nil
        self.fetchingImageURL = nil
    }

    override func prepareForReuse() {
        itemImage.image = nil
    }

    private static let session = URLSession(configuration: .default)
    func setProductImage(_ url: URL?) {
        guard let url = url else {
            return
        }
        if let cachedImage = Self.cache.object(forKey: url as NSURL) {
            self.itemImage.image = cachedImage
            return
        }
        fetchingImageURL = url
        DispatchQueue.global(qos: .userInitiated).async {
            URLSession.shared.dataTask(with: url) { [weak self] (data, _, error) in
                guard
                    let self = self,
                    error == nil,
                    let data = data,
                    let image = UIImage(data: data)
                else {
                    self?.itemImage.image = UIImage(systemName: "shippingbox")
                    return
                }
                Self.cache.setObject(image, forKey: url as NSURL)
                guard url == self.fetchingImageURL else { return }
                DispatchQueue.main.async { [weak self] in
                    guard let self = self else { return }
                    self.itemImage.image = image
                    self.fetchingImageURL = nil
                }
            }.resume()
        }
    }

}
