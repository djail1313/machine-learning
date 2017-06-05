@extends('layouts.app')

@section('title')
	Daftar Sistem
@endsection

@section('content')
		
	<script>
		init.push(function () {
			$('#jq-datatables-systems').dataTable();
	        $('#jq-datatables-systems_wrapper .table-caption').text('Daftar Sistem');
	        $('#jq-datatables-systems_wrapper .dataTables_filter input').attr('placeholder', 'Cari...');

	        $('.list-item').popover();
	        $('.list-item').on('click', ':not(a)', function (e) {
			    $('.list-item').not(this).popover('hide');
			});

			$('.switcher-systems').switcher({
				theme: 'square',
				on_state_content: 'Aktif',
				off_state_content: 'Tidak'
			});

			$('.switcher-systems').on('click', function(){
				containerOverlay();
				if(this.checked){
					window.location.href = '/change-system/'+ $(this).parent().parent().parent('.list-item').attr('data-id');
				} else {
					window.location.href = '/change-system/0';
				}
			});

		});

		function deleteSystem(index){
			var id = $(index).parent().parent('.list-item').attr('data-id');
        	bootbox.confirm({
                message: "Anda yakin ingin menghapus data?",
                callback: function(result) {
                    if(result){
                        containerOverlay();
			    		var form = $('#form-systems-delete');
			    		$(form).attr('action','/systems/'+ id);
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
		<li><a href="javascript::void()">Sistem</a></li>
		<li class="active"><a href="javascript::void()">Daftar</a></li>
	</ul>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Sistem</span>
	    </div>
		<div class="panel-body">
			@if (session('status'))
			    <div class="alert alert-success">
			        {{ session('status') }}
			    </div>
			@endif
			<form class="form-horizontal" id="form-systems-delete" action="/systems/" method="post">
			    {{ csrf_field() }}
			    <input type="hidden" name="_method" value="DELETE">
			</form>
	        <div class="table-primary">
	            <div class="form-group">
	                <a href="/systems/create" class="btn btn-flat btn-labeled btn-primary"><span class="btn-label icon fa fa-plus"></span>Buat Sistem Baru</a>
	            </div>
	            <div>
	            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-systems">
						<thead>
							<tr>
								<th width="10px">No</th>
								<th>Nama</th>
								<th>Status</th>
								<th class="text-center" width="120px">Aksi</th>
							</tr>
						</thead>
						<tbody>
						@foreach ($systems as $system)
							<tr class="list-item" data-id="{{ $system->id }}" data-toggle="popover" data-placement="bottom" data-content="{{ $system->description }}" data-title="{{ $system->name }}" data-original-title="" title="{{ $system->name }}">
								<td>{{ $loop->iteration }}</td>
								<td>{{ $system->name }}</td>
								<td>
									<input type="checkbox" data-class="switcher-success" class="switcher-systems" {{ Session::get('SYSTEM_ID')==$system->id ? 'checked="checked"': '' }} >
								</td>
								<td>
									<a href="/systems/{{ $system->id }}/edit" class="btn btn-flat btn-sm btn-warning" title="Ubah"><span class="btn-label icon fa fa-edit"></span></a>
									<a href="#" class="btn btn-flat btn-sm btn-danger btn-delete" title="Hapus" onclick="return deleteSystem(this)"><span class="btn-label icon fa fa-trash"></span></a>
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