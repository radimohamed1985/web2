(function ($) {
    "use strict";
var editor;
 $('#example').DataTable({
    dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ],
     responsive: true
 });
  $('#datatable').DataTable({
     responsive: true
 });



})(jQuery);
