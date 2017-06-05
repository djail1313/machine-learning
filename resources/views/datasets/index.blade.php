@extends('layouts.app')

@section('title')
	Datasets
@endsection

@section('content')
		
	<script>
		init.push(function () {
			$('#jq-datatables-datasets').dataTable({ 
				scrollY: "800px",
				scrollX : true,
				scrollCollapse: true,
				paging: false,
				// fixedColumns:   {
		  //           leftColumns: 2
		  //       }
			});
	        $('#jq-datatables-datasets_wrapper .table-caption').text('Datasets');
	        $('#jq-datatables-datasets_wrapper .dataTables_filter input').attr('placeholder', 'Cari...');

	        $('.list-item').popover();
	        $('.list-item').on('click', ':not(a)', function (e) {
			    $('.list-item').not(this).popover('hide');
			});

		});

		function deleteDataset(index){
			var id = $(index).parent().parent('.list-item').attr('data-id');
        	bootbox.confirm({
                message: "Anda yakin ingin menghapus data?",
                callback: function(result) {
                    if(result){
                        containerOverlay();
			    		var form = $('#form-datasets-delete');
			    		$(form).attr('action','/datasets/'+ id);
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
		<li><a href="javascript::void()">Dataset</a></li>
		<li class="active"><a href="javascript::void()">Daftar</a></li>
	</ul>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Dataset</span>
	    </div>
		<div class="panel-body">
			@if (session('status'))
			    <div class="alert alert-success">
			        {{ session('status') }}
			    </div>
			@endif
			<form class="form-horizontal" id="form-datasets-delete" action="/datasets/" method="post">
			    {{ csrf_field() }}
			    <input type="hidden" name="_method" value="DELETE">
			</form>
	        <div class="table-primary">
	            <div class="form-group">
	                <a href="/datasets/create" class="btn btn-flat btn-labeled btn-primary"><span class="btn-label icon fa fa-plus"></span>Buat Dataset Baru</a>
	            </div>
	            <div>
	            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-datasets">
						<thead>
							<tr class="text-center">
								<th width="20px">No</th>
								<th style="width: 200px;">Class</th>
								@foreach ($attributes as $attribute)
								<th style="min-width: 100px;">{{ $attribute->name }}</th>
								@endforeach
								<th width="120px">Aksi</th>
							</tr>
						</thead>
						<tbody>
						@foreach ($datasets as $dataset)
							<tr class="list-item" data-id="{{ $dataset->id }}" data-toggle="popover" data-placement="bottom" data-content="{{ $dataset->description }}" data-title="{{ $dataset->name }}" data-original-title="" title="{{ $dataset->name }}">
								<td>{{ $loop->iteration }}</td>
								<td>{{ $dataset->data_class!=NULL ? $dataset->data_class->name:'' }}</td>
								@foreach ($attributes as $attribute)
									@php ($matrix_dataset = $dataset->matrix_datasets->where('attribute_id', $attribute->id)->first())
								<td>{{ $matrix_dataset!=NULL ? $matrix_dataset->value : '-' }}</td>
								@endforeach
								<td>
									<a href="/datasets/{{ $dataset->id }}/edit" class="btn btn-flat btn-sm btn-warning" title="Ubah"><span class="btn-label icon fa fa-edit"></span></a>
									<a href="#" class="btn btn-flat btn-sm btn-danger btn-delete" title="Hapus" onclick="return deleteDataset(this)"><span class="btn-label icon fa fa-trash"></span></a>
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