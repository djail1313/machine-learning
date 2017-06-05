@extends('layouts.app')

@section('title')
	Form Class
@endsection

@section('content')
		
	<script >
	    init.push(function () {
	        // Setup validation
	        $("#form-data-classes").validate({
	            submitHandler: function(form) {
	                containerOverlay();
	                form.submit();
	            }
	        });

	    });
</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="/data-classes/">Class</a></li>
		<li class="active"><a href="javascript::void()">Form {{ $data_class->name }}</a></li>
	</ul>


	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Form {{ $data_class->name }}</span>
	    </div>
		<div class="panel-body">
			<form class="form-horizontal" id="form-data-classes" action="/data-classes/{{ $data_class->id }}" method="POST" >
				{{ csrf_field() }}
				@if($data_class->id)
					<input name="_method" type="hidden" value="PUT">
				@endif
				<div class="row">
	                <div class="col-sm-12">
	                    <div class="form-group no-margin-hr">
	                        <label class="control-label">Nama</label>
	                        <input type="text" class="form-control required" name="name" id="name" maxlength="255" value="{{ $data_class->name }}">
	                    </div>
	                </div>
	                <div class="col-sm-12">
	                    <div class="form-group no-margin-hr">
	                        <label class="control-label">Deskripsi</label>
	                        <textarea class="form-control" name="description" id="description">{{ $data_class->description }}</textarea>
	                    </div>
	                </div>
	                <div class="panel-footer text-right">
			            <button type="submit" class="btn btn-flat btn-labeled btn-primary" name="save" value="save"><span class="btn-label icon fa fa-save"></span>Simpan</button>
			            <a href="/data-classes" class="btn btn-default">Batal</a>
			        </div>
	            </div>
            </form>
	    </div>
	</div>

</form>
	

@endsection