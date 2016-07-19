module.exports = (function() {

  "use strict";

  const Nodal = require('nodal');

  class CreatePhotos extends Nodal.Migration {

    constructor(db) {
      super(db);
      this.id = 2016071902133065;
    }

    up() {

      return [
        this.createTable("photos", [{"name":"thumbnail_url","type":"string"},{"name":"image_url","type":"string"}])
      ];

    }

    down() {

      return [
        this.dropTable("photos")
      ];

    }

  }

  return CreatePhotos;

})();
