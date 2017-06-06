@extends('layouts.app')

@section('title')
	Conditional Probabilities
@endsection

@section('content')
		
	<script>
		init.push(function () {
			$('#jq-datatables-naive-bayes-conditional-probabilities').dataTable();
	        $('#jq-datatables-naive-bayes-conditional-probabilities_wrapper .table-caption').text('Daftar Nilai');
	        $('#jq-datatables-naive-bayes-conditional-probabilities_wrapper .dataTables_filter input').attr('placeholder', 'Cari...');

	        $('.list-item').popover();
	        $('.list-item').on('click', ':not(a)', function (e) {
			    $('.list-item').not(this).popover('hide');
			});

		});
	</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="javascript::void()">Naive Bayes</a></li>
		<li class="active"><a href="javascript::void()">Train</a></li>
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
	        <div class="table-primary">
	        	<form action="/naive-bayes/train" method="POST">
	        		{{ csrf_field() }}
		            <div class="form-group">
		                <button class="btn btn-flat btn-labeled btn-primary"><span class="btn-label icon fa fa-tasks"></span>Train Dataset</button>
		            </div>
	        	</form>
	            <div>
	            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-naive-bayes-conditional-probabilities">
						<thead>
							<tr>
								<th width="10px">No</th>
								<th>Class</th>
								<th>Atribut</th>
								<th>Nilai</th>
							</tr>
						</thead>
						<tbody>
						@foreach ($nb_conditional_probabilities as $nb_conditional_probability)
							<tr class="list-item" data-id="{{ $nb_conditional_probability->id }}" data-toggle="popover" data-placement="bottom" data-content="{{ $nb_conditional_probability->free }}" data-title="{{ $nb_conditional_probability->name }}" data-original-title="" title="{{ $nb_conditional_probability->name }}">
								<td>{{ $loop->iteration }}</td>
								<td>{{ $nb_conditional_probability->data_class->name }}</td>
								<td>{{ $nb_conditional_probability->attribute->name }}</td>
								<td>{{ $nb_conditional_probability->value }}</td>
							</tr>
						@endforeach
						</tbody>
					</table>
	            </div>
	        </div>
	    </div>

	</div>
	

@endsection