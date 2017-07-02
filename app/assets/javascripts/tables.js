var ready;
ready = function() {
  $('.table').DataTable();
};
console.log('ready');
$(document).ready(ready);
$(document).on('page:load', ready);