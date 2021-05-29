@extends('main.home_master')

@section('content')

<!-- single-page-start -->
	
	<section class="single-page">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<ol class="breadcrumb">   
					   <li><a href="#"><i class="fa fa-home"></i></a></li>					   
						<li><a href="#">
							@if(session()->get('lang') == 'bulgarian')
							{{ $post->category_bg }}
							@else
							{{ $post->category_en }}
							@endif
						</a></li>
						<li><a href="#">
							@if(session()->get('lang') == 'bulgarian')
							{{ $post->subcategory_bg }}
							@else
							{{ $post->subcategory_en }}
							@endif
						</a></li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12"> 											
					<header class="headline-header margin-bottom-10">
						<h1 class="headline">
							@if(session()->get('lang') == 'bulgarian')
							{{ $post->title_bg }}
							@else
							{{ $post->title_en }}
							@endif
						</h1>
					</header>
		 
		 
				 <div class="article-info margin-bottom-20">
				  <div class="row">
						<div class="col-md-6 col-sm-6"> 
						 <ul class="list-inline">
						 
						 
						 <li>
							{{ $post->name }}
						  </li>     <li><i class="fa fa-clock-o"></i> {{ $post->post_date }} </li>
						 </ul>
						
						</div>
						<div class="col-md-6 col-sm-6 pull-right"> 						
										   
						</div>						
					</div>				 
				 </div>				
			</div>
		  </div>
		  <!-- ******** -->
		  <div class="row">
			<div class="col-md-8 col-sm-8">
				<div class="single-news">
					<img src="{{ asset($post->image) }}" alt="" />
					<h4 class="caption"> 
						@if(session()->get('lang') == 'bulgarian')
						{{ $post->title_bg }}
						@else
						{{ $post->title_en }}
						@endif
					 </h4>
					<p>
						@if(session()->get('lang') == 'bulgarian')
						{!! $post->details_bg !!}
						@else
						{!! $post->details_en !!}
						@endif
					</p>
				</div>
				<!-- ********* -->

<div class="sharethis-inline-share-buttons"></div>
<br><br>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v10.0" nonce="HI1NMq9Z"></script>

<div class="fb-comments" data-href="{{ Request::url() }}" data-width="" data-numposts="8"></div>
<!-- Request::url() this way we see different types of comments on each page -->
@php

$more = DB::table('posts')->where('category_id', $post->category_id)->orderBy('id', 'desc')->limit(6)->get();

@endphp


				<div class="row">
					<div class="col-md-12"><h2 class="heading">
					@if(session()->get('lang') == 'bulgarian')
					Подобни новини
					@else
					Related news
					@endif
				</h2></div>
				@foreach($more as $row)
					<div class="col-md-4 col-sm-4">
						<div class="top-news sng-border-btm">
							<a href="{{ URL::to('view/post/' . $row->id) }}"><img src="{{ asset($row->image) }}" style="height: 200px;"></a>
							<h4 class="heading-02"><a href="{{ URL::to('view/post/' . $row->id) }}">
								@if(session()->get('lang') == 'bulgarian')
								{{ $row->title_bg }}
								@else
								{{ $row->title_en }}
								@endif
							</a> </h4>
						</div>
					</div>
				@endforeach


				</div>
 
			</div>

@php
	$vertical = DB::table('ads')->where('type',1)->first();
@endphp

			<div class="col-md-4 col-sm-4">
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


