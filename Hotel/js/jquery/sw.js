
var cacheName = 'hotel';

var filesToCache = [
   '/',
       '/index.php',
       '/new.php',
       '/edit.php',
       '/room_new.php',
       '/db_77.php',
       '/backend_room_create.php',
 	   '/backend_room_update.php',
 	   '/backend_rooms.php',
       '/backend_create.php',
 	   '/backend_update.php',
 	   '/backend_delete.php',
 	   '/backend_events.php',
 	   '/backend_move.php',
 	   '/backend_resize.php',
 	   
       '/media/header.png',
       '/media/header-in.png',
       '/li.png',
       '/main.png',
       '/shadow.png',
       '/js/daypilot-all.min.js',
       '/js/jquery-3.4.1.min.js',
       '/jquery/jquery-3.4.1.min.js',
       '/jquery/jquery-1.9.1.min.js',
];

self.addEventListener('install', function(e) {
  console.log('[ServiceWorker] Install');
  e.waitUntil(
    caches.open(cacheName).then(function(cache) {
      console.log('[ServiceWorker] Caching app shell');
      return cache.addAll(filesToCache);
    })
  );
});

self.addEventListener('activate', function(e) {
  console.log('[ServiceWorker] Activate');
  e.waitUntil(
    caches.keys().then(function(keyList) {
      return Promise.all(keyList.map(function(key) {
        if (key !== cacheName) {
          console.log('[ServiceWorker] Removing old cache', key);
          return caches.delete(key);
        }
      }));
    })
  );
});

self.addEventListener('fetch', function(e) {
 console.log('[ServiceWorker] Fetch', e.request.url);
 e.respondWith(
     caches.match(e.request).then(function(response) {
      return response || fetch(e.request);
  })
 );
});
function registerServiceWorker() {
// регистрирует скрипт sw в поддерживаемых браузерах
if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('sw.js', { scope: '/' }).then(() => {
      console.log('Service Worker registered successfully.');
    }).catch(error => {
      console.log('Service Worker registration failed:', error);
    });
  }
}
// sw.js
self.addEventListener('install', e => {
 e.waitUntil(
   // после установки service worker
   // открыть новый кэш
   caches.open('my-pwa-cache').then(cache => {
     // добавляем все URL ресурсов, которые хотим закэшировать
     return cache.addAll([
       '/',
       '/index.php',
       '/new.php',
       '/edit.php',
       '/room_new.php',
       '/db_77.php',
       '/backend_room_create.php',
 	   '/backend_room_update.php',
 	   '/backend_rooms.php',
       '/backend_create.php',
 	   '/backend_update.php',
 	   '/backend_delete.php',
 	   '/backend_events.php',
 	   '/backend_move.php',
 	   '/backend_resize.php',
 	   
       '/media/header.png',
       '/media/header-in.png',
       '/li.png',
       '/main.png',
       '/shadow.png',
       '/js/daypilot-all.min.js',
       '/js/jquery-3.4.1.min.js',
       '/jquery/jquery-3.4.1.min.js',
       '/jquery/jquery-1.9.1.min.js',
     ]);
   })
 );
});