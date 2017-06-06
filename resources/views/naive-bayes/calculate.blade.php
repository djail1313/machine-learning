@extends('layouts.app')

@section('title')
	Hasil Diagnosa
@endsection

@section('content')
		
	<script>
		init.push(function () {

		});

	</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="javascript::void()">Naive Bayes</a></li>
		<li class="active"><a href="javascript::void()">Hasil Diagnosa</a></li>
	</ul>


	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Hasil Diagnosa</span>
	    </div>
		<div class="panel-body">
			<strong>
	        Hasil terbesar didapatkan oleh Penyakit <u>{{ $best_result->data_class->name }}</u> dengan Nilai {{ $best_result->value }}.<br />
	        {{ $best_result->data_class->description }}
	    	</strong>
	    	<br /><br />
	    	<div>
	    		<a class="btn btn-flat btn-labeled btn-primary" href="/naive-bayes"><span class="btn-label icon fa fa-search"></span>Diagnosa Ulang</a>
	    	</div>
	    </div>

	</div>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Gejala Terpilih</span>
	    </div>
		<div class="panel-body">
	        <div class="table-primary">
	            <div>
	            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th width="10px">No</th>
								<th>Nama</th>
								<th>Deskripsi</th>
							</tr>
						</thead>
						<tbody>
						@foreach ($attributes as $attribute)
							<tr class="list-item" data-id="{{ $attribute->id }}" data-toggle="popover" data-placement="bottom" data-content="{{ $attribute->description }}" data-title="{{ $attribute->name }}" data-original-title="" title="{{ $attribute->name }}">
								<td>{{ $loop->iteration }}</td>
								<td>{{ $attribute->name }}</td>
								<td>{{ $attribute->description }}</td>
							</tr>
						@endforeach
						</tbody>
					</table>
	            </div>
	        </div>
	    </div>

	</div>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Perhitungan Diagnosa</span>
	    </div>
		<div class="panel-body">
	        <div class="table-primary">
	            <div>
	            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Nama Penyakit</th>
								<th>P(H)</th>
								<th>Gejala Dipilih</th>
								<th>Hasil</th>
							</tr>
						</thead>
						<tbody>
						@foreach ($results as $result)
							<tr>
								<td>{{ $result->data_class->name }}</td>
								<td>{{ $result->probability }}</td>
								<td>
					            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered">
										@foreach ($result->conditional_probabilities as $conditional_probability)
											<tr>
												<td>{{ $conditional_probability->attribute->name }}</td>
												<td>{{ $conditional_probability->value }}</td>
											</tr>
										@endforeach
									</table>
								</td>
								<td>{{ $result->value }}</td>
							</tr>
						@endforeach
						</tbody>
					</table>
	            </div>
	        </div>
	    </div>

	</div>
	

@endsection