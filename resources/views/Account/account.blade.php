@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="row mb-3">
                <div class="col text-center">
                    <img src="{{ asset('img/defaultProfilePicture.png') }}" />
                    <h3>[Nombre del usuario]</h3>
                    <h5>[Role del usuario]</h5>
                </div>
                <div class="col text-center d-flex flex-column justify-content-center">
                    <div class="row">
                        <button class="col btn btn-danger m-2">Suspender usuario</button>
                        <button class="col btn btn-secondary m-2">Realizar deposito</button>
                    </div>
                    <div class="row card text-bg-primary">
                        <div class="card-body">
                            <p class="card-text display-3">$0.00</p>
                        </div>
                    </div>
                </div>
            </div>

            <h4 class="text-center m-4">Movimientos recientes</h4>

            <div class="row">
                <div class="col text-center">
                    grafico
                </div>
                <div class="col">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <a href="#" style="text-decoration: none; color: black">
                                <h5>$00,00</h5>
                                <p>by accident, sometimes on purpose (injected humour.</p>
                                <p class="text-end">[fecha]</p>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" style="text-decoration: none; color: black">
                                <h5>$00,00</h5>
                                <p>by accident, sometimes on purpose (injected humour.</p>
                                <p class="text-end">[fecha]</p>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" style="text-decoration: none; color: black">
                                <h5>$00,00</h5>
                                <p>by accident, sometimes on purpose (injected humour.</p>
                                <p class="text-end">[fecha]</p>
                            </a>
                        </li>
                        <li class="list-group-item d-grid gap-2">
                            <a class="btn btn-link text-center" href="#">
                                ver mas
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection