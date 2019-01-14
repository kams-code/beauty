@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">editer d'une reservation</div>

                <div class="panel-body">
                    {!! Form::open(['method' => 'PUT', 'url' => route('reservations.update', $post  )]) !!}
                          <div class="form-group">
                             {!! Form::label('code','nom cli') !!}
                             {!! Form::text('code',$reservation->code, ['class' => 'form-control']) !!}
                          </div>
                          <div class="form-group">
                             {!! Form::label('client_id','client') !!}
                             {!! Form::text('client_id',$clients,$reservation->client_id, ['class' => 'form-control']) !!}
                          </div>
                          <button class="btn btn-primary">envoyer</button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
