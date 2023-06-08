<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Twitter -->
    <meta name="twitter:site" content="@themepixels">
    <meta name="twitter:creator" content="@themepixels">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ setting('site_name') }}">
    <meta name="twitter:description" content="{{ setting('site_description') }}">
    <meta name="twitter:image" content="{{ asset('bracket/img/bracket-social.png') }}">

    <!-- Facebook -->
    <meta property="og:url" content="{{ setting('site_url') }}">
    <meta property="og:title" content="{{ setting('site_name') }}">
    <meta property="og:description" content="{{ setting('site_description') }}">

    <link rel="stylesheet" href="/dist/vendors/toastr/toastr.min.css"/>


{{--    <meta property="og:image" content="{{ asset('bracket/img/bracket-social.png') }}">--}}
{{--    <meta property="og:image:secure_url" content="{{ asset('bracket/img/bracket-social.png') }}">--}}
{{--    <meta property="og:image:type" content="image/png') }}">--}}
{{--    <meta property="og:image:width" content="1200">--}}
{{--    <meta property="og:image:height" content="600">--}}

    <!-- Meta -->
    <meta name="description" content="{{ setting('site_description') }}">
    <meta name="author" content="{{ setting('site_name') }}">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ setting('site_title') }}</title>

    <link href="{{ asset('font-awesome/css/font-awesome.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/Ionicons/css/ionicons.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/perfect-scrollbar/css/perfect-scrollbar.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/jquery-switchbutton/jquery.switchButton.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/dist/css/bootstrap-select.css') }}">
{{--    <script src="{{ asset('assets/js/all.min.js') }}"></script>--}}

    <link href="{{ asset('lib/select2/css/select2.min.css')}}" rel="stylesheet">

    <!-- FAVICONS ICON -->

    <link rel="icon" type="image/png" sizes="16x16" href="{{ setting('favicon','/images/fav.png') }}">

    <link rel="shortcut icon" type="image/x-icon" href="{{ setting('favicon','/images/fav.png') }}" />

    @yield('style')
    <!-- Bracket CSS -->
    <link rel="stylesheet" href="{{ asset('css/bracket.css') }}">

    <style>
        [v-cloak] { display: none; }

        .alert-danger {
            color: #ffff!important;
            background-color: #F44336!important;
            border-color: #F44336!important;
        }

        .br-section-wrapper {
            padding: 15px!important;
        }
        /*.br-menu-item {*/
        /*    height: 30px;*/
        /*    letter-spacing: 0.1px;*/
        /*    !*font-size: .65rem;*!*/
        /*}*/
        /*.br-menu-item .svg-inline--fa{*/
        /*    width: 1.05em!important;*/
        /*}*/
    </style>

    @yield('headJS');
</head>

<body>

@include('admin.layouts.admin-sidenav')

<!-- ########## START: MAIN PANEL ########## -->
{{-- <div class="br-mainpanel"> --}}

    @yield('content')

    <footer class="br-footer py-2" style="position: fixed; bottom: 0; width: 100%;">
        <div class="footer-left">
            <div class="mg-b-2">Copyright &copy; {{ date('Y') }}. {{ setting('site_name') }}. All Rights Reserved.</div>
        </div>
    </footer>
{{-- </div><!-- br-mainpanel --> --}}
<!-- ########## END: MAIN PANEL ########## -->


    <script src="{{ asset('lib/jquery/jquery.js') }}"></script>
    <script src="{{ asset('lib/popper.js/popper.js') }}"></script>
    <script src="{{ asset('lib/bootstrap/bootstrap.js') }}"></script>
    <script src="{{ asset('lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js') }}"></script>
    <script src="{{ asset('lib/moment/moment.js') }}"></script>
    <script src="{{ asset('lib/jquery-ui/jquery-ui.js') }}"></script>
    <script src="{{ asset('lib/jquery-switchbutton/jquery.switchButton.js') }}"></script>
    <script src="{{ asset('lib/peity/jquery.peity.js') }}"></script>
    {{-- <script src="{{ asset('js/custom.js') }}"></script> --}}
    <script src="{{ asset('js/bracket.js') }}"></script>
    <script src="{{ asset('assets/dist/js/bootstrap-select.js') }}"></script>
<script src="/dist/vendors/toastr/toastr.min.js"></script>

<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>



{{--<script src="https://unpkg.com/vue/dist/vue.min.js"></script>--}}

<script src="https://cdn.jsdelivr.net/npm/vue@2.6.14"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>


<script>
    $('.lfm').filemanager('image');
</script>

<script>
    $(document).ready(function() {
        $("#showActions").click(function() {
            $("#actions-details").toggle();
        });
        $('.selectpicker').selectpicker();
    })
</script>

    @yield('js')

@include('partials.alerts')
</body>
</html>
