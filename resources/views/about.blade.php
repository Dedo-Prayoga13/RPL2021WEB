@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <div class="container">
                        <tr>
                        <td><h4>Mengenai Kerja Praktik UKDW</h4></td>
                        </tr>
                        <tr>
                        <td>
                        <p>Kerja Praktik adalah salah program Universitas Kristen Duta Wacana untuk melatih mahasiswa menjadi lulusan yang terbaik.</p>
                         </td>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
