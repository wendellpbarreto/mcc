$(document).ready(function() {
  $('.chosen-select').chosen({ width:"100%", allow_single_deselect:true });
});

$('#order_lines').on('cocoon:after-insert', function(e, insertedItem) {
  $('.chosen-select').chosen({ width:"100%"});
});
