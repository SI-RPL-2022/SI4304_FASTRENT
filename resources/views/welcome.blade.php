@extends('layouts/app')

@section('title', 'Home')

@section('content')

<!-- carousel -->
    <div style="margin-top: 10px;margin-left: 400px;margin-right: 400px; " id="caro" class="" data-ride="">

    <!-- SEARCH BAR -->
    <div class="row">
    <div class="col-lg-12 card-margin">
        <div class="card search-form">
            <div class="card-body p-0">
                <form id="search-form">
                    <div class="row">
                        <div class="col-12">
                            <div class="row no-gutters">
                                <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                    <select class="form-control" id="exampleFormControlSelect1">
                                        <option>Location</option>
                                        <option>Bandung</option>
                                        <option>Jakarta</option>
                                        <option>Yogyakarta</option>
                                        <option>Bali</option>
                                    </select>
                                </div>
                                <div class="col-lg-8 col-md-6 col-sm-12 p-0">
                                    <input type="text" placeholder="Search..." class="form-control" id="search" name="search">
                                </div>
                                <div class="col-lg-1 col-md-3 col-sm-12 p-0">
                                    <button type="submit" class="btn btn-base">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                                    </button>
                                </div>
                                </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </div>
    </div>
    
    <div style="margin-top: 30px;margin-left: 200px;margin-right: 200px; " id="caro" class="" data-ride="">
    <div class="row">
    <div class="col-sm-4">
        <div class="card">
        <div class="card-body">
        <img src="{{asset('photos/rental 1.jpeg')}}" class="img-responsive" style="margin-left: auto; width: 300px;" alt="logo">
            <h5 class="card-title">Rental Mobil Andi</h5>
            <p class="card-text">Jl. Dr. Djunjunan No.64, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162</p>
           <center> <a href="#" class="btn btn-info">Pesan</a></center>
        </div>
        </div>
    </div>
    <div class="col-sm-4">
    <div class="card">
        <div class="card-body">
        <img src="{{asset('photos/rental 1.jpeg')}}" class="img-responsive" style="margin-left: auto; width: 300px;" alt="logo">
            <h5 class="card-title">Rental Mobil Andi</h5>
            <p class="card-text">Jl. Dr. Djunjunan No.64, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162</p>
            <center> <a href="#" class="btn btn-info">Pesan</a></center>
        </div>
        </div>
    </div>
    <div class="col-sm-4">
    <div class="card">
        <div class="card-body">
        <img src="{{asset('photos/rental 1.jpeg')}}" class="img-responsive" style="margin-left: auto; width: 300px;" alt="logo">
            <h5 class="card-title">Rental Mobil Andi</h5>
            <p class="card-text">Jl. Dr. Djunjunan No.64, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162</p>
            <center> <a href="#" class="btn btn-info">Pesan</a></center>
        </div>
        </div>
    </div>
    </div>
    </div>
    <!-- card 2 -->
    <div style="margin-top: 30px;margin-left: 200px;margin-right: 200px; " id="caro" class="" data-ride="">
    <div class="row">
    <div class="col-sm-4">
        <div class="card">
        <div class="card-body">
        <img src="{{asset('photos/rental 1.jpeg')}}" class="img-responsive" style="margin-left: auto; width: 300px;" alt="logo">
            <h5 class="card-title">Rental Mobil Andi</h5>
            <p class="card-text">Jl. Dr. Djunjunan No.64, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162</p>
            <center> <a href="#" class="btn btn-info">Pesan</a></center>
        </div>
        </div>
    </div>
    <div class="col-sm-4">
    <div class="card">
        <div class="card-body">
        <img src="{{asset('photos/rental 1.jpeg')}}" class="img-responsive" style="margin-left: auto; width: 300px;" alt="logo">
            <h5 class="card-title">Rental Mobil Andi</h5>
            <p class="card-text">Jl. Dr. Djunjunan No.64, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162</p>
            <center> <a href="#" class="btn btn-info">Pesan</a></center>
        </div>
        </div>
    </div>
    <div class="col-sm-4">
    <div class="card">
        <div class="card-body">
        <img src="{{asset('photos/rental 1.jpeg')}}" class="img-responsive" style="margin-left: auto; width: 300px;" alt="logo">
            <h5 class="card-title">Rental Mobil Andi</h5>
            <p class="card-text">Jl. Dr. Djunjunan No.64, Sukabungah, Kec. Sukajadi, Kota Bandung, Jawa Barat 40162</p>
            <center> <a href="#" class="btn btn-info">Pesan</a></center>
        </div>
        </div>
    </div>
    </div>
    </div>



@endsection