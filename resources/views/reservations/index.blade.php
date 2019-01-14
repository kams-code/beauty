@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">liste des reservations</div>

                <div class="panel-body">
                    @foreach($reservations as $reservation)
                       <p>{{ $reservation->nom }}</p>
                       <p>{{ $reservation->description }}</p>
                       <p><a class="btn btn-primary" href="{{ route('reservations.edit',$reservation) }}">editer</a></p>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
