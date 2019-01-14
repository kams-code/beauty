@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">editer un client</div>

                <div class="panel-body">
                    {!! Form::open(['method' => 'PUT', 'url' => route('clients.update', $client )]) !!}
                          <div class="form-group">
                             {!! Form::label('nom','nom cli') !!}
                             {!! Form::text('nom',$client->nom, ['class' => 'form-control']) !!}
                          </div>
                          <button class="btn btn-primary">envoyer</button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
