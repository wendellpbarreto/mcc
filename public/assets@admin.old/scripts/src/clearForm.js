$(document).on('click', '[data-action="clear"]', function(){
  el = $(this);
  form = el.closest('form');

  form.find('#daterange').val('');
  form.find('#box_ids').val('').trigger("chosen:updated");
  form.find('#client_ids').val('').trigger("chosen:updated");
  form.find('#employee_ids').val('').trigger("chosen:updated");
})
