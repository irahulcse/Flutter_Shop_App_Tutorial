'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/AssetManifest.json": "25a1130020ceb8a052f7df34d682201c",
"/assets/LICENSE": "964211db6a8b173b1744e68da77ce459",
"/assets/assets/1.jpeg": "a84b6d4a0f51c819e966f5dd7cc55ade",
"/assets/assets/2.jpg": "4413bd986c8449b28923f0e8599b5e25",
"/assets/assets/3.jpg": "85c7bb9498a9878b8369a7cfbc099701",
"/assets/assets/fonts/Anton-Regular.ttf": "13770dde4178c487efc63d33866fe613",
"/assets/assets/fonts/Lato-Bold.ttf": "2d15decc87393ec398f00dc3d7a2163d",
"/assets/assets/fonts/Lato-Regular.ttf": "c5eb54404c9dbda925f7142d6343c913",
"/assets/assets/4.jpg": "787c84887c74b592b3c6aee3f2bfec24",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/FontManifest.json": "b91460a6ddeb73d03124339171014148",
"/main.dart.js": "408f4dbc406e2d47730e6b08391469f6",
"/index.html": "305f96d96da7044827c187860051e9e7"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
