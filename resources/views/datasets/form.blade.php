@extends('layouts.app')

@section('title')
	Form Dataset
@endsection

@section('content')
		
	<script >
	    init.push(function () {
	        // Setup validation
	        $("#form-datasets").validate({
	            submitHandler: function(form) {
	                containerOverlay();
	                form.submit();
	            }
	        });

	        $('#btn-add-attribute-value').on('click', function(){
				var tr = '<tr data-id="">' +
							'<td><input type="hidden"  name="attribute_value_id[]" value="" /><input type="text" name="attribute_value_name[]" /></td>' +
							'<td><textarea name="attribute_value_description[]"></textarea></td>' +
							'<td class="text-center">' + 
								'<a href="#" class="btn btn-flat btn-sm btn-danger btn-delete" title="Hapus" onclick="deleteAttributeValue(this)"><span class="btn-label icon fa fa-trash"></span></a>' +
							'</td>' + 
						'</tr>';
				// $(tr).appendTo('#table-attribute-value');
				$('#table-attribute-value tbody').append(tr);
				return false;
			});

			$(document).ready(function(){
		        $("#select-attribute").select2({
		            allowClear: true,
		            placeholder: "Pilih Atribut"
		        });
		        $("#select-class").select2({
		            allowClear: true,
		            placeholder: "Pilih Class"
		        });
		    });
	    });

	    function addAttribute(){
	    	var attribute_id = $('#select-attribute').val();
	    	var attribute_name = $('#select-attribute').find(":selected").text();
	    	var is_allowed = true;
	    	
	    	if(attribute_id == '') return false;
	    	$.each($('.matrix-dataset-attribute-id'), function(k, v){
	    		if($(v).val() == attribute_id){
	    			alert('Atribut '+ attribute_name +' sudah ada');
	    			is_allowed = false;
	    		}
	    	});
	    	if(!is_allowed) return false;

	    	var tr = '<tr>' +
							'<td>' +
								'<input type="hidden" name="matrix_dataset_id[]" class="matrix-dataset-id" value="" />' +
								'<input type="hidden" name="matrix_dataset_attribute_id[]"  class="matrix-dataset-attribute-id" value="'+ attribute_id +'" />' +
								attribute_name +
							'</td>' +
							'<td><input type="text" name="matrix_dataset_value[]" value="1" /></td>' +
							'<td class="text-center">' +
								'<a class="btn btn-flat btn-sm btn-danger btn-delete" title="Hapus" onclick="return deleteAttribute(this)"><span class="btn-label icon fa fa-trash"></span></a>' +
							'</td>' +
						'</tr>';
			$('#table-matrix-datasets tbody').append(tr);
	    	
	    	return false;
	    }

	    function deleteAttribute(index){
			$(index).parent().parent().remove();
			return false;
		}
	</script>

	<ul class="breadcrumb breadcrumb-page">
		<div class="breadcrumb-label text-light-gray">You are here: </div>
		<li><a href="/datasets/">Dataset</a></li>
		<li class="active"><a href="javascript::void()">Form Dataset</a></li>
	</ul>

	<form id="form-datasets" action="/datasets/{{ $dataset->id }}" method="POST" >
		{{ csrf_field() }}
		@if($dataset->id)
			<input name="_method" type="hidden" value="PUT">
		@endif
		<div class="panel">
		    <div class="panel-heading">
		        <span class="panel-title">Dataset</span>
		    </div>
			<div class="panel-body">
				<div class="form-group">
					<select id="select-class" name="data_class_id">
                        <option value=""></option>
                        @foreach($data_classes as $data_class)
						<option value="{{ $data_class->id }}" {{ $dataset->data_class?$dataset->data_class->id==$data_class->id?'selected':'':'' }}>{{ $data_class->name }}</option>
						@endforeach
                    </select>
				</div>
				<div class="form-inline">
					<div class="form-group" style="min-width: 200px;">
						<select id="select-attribute">
	                        <option value=""></option>
	                        @foreach($attributes as $attribute)
							<option value="{{ $attribute->id }}">{{ $attribute->name }}</option>
							@endforeach
	                    </select>
                    </div>
					<div class="form-group">
		                <a onclick="return addAttribute()" class="btn btn-flat btn-labeled btn-primary" id="btn-add-attribute"><span class="btn-label icon fa fa-plus"></span>Tambah Atribut</a>
		            </div>
				</div>
				<br />
				<div class="table-primary">
		            <div>
		            	<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="table-matrix-datasets">
							<thead>
								<tr>
									<th>Atribut</th>
									<th>Nilai</th>
									<th class="text-center" width="100px">Aksi</th>
								</tr>
							</thead>
							<tbody>
							@if($dataset->matrix_datasets->count())
								@foreach($dataset->matrix_datasets->all() as $matrix_dataset)
									<tr>
										<td>
											<input type="hidden" name="matrix_dataset_id[]" class="matrix-dataset-id" value="{{ $matrix_dataset->id }}" />
											<input type="hidden" name="matrix_dataset_attribute_id[]"  class="matrix-dataset-attribute-id" value="{{ $matrix_dataset->attribute->id }}" />
											{{ $matrix_dataset->attribute->name }}
										</td>
										<td><input type="text" name="matrix_dataset_value[]" value="{{ $matrix_dataset->value }}" /></td>
										<td class="text-center">
											<a class="btn btn-flat btn-sm btn-danger btn-delete" title="Hapus" onclick="return deleteAttribute(this)"><span class="btn-label icon fa fa-trash"></span></a>
										</td>
									</tr>
								@endforeach
							@endif
							</tbody>
						</table>
		            </div>
				</div>
				<div class="panel-footer text-right">
		            <button type="submit" class="btn btn-flat btn-labeled btn-primary" name="save" value="save"><span class="btn-label icon fa fa-save"></span>Simpan</button>
		            <a href="/attributes" class="btn btn-default">Batal</a>
		        </div>
		    </div>
		</div>

	</form>
	

@endsection