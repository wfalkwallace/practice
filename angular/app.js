(function() {
  var app = angular.module('store', [ ]);

  app.controller('StoreController', function() {
    this.products = gems;
  });

  var gems = [
    {
      name: 'Dodecahedron',
      price: 2,
      description: '. . .',
      images: [
        {
          full: 'dodecahedrom-01-full.jpg',
          thumb: 'dodecahedrom-01-thumb.jpg'
        },
        {
          full: 'dodecahedrom-02-full.jpg',
          thumb: 'dodecahedrom-02-thumb.jpg'
        }
      ]
    },
    {
      name: 'Pentagonal Gem',
      price: 5.95,
      description: '. . .',
      canPurchase: false,
      images: [
        {
          full: 'pentagonal-01-full.jpg',
          thumb: 'pentagonal-01-thumb.jpg'
        }
      ]
    }
  ];
})();
