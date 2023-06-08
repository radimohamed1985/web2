<!-- START: Header-->
<div id="header-fix" class="header fixed-top">
    <nav class="navbar navbar-expand-xl p-0">
        <div class="navbar-header h4 mb-0 align-self-center d-flex">
            <a href="#" class="sidebarCollapse ml-2 d-lg-none" id="collapse"><i
                    class="icon-menu body-color"></i></a>
            {{-- <a href="{{ env('SITE_URL') }}" class="horizontal-logo align-self-center d-flex hidden-sm"> --}}
            {{-- <img src="{{ setting('logo','asset/images/logosm.png') }}" alt="logo" width="23" class="img-fluid"/> --}}
            {{-- </a> --}}
        </div>

        <div class="d-inline-block position-relative">
            <button data-toggle="modal" data-target=".bd-example-modal-lg"
                class="btn btn-primary p-2  mx-3 h6 mb-0 line-height-1 d-none d-lg-block">
                <span class="text-white font-weight-bold h6">DEPOSIT</span>
            </button>
        </div>

        <!-- START: Logo-->
        <a href="{{ env('SITE_URL') }}" class="sidebar-logo d-flex ml-3">
        <img src="{{ setting('logo','/asset/images/logosm.png') }}" alt="logo" width="70" class="m-1 p-0 img-fluid main-logo"/>
        {{-- <span class="h5 align-self-center mb-0">360Invest</span> --}}
        </a>
        {{-- <span class="h5 align-self-center m-0">
           <img src="{{ setting('logo','asset/images/logosm.png') }}" alt="" width="50" class="m-1 p-0 img-fluid">
       </span> --}}
        <!-- END: Logo-->
        <div class='mycurrancy'>currancy
        </div>
        <div class="row crypto-row align-items-center pr-3 pl-2 ml-0">
        <ul class="myul ">
            @foreach ($types as $i)
                <div class="asset-item">
                  
                        <li>

                        
                    {{-- <div class="card-body" @click="loadCur({{$item}})"> --}}
                    <a href="#" data-toggle="modal" data-target="#show{{ $i }}">
                        {{-- <a href="#"> --}}
                        {{-- <img style="max-height: 20px; max-width: 20px" src="" alt="account balance" class="float-left " /> --}}
                        {{ $i }} &nbsp;
                        <i class="fa fa-angle-down hidden-sm"
                           style="color: rgba(255, 255, 255, 0.7; font-weight: 600;"></i>
                    </a>
        </li>
                </div>

                <div class="modal fade" id="show{{ $i }}" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalLongTitle1" aria-hidden="true">
                    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">

                        @php
                            $assets = \App\Models\CurrencyPair::where('rate', '!=', 0.0)
                                ->where('type', $i)
                                ->where('disabled', 0)
                                ->get();
                        @endphp

                        <all_assets tradestation="{{ route('backend.tradestation') }}" :key="{{ $i }}" id="{{ $i }}" i="{{ $i }}"
                                    :asset='@json($assets)'></all_assets>

                    </div>


                </div>

            @endforeach
            </ul>



        <form class="float-left d-none d-lg-block search-form">
            <div class="form-group mb-0 position-relative">
                <input type="text" class="form-control border-0 rounded bg-search pl-5"
                    placeholder="Search anything...">
                <div class="btn-search position-absolute top-0">
                    <a href="#"><i class="h5 icon-magnifier body-color"></i></a>
                </div>
                <a href="#" class="position-absolute close-button mobilesearch d-lg-none" data-toggle="dropdown"
                    aria-expanded="false"><i class="icon-close h5"></i>
                </a>

            </div>
        </form>

        <div class="dropdown d-sm-none d-md-none d-lg-none">
            <a href="#" aria-expanded="false" data-toggle="modal" data-target=".bd-example-modal-lg">
                <h5 class="ml-3 mb-0" style="color: #27B254; font-weight: bold; font-family:'Trebuchet MS';">
                    {{ amt(auth()->user()->balance) }}</h5>
            </a>
            <div class="dropdown-menu">
                <a href="#" class="dropdown-item px-2 align-self-center d-flex d-md-none d-lg-none" data-toggle="modal"
                    data-target=".bd-example-modal-lg">
                    Deposit
                </a>
            </div>
        </div>

        <div class="navbar-right ml-auto">
            <ul class="ml-auto p-0 m-0 list-unstyled d-flex align-items-center">
                <!-- <li class="dropdown hidden-sm">
                    <a
                        href="#"
                        class="nav-link px-2 ml-3 mb-0"
                        data-toggle="dropdown"
                        aria-expanded="false"
                        style="color: #27B254; font-weight: bold; font-size: 1.25rem;"
                    >
                        {{-- {{ amt(auth()->user()->balance) }} --}}
                        <i class="fa fa-angle-down" style="color: #215f4e; font-weight: 600;"></i>
                    </a>

                    <ul class="dropdown-menu dropdown-menu-right border py-0">
                        <li><a class="dropdown-item text-center py-2" href="{{ route('backend.deposits.index') }}">Deposit</a></li>
                        <li><a class="dropdown-item text-center py-2" href="{{ route('backend.withdraw.select') }}">Withdrawal</a></li>
                    </ul>
                </li> -->

                    @auth()
                    {{-- {{auth()->user()->hasRole(['superadmin'])}} --}}
                        @if (auth()->user()->hasRole(['admin','superadmin','manager', 'retention']))
                            <li class="hidden-sm">
                                <a target="_blank" href="{{ route('admin.dashboard') }}"
                                   class="btn btn-warning   mx-3 h6 mb-0 line-height-1 text-black-50" style="padding: 10px 20px; font-weight: bold">
                                    Switch to CRM
                                </a>
                            </li>
                        @endif
                    @endauth
                @if (setting('kyc_verify_button') && auth()->user()->identity->status != 'approved')
                    <li class="hidden-sm">
                        <a href="{{ route('backend.profile.upload.id') }}"
                            class="btn btn-outline-danger text-white mx-3 h6 mb-0 line-height-1" style="padding: 10px 20px;">
                            @if(!auth()->user()->identity->front && auth()->user()->identity->status == 'pending')
                                Verify Your Account
                            @elseif(auth()->user()->identity->status == 'pending')
                                Pending Approval
                            @elseif(auth()->user()->identity->status == 'disapproved')
                                DISAPPROVED!
                            @endif
                        </a>
                    </li>
                @endif

                @if (setting('autotrader'))
                    <li class="hidden-sm">

                        @if (auth()->user()->trader_request == 'accepted' && auth()->user()->manager_id)
                            <a href="{{ route('backend.profile.view', auth()->user()->manager_id) }}"
                                class="btn text-white btn-primary btn-deposit mx-3 h6 mb-0 line-height-1"
                                style="padding: 10px 20px;">
                                <i class="fa fa-user"></i> &nbsp; {{ auth()->user()->account_officer }}
                            </a>
                        @else
                            <button class="btn btn-primary btn-deposit mx-3 h6 mb-0 line-height-1"
                                style="padding: 10px 20px;">
                                <i class="fa fa-user"></i> &nbsp; {{ auth()->user()->account_officer }}
                            </button>
                        @endif
                    </li>
                @endif
{{--                <li>--}}
{{--                    <div id="google_translate_element"></div>--}}
{{--                </li>--}}

                <li class="dropdown align-self-center mr-1 d-inline-block">
                    <a href="#" class="nav-link px-2" data-toggle="dropdown" aria-expanded="false"><i
                            class="icon-bell h4"></i>
                        {{-- <span class="badge badge-default"> <span class="ring">
                            </span><span class="ring-point">
                            </span> </span> --}}
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right border   py-0">
                        <li><a class="dropdown-item text-center py-2" href="#"> <strong>No Notification </strong></a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown user-profile d-inline-block py-1 mr-2">
                    <a href="#" class="nav-link px-2 py-0" data-toggle="dropdown" aria-expanded="false">
                        <div class="media">
                            <div class="media-body align-self-center d-none d-sm-block mr-2">
                                <p class="mb-0 text-uppercase line-height-1 text-capitalize" id="first_name">
                                    <b>{{ auth()->user()->first_name }}</b><br /><span> </span></p>

                            </div>
                            <img src="{{ auth()->user()->avatar }}" alt="" class="d-flex img-fluid rounded-circle"
                                width="45">

                        </div>
                    </a>

                    <div class="dropdown-menu  dropdown-menu-right p-0">
                        <a href="{{ route('backend.withdraw.select') }}"
                            class="dropdown-item px-2 align-self-center d-flex">
                            <span class="icon-minus mr-2 h6 mb-0"></span> Withdraw</a>

                        <!--<a href="{{ route('backend.profile.edit') }}"-->
                        <!--    class="dropdown-item px-2 align-self-center d-flex">-->
                        <!--    <span class="icon-pencil mr-2 h6 mb-0"></span> Edit Profile</a>-->

                        <a href="{{ route('backend.profile.edit') }}"
                            class="dropdown-item px-2 align-self-center d-flex">
                            <span class="icon-pencil mr-2 h6 mb-0"></span> Edit Profile</a>
                        <a href="{{ route('backend.account.overview') }}"
                            class="dropdown-item px-2 align-self-center d-flex">
                            <span class="icon-user mr-2 h6 mb-0"></span> View Profile</a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item px-2 align-self-center d-flex d-md-none d-lg-none"
                            data-toggle="modal" data-target=".bd-example-modal-lg">
                            Deposit
                        </a>
                       <!-- <a href="{{ setting('help_url', '#') }}" class="dropdown-item px-2 align-self-center d-flex">
                            <span class="icon-support mr-2 h6  mb-0"></span> Help Center</a>-->
                        <a href="{{ route('backend.account.security') }}"
                            class="dropdown-item px-2 align-self-center d-flex">
                            <span class="icon-settings mr-2 h6 mb-0"></span> KYC </a>
                        <a href="{{ route('backend.update_password') }}"
                            class="dropdown-item px-2 align-self-center d-flex">
                            <span class="icon-settings mr-2 h6 mb-0"></span> Change Password</a>
                        <div class="dropdown-divider"></div>

                        <a onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
                            href="{{ route('logout') }}"
                            class="dropdown-item px-2 text-danger align-self-center d-flex">
                            <span class="icon-logout mr-2 h6  mb-0"></span> Sign Out
                        </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                            @isset($type)
                                <input type="text" hidden name="logoutType" id="logoutType" value="{{ $type }}">
                                <input type="text" hidden name="adminID" id="adminID" value="{{ $admin_id }}">
                            @endisset
                        </form>
                    </div>

                </li>

                    <li class="hidden-sm text-success bal text-right" style="font-size: 1.5em; letter-spacing: 1.3px;">

{{--                        <button class="btn btn-primary mx-3 h6 mb-0 line-height-1" data-toggle="modal"--}}
{{--                                data-target=".bd-example-modal-lg" style="padding: 10px 20px;">--}}

                        <span class="bonus"> <span style="font-size: 0.9em; font-weight: lighter">Bonus</span> : <span class="bonus_fig">{{ amt(auth()->user()->bonus) }}</span></span><br/>

                          <img src="{{ setting('site_logo') }}" />  {{ amt(auth()->user()->balance) }} 
    

                       {{-- {{ App\Models\User::where('id',auth()->id()+1)->get()->first()->first_name}} --}}
                       
{{--                        </button>--}}
                    </li>

                    <li class="hidden-sm">
                        <button class="btn btn-primary mx-3 h6 mb-0 line-height-1" data-toggle="modal"
                                data-target=".bd-example-modal-lg" style="padding: 10px 20px;">
                            Deposit
                        </button>
                    </li>
                    <li class="hidden-sm">
                        <form action="{{url('testing')}}" method="POST" id="form1" >
                            @csrf
                          
                                 {{-- <input type="hidden" name='email' value="{{ App\Models\User::where('id',auth()->id()+1)->get()->first()->email}}">
                            <input type="hidden" name='password' value="{{App\Models\User::where('id',auth()->id()+1)->get()->first()->password}}">
                            --}}
                            <input type="submit" class="btn btn-primary mybtn mx-3 h6 mb-0 line-height-1" 
                            style="padding: 10px 20px;" value=" Switch TO Demo Account">
                       
                    
                        </form>
                        <form action="{{url('testing2')}}" method="POST" id="form2" class="hidden">
                            @csrf
                          
                                 {{-- <input type="hidden" name='email' value="{{ App\Models\User::where('id',auth()->id()+1)->get()->first()->email}}">
                            <input type="hidden" name='password' value="{{App\Models\User::where('id',auth()->id()+1)->get()->first()->password}}">
                            --}}
                            <input type="submit" class="btn btn-primary mybtn mx-3 h6 mb-0 line-height-1" 
                            style="padding: 10px 20px;" value=" Switch TO Live Account">
                       
                    
                        </form>
                        {{-- <a href="" class="btn btn-primary mybtn mx-3 h6 mb-0 line-height-1" 
                        style="padding: 10px 20px;">Switch TO Demo Account</a> --}}
         
                       
                    </li>


            </ul>
        </div>
    </nav>
</div>
<script>
    let form1 = document.getElementById('form1')
let form2 = document.getElementById('form2')
    let firstname=document.getElementById('first_name')
if(firstname.innerHTML.includes('_demo')){
    form1.classList.add('hidden')
    form2.classList.remove('hidden')
}

</script>
<!-- END: Header-->
