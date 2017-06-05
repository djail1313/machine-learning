@extends('layouts.app')

@section('title')
	Datasets
@endsection

@section('content')
		
	<script>
		init.push(function () {
			$('#jq-datatables-attributes').dataTable();
	        $('#jq-datatables-attributes_wrapper .table-caption').text('Daftar Atribut');
	        $('#jq-datatables-attributes_wrapper .dataTables_filter input').attr('placeholder', 'Cari...');

	        $('.list-item').popover();
	        $('.list-item').on('click', ':not(a)', function (e) {
			    $('.list-item').not(this).popover('hide');
			});

		});

		function deleteAttribute(index){
			var id = $(index).parent().parent('.list-item').attr('data-id');
        	bootbox.confirm({
                message: "Anda yakin ingin menghapus data?",
                callback: function(result) {
                    if(result){
                        containerOverlay();
			    		var form = $('#form-attributes-delete');
			    		$(form).attr('action','/attributes/'+ id);
			    		$(form).submit();
                    }
                },
                className: "bootbox-sm"
            });
            return false;
		}
	</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="javascript::void()">Atribut</a></li>
		<li class="active"><a href="javascript::void()">Daftar</a></li>
	</ul>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Atribut</span>
	    </div>
		<div class="panel-body">
			@if (session('status'))
			    <div class="alert alert-success">
			        {{ session('status') }}
			    </div>
			@endif
			<form class="form-horizontal" id="form-attributes-delete" action="/attributes/" method="post">
			    {{ csrf_field() }}
			    <input type="hidden" name="_method" value="DELETE">
			</form>
	        <div class="table-primary">
	            <div class="form-group">
	                <a href="/attributes/create" class="btn btn-flat btn-labeled btn-primary"><span class="btn-label icon fa fa-plus"></span>Buat Atribut Baru</a>
	            </div>
	            <div>
	            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-attributes">
						<thead>
							<tr>
								<th width="10px">No</th>
								<th>Nama</th>
								<th>Deskripsi</th>
								<th class="text-center" width="120px">Aksi</th>
							</tr>
						</thead>
						<tbody>
						@foreach ($attributes as $attribute)
							<tr class="list-item" data-id="{{ $attribute->id }}" data-toggle="popover" data-placement="bottom" data-content="{{ $attribute->description }}" data-title="{{ $attribute->name }}" data-original-title="" title="{{ $attribute->name }}">
								<td>{{ $loop->iteration }}</td>
								<td>{{ $attribute->name }}</td>
								<td>{{ $attribute->description }}</td>
								<td>
									<a href="/attributes/{{ $attribute->id }}/edit" class="btn btn-flat btn-sm btn-warning" title="Ubah"><span class="btn-label icon fa fa-edit"></span></a>
									<a href="#" class="btn btn-flat btn-sm btn-danger btn-delete" title="Hapus" onclick="return deleteAttribute(this)"><span class="btn-label icon fa fa-trash"></span></a>
								</td>
							</tr>
						@endforeach
						</tbody>
					</table>
	            </div>
	        </div>
	    </div>

	</div>
	

@endsection