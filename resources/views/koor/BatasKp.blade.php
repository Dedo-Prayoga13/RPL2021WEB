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
    <h1 class="h3 mb-2 text-gray-800">Daftar Batas Pelaksanaan KP</h1>
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
                    <th width="10%">Semester</th>
                    <th width="10%">Tahun</th>
                    <th width="10%">Tanggal Mulai Pelaksanaan KP</th>
                    <th width="10%">Tanggal Batas Pelaksanaan KP</th>
                    <th width="10%">Status</th>
                    </tr>
                </thead>
                <tbody>
                @php
                    $no = 1;    
                @endphp
                <tbody>
                    @foreach($aktif as $batas_aktif)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $batas_aktif->semester }}</td>
                        <td>{{ $batas_aktif->tahun }}</td>
                        <td>{{ $batas_aktif->mulaiKp }}</td>
                        <td>{{ $batas_aktif->akhirKp }}</td>
                        <td>
                        @if($batas_aktif->aktif == '0')
                            <span class="glyphicon glyphicon-remove-sign" style="color:red"> Non-Aktif 
                        @endif

                        @if($batas_aktif->aktif == '1')
                            <span class="glyphicon glyphicon-ok-sign" style="color:green"> Aktif 
                        @endif
                        </td>
                    </tr>
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
    <h1 class="h3 mb-2 text-gray-800">Batas Pelaksanaan KP</h1>
                    <h7><b>Nama Koordinator KP : </b></h7>
                    {{auth()->user()->name}}<br>
                    <h7><b>NIK : </b></h7>
                    @foreach($nik as $nikDosenLogin)
                    {{$nikDosenLogin->nik}}
                    @endforeach<br><br>
                    <form method="post" action="{{ URL::to('/') }}/sikp/setBatas">
                {{csrf_field()}}
                <div class="box-body">
                    <div class="form">
                        <div class="form-group col-sm">
                            <label for="exampleFormControlSelect1">Semester : </label>
                            <select class="form-control" name="semester" style="width: 50%">
                            <option value="Gasal">Gasal</option>
                            <option value="Genap">Genap</option>
                            </select>
                        </div>
                        <div class="form-group col-sm">
                            <label for="exampleFormControlInput1">Tahun : </label>
                            <input type="text" class="form-control" name="tahun" style="width: 50%">
                        </div>
                        <label for="exampleFormControlInput1">Tanggal Batas Pelaksanaan KP : </label>
                        <input type="date" class="form-control" name="akhirKp"style="width: 25%">
                    </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Aktifkan Periode Batas KP Ini ?</label>  
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="aktif" value="1" checked>
                            <label class="form-check-label" for="inlineRadio1">Ya</label>
                        </div>
                    </div>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </div>
                </div>
            </form>
    </div>
    
</div>
@endsection