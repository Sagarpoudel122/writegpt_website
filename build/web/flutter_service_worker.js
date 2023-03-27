'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "trigger_hotkey.js": "dcbf90fac8833db157dda1b485cdeb50",
"version.json": "5c979ed9c11d9edc91dc91b370bc9f7a",
"index.html": "5ff3a2b8d587a969b58729e835e0db90",
"/": "5ff3a2b8d587a969b58729e835e0db90",
"main.dart.js": "662e001792a594a373afab1247e4a09c",
"flutter.js": "1cfe996e845b3a8a33f57607e8b09ee4",
"favicon.png": "f835e31a013bfff44c9f903134532323",
"icons/Icon-192.png": "9a996f8313d7cf56a14bff648ad887d5",
"icons/Icon-maskable-192.png": "9a996f8313d7cf56a14bff648ad887d5",
"icons/Icon-maskable-512.png": "a2d571fafaae4d334e03a08a5e0aadff",
"icons/Icon-512.png": "a2d571fafaae4d334e03a08a5e0aadff",
"manifest.json": "22b0b29af8bb15cee424bb15e07db5c9",
"assets/AssetManifest.json": "6cef076bc0f8c5ae7200d810aef2de7d",
"assets/NOTICES": "38c8f005530f5a0f948b8ee3123266e6",
"assets/FontManifest.json": "85456dd1f9295989654286f4b14c6a21",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/img/colored_bg.png": "1f4ffa04919a5dbca6fde43c0378e502",
"assets/assets/img/middle_blue.png": "3eccee7b54d1e9b383035e04ae7ea1d1",
"assets/assets/img/see_history.png": "6976f4c0c09440a6181786e3768d017d",
"assets/assets/img/side_left.png": "42607f406131178e0e0cdff686e198d9",
"assets/assets/img/logo_full.png": "8f59c4fa6f22d3662bbb44f5902d009a",
"assets/assets/img/side_right.png": "55a4183e1e61ad292fcba9b4356cdfe3",
"assets/assets/img/logo.png": "29bf0d12d7fee19f0375837d7827f460",
"assets/assets/img/twitter.png": "07f67e72237c8e1b4e88ccc0298a7ee4",
"assets/assets/img/linkedIn.png": "b42f832549c899a4bfa0f053acd8458a",
"assets/assets/img/get_desired_result.png": "0dabde1f2cd3b7750a2a6e76eea96e68",
"assets/assets/img/facebook.png": "a2c01fc1bfa2a7416b95a002679025cc",
"assets/assets/fonts/helveticaNeue/HelveticaNeueMed.ttf": "9f25b1f8c62ddd2ad699a89aaaf11a59",
"assets/assets/fonts/lato/Lato-Bold.ttf": "eb9532033c2adf99b1314611b5e9cd0e",
"assets/assets/fonts/lato/Lato-Black.ttf": "1233fdf19c04333c7f58af4eb8698452",
"assets/assets/fonts/lato/Lato-Regular.ttf": "3b9b99039cc0a98dd50c3cbfac57ccb2",
"assets/assets/fonts/lato/Lato-BlackItalic.ttf": "e0d428e2113a119814da366401ad3362",
"assets/assets/fonts/lato/Lato-BoldItalic.ttf": "01577cc25f44d5cd3451a5e0da715917",
"assets/assets/fonts/inter/Inter-Medium.ttf": "1aa99aa25c72307cb7f16fae35e8c9d1",
"assets/assets/fonts/inter/Inter-Light.ttf": "d4be01c95657978131342b1dcf829a45",
"assets/assets/fonts/inter/Inter-Thin.ttf": "f482d38d962b4d95853bef956ff6dd83",
"assets/assets/fonts/inter/Inter-Bold.ttf": "cef517a165e8157d9f14a0911190948d",
"assets/assets/fonts/inter/Inter-Regular.ttf": "eba360005eef21ac6807e45dc8422042",
"assets/assets/fonts/inter/Inter-ExtraLight.ttf": "819a76705047d6474cb529a319e74bbc",
"assets/assets/fonts/inter/Inter-Black.ttf": "c6dacb6bcfcd747bba440bf2fbd2c85a",
"assets/assets/fonts/inter/Inter-SemiBold.ttf": "3e87064b7567bef4ecd2ba977ce028bc",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
