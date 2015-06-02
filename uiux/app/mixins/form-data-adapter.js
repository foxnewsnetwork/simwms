import Ember from 'ember';
import moment from 'moment';
function inferName(something) {
  if (something instanceof Blob) {
    return moment().format("YYYY-MM-DD-h-mm-ss-a") + ".jpg";
  }
  if (typeof something === "undefined" || something === null) {
    return "undefined-form-field";
  }
  if (typeof something === "string") {
    return something;
  }
  if (typeof something.name === "string") {
    return something.name;
  }
  if (typeof something.toString === "function") {
    return something.toString();
  }
}

export default Ember.Mixin.create({
  // Overwrite to change the request types on which Form Data is sent
  formDataTypes: ['POST', 'PUT', 'PATCH'],

  ajaxOptions: function(url, type, options) {
    var data;

    if (options && 'data' in options) { data = options.data; }

    var hash = this._super.apply(this, arguments);

    if (typeof FormData !== 'undefined' && data && this.formDataTypes.contains(type)) {
      var formData = new FormData();
      var root = Ember.keys(data)[0];

      Ember.keys(data[root]).forEach(function(key) {
        if (Ember.isArray(data[root][key])) {
          data[root][key].forEach(function(value) { 
            formData.append(root + "[" + key + "][]", value, inferName(value));
          });
        } else if (typeof data[root][key] !== 'undefined') {
          formData.append(root + "[" + key + "]", data[root][key]);
        }
      });

      hash.processData = false;
      hash.contentType = false;
      hash.data = formData;
    }

    return hash;
  },
});