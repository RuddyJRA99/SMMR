@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form>

                <div class="row d-flex align-items-center">
                    <div class="col-auto">
                        <label for="user" class="form-label">Usuario a depositar</label>
                        <input type="text" class="form-control" id="user" placeholder="">
                    </div>
                    <div class="col-auto">
                        <label for="user" class="form-label">Total material</label>
                        <p class="h5 text-center">0</p>
                    </div>
                    <div class="col-auto">
                        <label for="user" class="form-label">Monto a depositar</label>
                        <p class="h5 text-center">0</p>
                    </div>
                    <div class="col-auto">
                        <button class="btn btn-secondary" type="button">Procesar</button>
                    </div>
                </div>

                <hr>

                <div class="card d-flex flex-row justify-content-around p-2 align-items-center mb-2">
                    <div class="col-5">
                        <select class="form-select" aria-label="Default select example" placeholder="daw">>
                            <option >Seleccione un material</option>
                            <option value="1">Latas</option>
                            <option value="2">Botellas</option>
                            <option value="3">Papel</option>
                        </select>
                    </div>
                    <div class="col-2">
                        <input type="text" class="form-control" id="amout" placeholder="">
                    </div>
                    <div class="col-2">
                        <input type="text" class="form-control" disabled readonly value="0"/>
                    </div>
                    <button type="button" class="btn-close" aria-label="Close"></button>
                </div>

                <div class="d-grid gap-2">
                    <button class="btn btn-outline-secondary" type="button">Nuevo material</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection