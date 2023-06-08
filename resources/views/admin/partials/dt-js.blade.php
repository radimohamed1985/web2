<script src="{{ asset('lib/jquery-ui/jquery-ui.js') }}"></script>
<script src="{{ asset('lib/jquery-switchbutton/jquery.switchButton.js') }}"></script>
<script src="{{ asset('lib/peity/jquery.peity.js') }}"></script>
<script src="{{ asset('lib/datatables/jquery.dataTables.js') }}"></script>
<script src="{{ asset('lib/datatables-responsive/dataTables.responsive.js') }}"></script>
<script src="{{ asset('lib/select2/js/select2.min.js') }}"></script>
<script src="{{ asset('lib/highlightjs/highlight.pack.js') }}"></script>
<script>
    $(function(){
        'use strict';

        $('#datatable1').DataTable({
            iDisplayLength : 100,
            responsive: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: '_MENU_ items/page',
            }
        });
        $('.datatable1').DataTable({
            iDisplayLength : 100,
            responsive: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: '_MENU_ items/page',
            }
        });
        $('#datatable2').DataTable({
            iDisplayLength : 100,
            responsive: true,
            language: {
                searchPlaceholder: 'Search...',
                sSearch: '',
                lengthMenu: '_MENU_ items/page',
            }
        });

        // $('#datatable2').DataTable({
        //     bLengthChange: false,
        //     searching: false,
        //     responsive: true
        // });

        // Select2
        $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

    });
</script>
