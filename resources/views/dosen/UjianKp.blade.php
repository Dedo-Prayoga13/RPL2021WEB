@extends('layouts.layoutDosen')

@section('content')
<div class="card shadow mb-4">
    <div class="card-header py-3">
<button data-toggle="collapse" data-target="#demo">Lihat Daftar Dosen Penguji</button>
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
                    <th style="width: 10px">#</th>
                                <th scope="col">Tanggal</th>
                                <th scope="col">Jam</th>
                                <th scope="col">Ruangan</th>
                                <th scope="col">NIM</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Judul</th>
                                <th scope="col">Lembaga</th>
                                <th scope="col">Dosen Pembimbing</th>
                            </tr>
                        </thead>
                        @php
                            $no = 1;    
                        @endphp
                        <tbody>
                            @foreach($nik as $nikPenguji)
                                @foreach($dafPenguji as $daftarPenguji)
                                    @if($nikPenguji->nik == $daftarPenguji->nik)
                                        <tr>
                                            <td>{{$no++}}</td>
                                            <td>{{$daftarPenguji->tglUjian}}</td>
                                            <td>{{$daftarPenguji->jamUjian}}</td>
                                            <td>{{$daftarPenguji->namaRuang}}</td>
                                            <td>{{$daftarPenguji->nim}}</td>
                                            <td>{{$daftarPenguji->nama}}</td>
                                            <td>{{$daftarPenguji->judul}}</td>
                                            <td>{{$daftarPenguji->lembaga}}</td>
                                            <td>{{$daftarPenguji->namaDosen}}</td>
                                        </tr>
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
                    <th width="5%">No</th>
                    <th width="10%">Tanggal</th>
                    <th width="10%">Jam</th>
                    <th width="10%">Ruangan</th>
                    <th width="10%">NIM</th>
                    <th width="10%">Nama</th>
                    <th width="10%">Judul</th>
                    <th width="10%">Lembaga</th>
                    <th width="10%">Dosen Pembimbing</th>
                    </tr>
                </thead>
                <tbody>
                @php
                            $no = 1;    
                        @endphp
                        <tbody>
                            @foreach($nik as $nikPenguji)
                                @foreach($dafPenguji as $daftarPenguji)
                                    @if($nikPenguji->nik == $daftarPenguji->nik)
                                        <tr>
                                        <td>{{$no++}}</td>
                                        <td>{{$daftarPenguji->tglUjian}}</td>
                                        <td>{{$daftarPenguji->jamUjian}}</td>
                                        <td>{{$daftarPenguji->namaRuang}}</td>
                                        <td>{{$daftarPenguji->nim}}</td>
                                        <td>{{$daftarPenguji->nama}}</td>
                                        <td>{{$daftarPenguji->judul}}</td>
                                        <td>{{$daftarPenguji->lembaga}}</td>
                                        <td>{{$daftarPenguji->namaDosen}}</td>
                                        </tr>
                                    @endif
                                @endforeach
                            @endforeach
                    </tbody>
            </table>
        </div>
    </div>
</div>
@endsection