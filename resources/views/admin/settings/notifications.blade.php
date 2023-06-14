@extends('admin.layouts.admin-app')

@section('content')
    <!-- ########## START: MAIN PANEL ########## -->
    <div class="br-mainpanel">
        <div class="br-pageheader pd-y-15 pd-l-20">
            <nav class="breadcrumb pd-0 mg-0 tx-12">
                <a class="breadcrumb-item" href="{{ route('admin.dashboard') }}">Dashboard</a>
                <a class="breadcrumb-item" href="{{ route('admin.settings.index') }}"> Settings</a>
            </nav>
        </div><!-- br-pageheader -->
        <div class="pd-x-20 pd-sm-x-30 pd-t-20 pd-sm-t-30">
            <h4 class="tx-gray-800 mg-b-5">Notification Settings</h4>
        </div>

        <div class="br-pagebody">
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
        </div>
        <div class="br-pagebody">
            <div class="br-section-wrapper">

                <form action="{{ route('admin.settings.store') }}" method="POST">
                    @csrf
                    <h6 class="tx-gray-800 tx-uppercase tx-bold tx-14 mg-b-10">Notification Settings</h6>

                    <input value="Save" type="submit" class="btn btn-success float-right" />

                    <div class="table-wrapper">
                        <table class="table table-bordered display table-condensed responsive nowrap">
                            <thead>
                                <tr>
                                    <th class="wd-20p"> Name</th>
                                    <th class="wd-70p">Value</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td><span class="text-capitalize">Notification Receiver Email</span>
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="notification_receiver_email" value="{{ setting('notification_receiver_email') }}">
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </form>

            </div><!-- br-pagebody -->
        </div><!-- br-mainpanel -->
        <!-- ########## END: MAIN PANEL ########## -->
    @endsection