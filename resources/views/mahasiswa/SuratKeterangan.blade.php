@extends('layouts.layoutMahasiswa')

@section('content')

<br>
<div class="container">
    <blackquote class="blackquote">
    <p>

    <button data-toggle="collapse" data-target="#demo">Lihat Daftar Surat Keterangan</button>
<div id="demo" class="collapse">
<div class="col-md-30">
    <div class="box-header">
      <h4 class="box-title">Daftar Pengajuan Surat Keterangan</h4>
    </div>
    <div class="box-body no-padding">
      <table class="table table-striped">
        <thead>
          <tr>
            <th style="width: 10px">#</th>
            <th>NIM</th>
            <th>Lembaga</th>
            <th style="width: 100px">Status</th>
          </tr>
        </thead>
        @php
            $no = 1;    
        @endphp
        <tbody>
          @foreach($nim_login as $nim_log)
            @foreach($data as $data_surat)
              @if($data_surat->aktif == '1')
                @if($nim_log->nim == $data_surat->nim)
                  <tr>
                    <td>{{ $no++ }}</td>
                    <td>{{$data_surat->nim}}</td>
                    <td>{{$data_surat->lembaga}}</td>
                    <td>
                      @if($data_surat->statusSurat == '0')
                        <b>Belum Diverifikasi</b>
                      @endif

                      @if($data_surat->statusSurat == '1')
                        <span class="glyphicon glyphicon-ok-sign" style="color:green"> Diterima 
                      @endif

                      @if($data_surat->statusSurat == '2')
                        <span class="glyphicon glyphicon-remove-sign" style="color:red"> Ditolak 
                      @endif
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

<p><h3 align ="center">PENGAJUAN SURAT KETERANGAN KP</h3></p><br>
                <form class="form-inline my-2 my-lg-0 ml-auto" method="GET" action="/sk/search/{id}">
                        <h4 class="mt-2 mr-3 text-muted">Search</h4>
                        <input class="form-control mr-sm-2" type="search" name="q" value="@php echo old('cari') @endphp"  placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-dark my-2 my-sm-0" type="submit" data-toggle="tooltip" title="Search">Cari<i class="fas fa-search" ></i></button>
                    </form>
                    <br />
                <table class="table table-hover">
                <tr>
                  

                <div class="row">
  <div class="col-md-12">
    <form action="/mahasiswa/insertSuratKet" method="POST" enctype="multipart/form-data">
      {{csrf_field()}}

      @foreach($nim_login as $nim_mhs)
        <div class="form-group">
          <label for="exampleInputEmail1">NIM :</label> 
          <input name="nim" type="text" class="form-control" id="nim" required="required" style="width: 100%"
            value="{{$nim_mhs->nim}}" readonly>
        </div>
      @endforeach

      @foreach($perAktif as $aktif)
      <div class="form-row">
        <div class="form-group col-sm">
          <label for="exampleFormControlSelect1">Semester : </label> 
          <input type="text" class="form-control" name="semester" style="width: 100%" required="required"
            value="{{$aktif->semester}}" readonly>
        </div>
        <div class="form-group col-sm">
          <label for="exampleFormControlInput1">Tahun : </label>
          <input type="number" class="form-control" name="tahun" style="width: 100%" required="required"
            value="{{$aktif->tahun}}" readonly>
        </div>
      </div>
      @endforeach

      <div class="form-group">
        <label for="exampleInputEmail1">Lembaga :</label>
        <input name="lembaga" type="text" class="form-control" id="lembaga" required="required">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Pimpinan :</label>
        <input name="pimpinan" type="text" class="form-control" id="pimpinan" required="required">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">No. Telp :</label>
        <input name="noTelp" type="text" class="form-control" id="noTelp" required="required">
      </div>

      <div class="form-group">
        <label for="exampleFormControlTextarea1">Alamat :</label>
        <textarea class="form-control" id="alamat" name="alamat" rows="3" required="required"></textarea>
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Fax :</label>
        <input name="fax" type="text" class="form-control" id="fax" aria-describedby="emailHelp" required="required">
      </div>

      <div class="form-group">
        <label for="exampleFormControlFile1">Dokumen Pengajuan Surat Keterangan:</label>
        <input type="file" class="form-control-file" id="dokSurat" name="dokSurat" required="required">
      </div>

      <button type="submit" class="btn btn-primary" name="Submit">Ajukan Surat Keterangan</button>
    </form>
  </div>
</div>
@endsection