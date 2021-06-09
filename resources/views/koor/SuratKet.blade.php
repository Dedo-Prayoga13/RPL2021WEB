@extends('layouts.layoutKoor')

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
    <h1 class="h3 mb-2 text-gray-800">Daftar Verifikasi Pengajuan Surat Keterangan</h1>
                    <h7><b>Nama Koordinator KP : </b></h7>
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
                    <th width="2%">No</th>
                    <th width="10%">Nim</th>
                    <th width="10%">Nama</th>
                    <th width="10%">Lembaga</th>
                    <th width="10%">Dokumen Surat</th>
                    <th width="10%">Status Verifikasi</th>
                    </tr>
                </thead>
                <tbody>
                @php
                    $no = 1;    
                @endphp
                        <tbody>
                            @foreach($dataStatus as $dataVer)
                                @if($dataVer->statusSurat == 1)
                                    <tr>
                                        <td>{{$no++}}</td>
                                        <td>{{$dataVer->nim}}</td>
                                        <td>{{$dataVer->nama}}</td>
                                        <td>{{$dataVer->lembaga}}</td>
                                        <td>
                                            <a href="/koor/opensurat/{{$dataVer->nim}}" target="_blank" class="btn btn-primary">
                                                View File <span class="glyphicon glyphicon-eye-open">
                                            </a>
                                        </td>
                                        <td>
                                            <span class="glyphicon glyphicon-ok-sign" style="color:green"> Diterima
                                        </td>
                                    </tr>
                                    @elseif($dataVer->statusSurat == 2)
                                    <tr>
                                        <td>{{$no++}}</td>
                                        <td>{{$dataVer->nim}}</td>
                                        <td>{{$dataVer->nama}}</td>
                                        <td>{{$dataVer->lembaga}}</td>
                                        <td>
                                            <a href="/koor/opensurat/{{$dataVer->nim}}" target="_blank" class="btn btn-primary">
                                                View File <span class="glyphicon glyphicon-eye-open">
                                            </a>
                                        </td>
                                        <td>
                                            <span class="glyphicon glyphicon-remove-sign" style="color:red"> Ditolak
                                        </td>
                                    </tr>
                                @endif
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
    <h1 class="h3 mb-2 text-gray-800">Daftar Surat Keterangan</h1>
                    <h7><b>Nama Koordinator KP : </b></h7>
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
                    <th width="2%">Status Verifikasi</th>
                    <th width="10%">Nim</th>
                    <th width="10%">Nama</th>
                    <th width="10%">Lembaga</th>
                    <th width="10%">Dokumen Surat</th>
                    </tr>
                </thead>
                @foreach($surat as $dataSurat)
                            <input type="hidden" name="idReg" value="{{ $dataSurat->idReg }}">
                                <tr>
                                    <td>
                                        <input type="hidden" name="idReg" value="{{$dataSurat->idReg}}">
                                        <div class="form-group">
                                            <button type="submit" href="/koor/setSurat" name="terima" class="btn btn-success btn-sm" value="{{$dataSurat->idReg}}">Terima</button>
                                            <br><br>
                                            
                                            <button type="submit" href="/koor/setSurat" name="tolak" class="btn btn-danger btn-sm" value="{{$dataSurat->idReg}}">Tolak</button>
                                        </div>
                                    </td>
                                    <td>{{$dataSurat->nim}}</td>
                                    <td>{{$dataSurat->nama}}</td>
                                    <td>{{$dataSurat->lembaga}}</td>
                                    <td>
                                        <a href="/koor/opensurat/{{$dataSurat->nim}}" target="_blank" class="btn btn-primary">
                                            View File <span class="glyphicon glyphicon-eye-open">
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection