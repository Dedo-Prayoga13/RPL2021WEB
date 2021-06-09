@extends('layouts.layoutDosen')

@section('content')
<div class="card shadow mb-4">
    <div class="card-header py-3">
<button data-toggle="collapse" data-target="#demo">Lihat Daftar Pengajuan Ujian</button>
<div id="demo" class="collapse">
<div class="col-md-30">
    <div class="box-header">
      <h4 class="box-title">Daftar Pengajuan Surat Keterangan</h4>
    </div>
    <div class="card shadow mb-4">
    <div class="card-header py-3">
    <h1 class="h3 mb-2 text-gray-800">Pengajuan Ujian</h1>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                    <th style="width: 10px">no</th>
                    <th width="20%">NIM</th>
                    <th width="40%">Nama</th>
                    <th width="40%">Status Pengajuan Ujian</th>
                    </tr>
                </thead>
                <tbody>
                @php
                    $no = 1;    
                @endphp
                <tbody>
                        @foreach($nik as $nik_dosen)
                            @foreach($dafPengajuan as $daftar)
                                @if($daftar->nik == $nik_dosen->nik)
                                    @if($daftar->pengajuanUjian == '1')
                                        <tr>
                                        <td>{{$no++}}</td>
                                        <td>{{$daftar->nim}}</td>
                                        <td>{{$daftar->nama}}</td>
                                        <td>    
                                            <span class="glyphicon glyphicon-ok-sign" style="color:green"> Diterima     
                                        </td>
                                        </tr>
                                    @endif
                                @endif
                            @endforeach
                        @endforeach
                    </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
    <h1 class="h3 mb-2 text-gray-800">Bimbingan KP</h1>
                    <h7><b>Nama Dosen : </b></h7>
                    {{auth()->user()->name}}<br>
                    <h7><b>NIK : </b></h7>
                    @foreach($nik as $nikDosenLogin)
                        {{$nikDosenLogin->nik}}
                    @endforeach<br><br>
                    
    </div>
    
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                    <th scope="col">Pengajuan Ujian</th>
                    <th scope="col">NIM</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Judul</th>
                    <th scope="col">Lembaga</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($nik as $nik_dosen)
                    @foreach($data as $bimbinganKp)
                    @if($nik_dosen->nik == $bimbinganKp->nik)
                    @if($bimbinganKp->pengajuanUjian == '0')
                        <tr>
                        <td>
                            <form method="post" action="/dosen/{idKp}/{nim}/setUjian">
                                {{csrf_field()}}
                                <a class="btn btn-success btn-sm" href="/dosen/{{$bimbinganKp->idKp}}/{{$bimbinganKp->nim}}/setUjian">
                                    Ajukan <span class="glyphicon glyphicon-ok"></a>
                                        </form>
                                        </td>
                                        <td>{{$bimbinganKp->nim}}</td>
                                        <td>{{$bimbinganKp->nama}}</td>
                                        <td>{{$bimbinganKp->judul}}</td>
                                        <td>{{$bimbinganKp->lembaga}}</td>
                        </tr>
                        @endif
                    @endif
                    @endforeach
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection