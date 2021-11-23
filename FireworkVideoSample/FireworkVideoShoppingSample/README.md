# Firework Video Shopping

This sample app contains code that focuses on Firework Video shopping. This sample code assumes you are familiar with the basics of
working with `FireworkVideoSDK`. If you are not familiar with how to setup `FireworkVideoSDK` then start with the FireworkVideoSample
app code first.

## Setup

### Firework Video

Follow the intstructions in the FireworkVideoSample app README.md to integrate `FireworkVideoSDK`.

### Shopify Integration Example

There is an example of how to integrate with Shopify for product hydration. To use shopify, simply update the `apiKey` and `storefront`
in the `ShopifyStorefront.swift` file. You must also select your channel playlist that contains videos with products associated to 
your shopify instance. Update the `channelID` and `playlistID` in the `HomeViewController.swift` file with the IDs for your channel playlist.
