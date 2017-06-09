@extends('layouts.app')

@section('title')
	Lihat Sistem
@endsection

@section('content')
		
	<script >
	    init.push(function () {
	        // Setup validation
	        $("#form-systems").validate({
	            submitHandler: function(form) {
	                containerOverlay();
	                form.submit();
	            }
	        });
	    });
</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="/systems/">Sistem</a></li>
		<li class="active"><a href="javascript::void()">Ubah Aturan</a></li>
	</ul>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Ubah Aturan</span>
	    </div>
		<div class="panel-body">
			<form class="form-horizontal" id="form-systems" action="/naive-bayes/train/{{ $nb_conditional_probability->id }}" method="POST" >
				{{ csrf_field() }}
				<input name="_method" type="hidden" value="PUT">
				<div class="row">
	                <div class="col-sm-12">
	                    <div class="form-group no-margin-hr">
	                        <label class="control-label">Penyakit</label>
	                        <input type="text" class="form-control required" name="data_class" id="data_class" maxlength="255" value="{{ $nb_conditional_probability->data_class->name }}" readonly="readonly">
	                    </div>
	                </div>
	                <div class="col-sm-12">
	                    <div class="form-group no-margin-hr">
	                        <label class="control-label">Gejala</label>
	                        <input type="text" class="form-control required" name="attribute" id="attribute" maxlength="255" value="{{ $nb_conditional_probability->attribute->name }}" readonly="readonly">
	                    </div>
	                </div>
	                <div class="col-sm-12">
	                    <div class="form-group no-margin-hr">
	                        <label class="control-label">Nilai Peluang</label>
	                        <input type="text" class="form-control required" name="value" id="value" maxlength="255" value="{{ $nb_conditional_probability->value }}">
	                    </div>
	                </div>
	                <div class="panel-footer text-right">
			            <button type="submit" class="btn btn-flat btn-labeled btn-primary" name="save" value="save"><span class="btn-label icon fa fa-save"></span>Simpan</button>
			            <a href="/systems" class="btn btn-default">Batal</a>
			        </div>
	            </div>
			</form>
	    </div>

	</div>
	

@endsection