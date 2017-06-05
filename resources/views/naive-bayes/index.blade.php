@extends('layouts.app')

@section('title')
	Diagnosa {{ \App\System::find(Session::get('SYSTEM_ID'))->name }}
@endsection

@section('content')
		
	<script>
		init.push(function () {

	        $('.select-all-attributes').on('click', function(){
	        	if($(this).is(':checked')){
	        		$(this).closest('table').find('input[type=checkbox]').prop('checked', true);
	        	} else {
	        		$(this).closest('table').find('input[type=checkbox]').prop('checked', false);
	        	}
	        });

	        $('.select-attribute').on('click', function(){
	        	if(!$(this).is(':checked')){
	        		$(this).closest('table').find('.select-all-attributes').prop('checked', false);
	        	}
	        });

		});
	</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="javascript::void()">Naive Bayes</a></li>
		<li class="active"><a href="javascript::void()">Diagnosa</a></li>
	</ul>

	<div class="panel">
	    <div class="panel-heading">
	        <span class="panel-title">Diagnosa {{ \App\System::find(Session::get('SYSTEM_ID'))->name }}</span>
	    </div>
		<div class="panel-body">
			<form action="/naive-bayes/calculate" method="POST">
				{{ csrf_field() }}
	            <button type="submit" class="btn btn-flat btn-labeled btn-primary" name="submit-button" value="diagnosa"><span class="btn-label icon fa fa-save"></span>Diagnosa</button>
				<br /><br />
				<div class="panel-group" id="accordion-attributes">
					@foreach ($attributes as $key => $attribute)
					@php ($id = str_replace(' ', '-', strtolower($key)))
					<div class="panel">
						<div class="panel-heading">
							<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-attributes" href="#collapse-{{ $id }}">
								{{ $key?$key:'Lainnya' }}
							</a>
						</div>
						<div id="collapse-{{ $id }}" class="panel-collapse in">
							<div class="panel-body">
								<div class="table-primary">
						            <div>
						            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-attributes-{{ $id }}">
											<thead>
												<tr>
													<th>
														<div class="action-checkbox">
															<label class="px-single"><input type="checkbox" name="" value="" class="px select-all-attributes"><span class="lbl"></span></label>
														</div>
													</th>
													<th>No</th>
													<th>Nama</th>
												</tr>
											</thead>
											<tbody>
											@foreach ($attribute->all() as $attribute_item)
												<tr class="list-item-{{ $id }}" data-id="{{ $attribute_item->id }}" data-toggle="popover" data-placement="bottom" data-content="{{ $attribute_item->description }}" data-title="{{ $attribute_item->name }}" data-original-title="" title="{{ $attribute_item->name }}">
													<td>
														<div class="action-checkbox">
															<label class="px-single"><input type="checkbox" name="attributes_id[]" value="{{ $attribute_item->id }}" class="px select-attribute"><span class="lbl"></span></label>
														</div>
													</td>
													<td>{{ $loop->iteration }}</td>
													<td>{{ $attribute_item->name }}</td>
												</tr>
											@endforeach
											</tbody>
										</table>
										<script>
											init.push(function () {
												$('#jq-datatables-attributes-{{ $id }}').dataTable({
													paging: false
												});
										        $('#jq-datatables-attributes-{{ $id }}_wrapper .table-caption').text('Pilih Gejala');
										        $('#jq-datatables-attributes-{{ $id }}_wrapper .dataTables_filter input').attr('placeholder', 'Cari...');
											});
										</script>
						            </div>
						        </div>
							</div>
						</div>
					</div>

					@endforeach

				</div>
				<div class="panel-footer text-right">
		            <button type="submit" class="btn btn-flat btn-labeled btn-primary" name="submit-button" value="diagnosa"><span class="btn-label icon fa fa-save"></span>Diagnosa</button>
		        </div>
			</form>
	        
	    </div>

	</div>
	

@endsection