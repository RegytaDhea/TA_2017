@extends('layouts.app')
@section('logout')
<a href="{{ route('admin.logout') }}"
  onclick="event.preventDefault();
  document.getElementById('logout-form').submit();">
Logout
</a>
<form id="logout-form" action="{{ route('admin.logout') }}" method="POST" style="display: none;">
{{ csrf_field() }}
</form>
@endsection
@section('content')
<div class="container">
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
        <h1>Edit Account</h1>
          @if (count($errors) > 0)
          <div class="alert alert-danger">
            <strong>Sorry!</strong> Something wrong with your input data.<br><br>
            <ul>
              @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
              @endforeach
            </ul>
          </div>
              @endif
              {!! Form::model($dokter, ['method' => 'PATCH','route' => ['dokters.update', $dokter->number]]) !!}
          <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="form-group">
                  <strong>date:</strong>
                  {!! Form::text('date', null, array('placeholder' => 'Date','class' => 'form-control')) !!}
                </div>
            </div>
          <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="form-group">
                <strong>nama:</strong>
                {!! Form::text('nama', null, array('placeholder' => 'Nama','class' => 'formcontrol'))!!}
              </div>
            </div>
          <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
              <strong>bagian:</strong>
                {!! Form::text('bagian', array('placeholder' => 'Bagian','class' => 'formcontrol'))!!}
            </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
              </div>
                </div>
                {!! Form::close() !!}
              </div>
            </div>
@endsection
