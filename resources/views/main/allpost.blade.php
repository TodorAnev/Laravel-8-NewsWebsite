@extends('main.home_master')

@section('content')

<!-- archive_page-start -->
	<section class="single_page">						
		<div class="container-fluid">											
		<div class="row">
		
			<div class="col-md-12">
				<div class="single_info">
					<span>
						<a href=""><i class="fa fa-home" aria-hidden="true"></i> 
							Category
					</span>				    
				</div>
			</div>
			<div class="col-md-9 col-sm-8">
			@foreach($catposts as $row)
				<div class="archive_post_sec_again">
					<div class="row">
						<div class="col-md-4 col-sm-5">
							<div class="archive_img_again">
								<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
							</div>
						</div>
						<div class="col-md-8 col-sm-7">
							<div class="archive_padding_again">
								<div class="archive_heading_01">
									<a href="{{ URL::to('view/post/' . $row->id) }}">
							@if(session()->get('lang') == 'bulgarian')
							{{ $row->title_bg }}
							@else
							{{ $row->title_en }}
							@endif
									</a>
								</div>
								<div class="archive_dtails">
							@if(session()->get('lang') == 'bulgarian')
							{!! Str::limit($row->details_bg, 200) !!}
							@else
							{!! Str::limit($row->details_en, 200) !!}
							@endif
								</div>
								<div class="dtails_btn"><a href="{{ URL::to('view/post/' . $row->id) }}">
							@if(session()->get('lang') == 'bulgarian')
							Прочетете повече...
							@else
							Read More...
							@endif
								</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			@endforeach  

			{{ $catposts->links() }}

			</div>
			
			<div class="col-md-3 col-sm-4">

@php
	$vertical = DB::table('ads')->where('type',1)->first();
@endphp
				<!-- add-start -->	
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">
						@if($vertical == NULL)
						@else
						<a href="{{ $vertical->link }}" target="_blank">
							<img src="{{ asset($vertical->ads) }}" alt="" />
						</a>
						@endif
							</div>
						</div>
					</div><!-- /.add-close -->
				@php

$latest = DB::table('posts')->orderBy('id', 'desc')->limit(8)->get();

$highest = DB::table('posts')->orderBy('id', 'asc')->inRandomOrder()->limit(8)->get();

@endphp


				<div class="tab-header">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs nav-justified" role="tablist">
							<li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab" data-toggle="tab" aria-expanded="false">
							@if(session()->get('lang') == 'bulgarian')
							Последни
							@else
							Latest
							@endif
							</a></li>
							<li role="presentation" ><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab" aria-expanded="true">
							@if(session()->get('lang') == 'bulgarian')
							Горещи
							@else
							Highest
							@endif
						</a></li>
						</ul>
		
						<div class="tab-content ">
							<div role="tabpanel" class="tab-pane in active" id="tab21">
								<div class="news-titletab">

									@foreach($latest as $row)
									<div class="news-title-02">
										<h4 class="heading-03"><a href="#">
								@if(session()->get('lang') == 'bulgarian')
								{{ $row->title_bg }}
								@else
								{{ $row->title_en }}
								@endif
										</a> </h4>
									</div>
									@endforeach
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab23">	
								<div class="news-titletab">
									@foreach($highest as $row)
									<div class="news-title-02">
										<h4 class="heading-03"><a href="#">
								@if(session()->get('lang') == 'bulgarian')
								{{ $row->title_bg }}
								@else
								{{ $row->title_en }}
								@endif
										</a> </h4>
									</div>
									@endforeach
								</div>   						                                          
							</div>
						</div>
				</div>
				<!-- add-start -->	

@php
	$vertical = DB::table('ads')->where('type',1)->skip(1)->first();
@endphp

					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">
						@if($vertical == NULL)
						@else
						<a href="{{ $vertical->link }}" target="_blank">
							<img src="{{ asset($vertical->ads) }}" alt="" />
						</a>
						@endif
							</div>
						</div>
					</div><!-- /.add-close -->
			</div>			
		</div>
	</div>
</section>

@endsection