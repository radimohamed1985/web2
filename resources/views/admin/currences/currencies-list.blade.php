@extends('admin.layouts.admin-app')

@section('style')
    <link href="{{ asset('lib/highlightjs/github.css')}}" rel="stylesheet">
    <link href="{{ asset('lib/datatables/jquery.dataTables.css')}}" rel="stylesheet">
    <link href="{{ asset('lib/select2/css/select2.min.css') }}" rel="stylesheet">
@endsection

@section('content')
<!-- ########## START: MAIN PANEL ########## -->
<div class="br-mainpanel">
    <div class="br-pageheader pd-y-15 pd-l-20">
        <nav class="breadcrumb pd-0 mg-0 tx-12">
            <a class="breadcrumb-item" href="{{ route('admin.dashboard') }}">Dashboard</a>
            <span class="breadcrumb-item active"> Currencies Layouts</span>
        </nav>
    </div><!-- br-pageheader -->
    <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
        <h4 class="tx-gray-800 mg-b-5"> Currency</h4>
    </div>

    <div class="br-pagebody">
        <p>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Add Currency
            </button>
        </p>
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        @include('notification')
        <div class="collapse" id="collapseExample">
        <div class="br-section-wrapper">
            <h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-b-10">Add Currency</h6>

            <form action="{{ route('admin.currencies.store') }}" method="POST">
                @csrf
                <div class="form-layout form-layout-1">
                    <div class="row mg-b-25">

                        <div class="col-md-4">
                            <div class="form-group mg-b-10-force">
                                <label class="form-control-label"> Title / Name: <span class="tx-danger">*</span></label>
                                <input class="form-control" required type="text" name="name" placeholder="Enter Name">
                            </div>
                        </div><!-- col-8 -->
                        <div class="col-md-4">
                            <div class="form-group mg-b-10-force">
                                <label class="form-control-label"> Sign: <span class="tx-danger">*</span></label>
                                <input class="form-control" required type="text" name="sign" placeholder="Enter sign">
                            </div>
                        </div><!-- col-8 -->
                        <div class="col-md-4">
                            <div class="form-group mg-b-10-force">
                                <label class="form-control-label"> Code: <span class="tx-danger">*</span></label>
                                <input class="form-control" required type="text" name="code" placeholder="Enter code">
                            </div>
                        </div><!-- col-8 -->

                    </div><!-- row -->

                    <div class="form-layout-footer">
                        <button class="btn btn-primary" type="submit">Submit Form</button>
                    </div><!-- form-layout-footer -->
                </div><!-- form-layout -->
            </form>
        </div><!-- br-section-wrapper -->
        </div>
    </div>
        <div class="br-pagebody">
            <div class="br-section-wrapper">
                <h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-b-10"> Currencies List</h6>

                <div class="table-wrapper">
                    <table id="datatable1" class="table table-bordered table-condensed display responsive nowrap">
                        <thead>
                        <tr>
                            <th class="wd-15p">S.No</th>
                            <th class="wd-40p">Title</th>
                            <th class="wd-30p">Sign</th>
                            <th class="wd-20p"> Code</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($currencies as $currency)
                        <tr>
                            <td>{{ $currency->id }}</td>
                            <td>{{ $currency->name }}</td>
                            <td>{{ $currency->sign }}</td>
                            <td>{{ $currency->code }}</td>
                            <td class="text-center">
                                <form method="POST" action="{!! route('admin.currencies.destroy', $currency->id) !!}" accept-charset="UTF-8">
                                    <input name="_method" value="DELETE" type="hidden">
                                    {{ csrf_field() }}

                                    <div class="btn-group justify-center" role="group">
                                        <a href="{{ route('admin.currencies.edit', $currency->id ) }}" class="btn btn-primary" title="Edit Job">
                                            <span class="fa fa-edit" aria-hidden="true"></span>
                                        </a>

                                        <button type="submit" class="btn btn-danger" title="Delete Job" onclick="return confirm(&quot;Click Ok to delete Record.&quot;)">
                                            <span class="fa fa-trash" aria-hidden="true"></span>
                                        </button>
                                    </div>

                                </form>

                            </td>
                        </tr>
                        @endforeach

                        </tbody>
                    </table>
                </div><!-- table-wrapper -->

    </div><!-- br-pagebody -->
</div><!-- br-mainpanel -->
<!-- ########## END: MAIN PANEL ########## -->

        @section('js')
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
                        responsive: true,
                        language: {
                            searchPlaceholder: 'Search...',
                            sSearch: '',
                            lengthMenu: '_MENU_ items/page',
                        }
                    });

                    $('#datatable2').DataTable({
                        bLengthChange: false,
                        searching: false,
                        responsive: true
                    });

                    // Select2
                    $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });

                });
            </script>
       @endsection

@endsection
