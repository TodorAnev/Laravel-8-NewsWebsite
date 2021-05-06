@extends('main.home_master')

@section('content')

@php

$firstsectionbig = DB::table('posts')->where('first_section_thumbnail', 1)->orderBy('id', 'desc')->first();
$firstsection = DB::table('posts')->where('first_section', 1)->orderBy('id', 'desc')->limit(8)->get();


@endphp

<!-- 1st-news-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-8">
					<div class="row">
						<div class="col-md-1 col-sm-1 col-lg-1"></div>
						<div class="col-md-10 col-sm-10">
							<div class="lead-news">

	 <div class="service-img"><a href="#"><img src="{{ asset($firstsectionbig->image) }}" width="800px" alt="First Section BigThumbnail"></a></div>
								<div class="content">
		 <h4 class="lead-heading-01"><a href="#">

		 	@if(session()->get('lang') == 'bulgarian')
			{{ $firstsectionbig->title_bg }}
			@else
			{{ $firstsectionbig->title_en }}
			@endif 

		</a> </h4>
								</div>
							</div>
						</div>
						
					</div>
						<div class="row">

							@foreach($firstsection as $row)

								<div class="col-md-3 col-sm-3">
									<div class="top-news">
										<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
										<h4 class="heading-02"><a href="#">
											
								@if(session()->get('lang') == 'bulgarian')
								{{ Str::limit($row->title_bg, 50) }}
								@else
								{{ Str::limit($row->title_en, 50) }}
								@endif 

										</a> </h4>
									</div>
								</div>

							@endforeach

							</div>
					
	<!-- add-start -->	
	<div class="row">
		<div class="col-md-12 col-sm-12">

			<div class="add"><img src="{{ asset('frontend/assets/img/test.jpg') }}" alt="" /></div>
		</div>
	</div><!-- /.add-close -->	
	
	<!-- news-start -->
	<div class="row">

@php
$firstcategory = DB::table('categories')->first();

$firstcatpostbig = DB::table('posts')->where('category_id', $firstcategory->id)->where('bigthumbnail',1)->first();

$firstcatpostsmall = DB::table('posts')->where('category_id', $firstcategory->id)->where('bigthumbnail',NULL)->limit(3)->get();


@endphp

<div class="col-md-6 col-sm-6">
	<div class="bg-one">
		<div class="cetagory-title"><a href="#">

			@if(session()->get('lang') == 'bulgarian')
			{{ $firstcategory->category_bg }}
			@else
			{{ $firstcategory->category_en }}
			@endif 

			<span>

			@if(session()->get('lang') == 'bulgarian')
			Повече
			@else
			More
			@endif  

				<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
		<div class="row">


			<div class="col-md-6 col-sm-6">
				<div class="top-news">
					<a href="#"><img src="{{ asset($firstcatpostbig->image) }}" alt="Notebook"></a>
					<h4 class="heading-02"><a href="#">
						
						@if(session()->get('lang') == 'bulgarian')
						{{ $firstcatpostbig->title_bg }}
						@else
						{{ $firstcatpostbig->title_en }}
						@endif

					</a> </h4>
				</div>
			</div>


			<div class="col-md-6 col-sm-6">
				@foreach($firstcatpostsmall as $row)
				<div class="image-title">
					<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
					<h4 class="heading-03"><a href="#">
						@if(session()->get('lang') == 'bulgarian')
						{{$row->title_bg}}
						@else
						{{$row->title_en}}
						@endif
					</a> </h4>
				</div>
				@endforeach
			</div>
		</div>
	</div>
</div>


@php

$secondcategory = DB::table('categories')->skip(1)->first();

$secondcatpostbig = DB::table('posts')->where('category_id', $secondcategory->id)->where('bigthumbnail',1)->first();

$secondcatpostsmall = DB::table('posts')->where('category_id', $secondcategory->id)->where('bigthumbnail',NULL)->limit(3)->get();

@endphp


<div class="col-md-6 col-sm-6">
	<div class="bg-one">
		<div class="cetagory-title"><a href="#">


			@if(session()->get('lang') == 'bulgarian')
			{{ $secondcategory->category_bg }}
			@else
			{{ $secondcategory->category_en }}
			@endif 

			<span>

			@if(session()->get('lang') == 'bulgarian')
			Повече
			@else
			More
			@endif  



				<i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
		<div class="row">

			<div class="col-md-6 col-sm-6">
				<div class="top-news">
					<a href="#"><img src="{{ asset($secondcatpostbig->image) }}" alt="Notebook"></a>
					<h4 class="heading-02"><a href="#">
						
						@if(session()->get('lang') == 'bulgarian')
						{{ $secondcatpostbig->title_bg }}
						@else
						{{ $secondcatpostbig->title_en }}
						@endif

					</a> </h4>
				</div>
			</div>


			<div class="col-md-6 col-sm-6">
				@foreach($secondcatpostsmall as $row)
				<div class="image-title">
					<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
					<h4 class="heading-03"><a href="#">
						@if(session()->get('lang') == 'bulgarian')
						{{$row->title_bg}}
						@else
						{{$row->title_en}}
						@endif
					</a> </h4>
				</div>
				@endforeach
			</div>

				</div>
			</div>
		</div>
	</div>					
</div>
				<div class="col-md-3 col-sm-3">
					<!-- add-start -->	
					<div class="row">
						<div class="col-md-12 col-sm-12">

							<div class="sidebar-add"><img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt="" /></div>
						</div>
					</div><!-- /.add-close -->	
					

					@php 

					$livetv = DB::table('livetvs')->first();

					@endphp

					@if($livetv->status == 1)

					<!-- youtube-live-start -->	
					<div class="cetagory-title-03">
						@if(session()->get('lang') == 'bulgarian')
						Телевизия на живо
						@else
						Live TV
						@endif
					</div>
					<div class="photo">
						<div class="embed-responsive embed-responsive-16by9 embed-responsive-item" style="margin-bottom:5px;">
			 			
			 			{!! $livetv->embed_code !!}


						</div>
					</div><!-- /.youtube-live-close -->	
					
					@endif



					<!-- facebook-page-start -->
					<div class="cetagory-title-03">Facebook </div>
					<div class="fb-root">
						facebook page here
					</div><!-- /.facebook-page-close -->	
					
					<!-- add-start -->	
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">

								<img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt="" />
							</div>
						</div>
					</div><!-- /.add-close -->	
				</div>
			</div>
		</div>
	</section><!-- /.1st-news-section-close -->

	<!-- 2nd-news-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">

@php

$thirdcategory = DB::table('categories')->skip(2)->first();

$thirdcatpostbig = DB::table('posts')->where('category_id', $thirdcategory->id)->where('bigthumbnail',1)->first();

$thirdcatpostsmall = DB::table('posts')->where('category_id', $thirdcategory->id)->where('bigthumbnail',NULL)->limit(3)->get();

@endphp

				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">


					@if(session()->get('lang') == 'bulgarian')
					{{ $thirdcategory->category_bg }}
					@else
					{{ $thirdcategory->category_en }}
					@endif 

					<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>

					@if(session()->get('lang') == 'bulgarian')
					Всички новини
					@else
					All News
					@endif  

							 

						</span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset($thirdcatpostbig->image) }}" alt="Notebook"></a>
									<h4 class="heading-02"><a href="#">@if(session()->get('lang') == 'bulgarian')
									{{ $thirdcatpostbig->title_bg }}
									@else
									{{ $thirdcatpostbig->title_en }}
									@endif

									</a> </h4>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
							@foreach($thirdcatpostsmall as $row)
							<div class="image-title">
								<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
								<h4 class="heading-03"><a href="#">
									@if(session()->get('lang') == 'bulgarian')
									{{$row->title_bg}}
									@else
									{{$row->title_en}}
									@endif
								</a> </h4>
							</div>
							@endforeach
						</div>
						</div>
					</div>
				</div>


@php

$fourthcategory = DB::table('categories')->skip(3)->first();

$fourthcatpostbig = DB::table('posts')->where('category_id', $fourthcategory->id)->where('bigthumbnail',1)->first();

$fourthcatpostsmall = DB::table('posts')->where('category_id', $fourthcategory->id)->where('bigthumbnail',NULL)->limit(3)->get();

@endphp


				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">


					@if(session()->get('lang') == 'bulgarian')
					{{ $fourthcategory->category_bg }}
					@else
					{{ $fourthcategory->category_en }}
					@endif 

					<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>

					@if(session()->get('lang') == 'bulgarian')
					Всички новини
					@else
					All News
					@endif  

							 

						</span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset($fourthcatpostbig->image) }}" alt="Notebook"></a>
									<h4 class="heading-02"><a href="#">@if(session()->get('lang') == 'bulgarian')
									{{ $fourthcatpostbig->title_bg }}
									@else
									{{ $fourthcatpostbig->title_en }}
									@endif

									</a> </h4>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
							@foreach($fourthcatpostsmall as $row)
							<div class="image-title">
								<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
								<h4 class="heading-03"><a href="#">
									@if(session()->get('lang') == 'bulgarian')
									{{$row->title_bg}}
									@else
									{{$row->title_en}}
									@endif
								</a> </h4>
							</div>
							@endforeach
						</div>
						</div>
					</div>
				</div>

			</div>
			<!-- ******* -->
<!-- 			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">Biz-Econ<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> All News  </span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-02"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="image-title">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
								</div>
								<div class="image-title">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
								</div>
								<div class="image-title">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">Education <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> All News  </span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-02"><a href="#">Students won't get form fill-up fee back</a> </h4>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<div class="image-title">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a> </h4>
								</div>
								<div class="image-title">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a> </h4>
								</div>
								<div class="image-title">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a> </h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div> -->
			<!-- add-start -->	
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="add"><img src="{{ asset('frontend/assets/img/test.jpg') }}" alt="" /></div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="add"><img src="{{ asset('frontend/assets/img/test.jpg') }}" alt="" /></div>
				</div>
			</div><!-- /.add-close -->	
			
		</div>
	</section><!-- /.2nd-news-section-close -->

	<!-- 3rd-news-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">

@php

$fifthcategory = DB::table('categories')->skip(4)->first();

$fifthcatpostbig = DB::table('posts')->where('category_id', $fifthcategory->id)->where('bigthumbnail',1)->first();

$fifthcatpostsmall = DB::table('posts')->where('category_id', $fifthcategory->id)->where('bigthumbnail',NULL)->limit(3)->get();

$fifthcatpostsmallskip = DB::table('posts')->skip(3)->where('category_id', $fifthcategory->id)->where('bigthumbnail',NULL)->limit(3)->get();

@endphp

				<div class="col-md-9 col-sm-9">
					<div class="cetagory-title-02"><a href="#">


					@if(session()->get('lang') == 'bulgarian')
					{{ $fifthcategory->category_bg }}
					@else
					{{ $fifthcategory->category_en }}
					@endif 

					<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>

					@if(session()->get('lang') == 'bulgarian')
					Всички новини
					@else
					All News
					@endif  

							 

						</span></a></div>

					
					<div class="row">

						<div class="col-md-4 col-sm-4">
							<div class="top-news">
									<a href="#"><img src="{{ asset($fifthcatpostbig->image) }}" alt="Notebook"></a>
									<h4 class="heading-02"><a href="#">@if(session()->get('lang') == 'bulgarian')
									{{ $fifthcatpostbig->title_bg }}
									@else
									{{ $fifthcatpostbig->title_en }}
									@endif

									</a> </h4>
								</div>
						</div>


						<div class="col-md-4 col-sm-4">
							@foreach($fifthcatpostsmall as $row)
							<div class="image-title">
								<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
								<h4 class="heading-03"><a href="#">
									@if(session()->get('lang') == 'bulgarian')
									{{$row->title_bg}}
									@else
									{{$row->title_en}}
									@endif
								</a> </h4>
							</div>
							@endforeach
						</div>
						<div class="col-md-4 col-sm-4">
							@foreach($fifthcatpostsmallskip as $row)
							<div class="image-title">
								<a href="#"><img src="{{ asset($row->image) }}" alt="Notebook"></a>
								<h4 class="heading-03"><a href="#">
									@if(session()->get('lang') == 'bulgarian')
									{{$row->title_bg}}
									@else
									{{$row->title_en}}
									@endif
								</a> </h4>
							</div>
							@endforeach
						</div>
					</div>
					<!-- ******* -->
					<br />
<!-- 					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="cetagory-title-02"><a href="#">Sci-Tech<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> সব খবর  </span></a></div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="bg-gray">
								<div class="top-news">
									<a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}" alt="Notebook"></a>
									<h4 class="heading-02"><a href="#">Facebook Messenger gets shiny new logo </a> </h4>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="news-title">
								<a href="#">Facebook Messenger gets shiny new logo </a>
							</div>
							<div class="news-title">
								<a href="#">Facebook Messenger gets shiny new logo </a>
							</div>
							<div class="news-title">
								<a href="#">Facebook Messenger gets shiny new logo</a>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="news-title">
								<a href="#">Facebook Messenger gets shiny new logo </a>
							</div>
							<div class="news-title">
								<a href="#">Facebook Messenger gets shiny new logo </a>
							</div>
							<div class="news-title">
								<a href="#">Facebook Messenger gets shiny new logo </a>
							</div>
						</div>
					</div> -->
					
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">
								<img src="{{ asset('frontend/assets/img/test.jpg') }}" alt="" />
							</div>
						</div>
					</div><!-- /.add-close -->	


				</div>

@php

$latest = DB::table('posts')->orderBy('id', 'desc')->limit(5)->get();

$highest = DB::table('posts')->orderBy('id', 'asc')->inRandomOrder()->limit(5)->get();

@endphp

				<div class="col-md-3 col-sm-3">
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

						<!-- Tab panes -->
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
					<div class="cetagory-title-03">Old News  </div>
					<form action="" method="post">
						<div class="old-news-date">
						   <input type="text" name="from" placeholder="From Date" required="">
						   <input type="text" name="" placeholder="To Date">			
						</div>
						<div class="old-date-button">
							<input type="submit" value="search ">
						</div>
				   </form>
				   <!-- news -->
				   <br><br><br><br><br>
				   <div class="cetagory-title-04"> 

				   		@if(session()->get('lang') == 'bulgarian')
						Важни сайтове
						@else
						Important Websites
						@endif

				   </div>
				   <div class="">

				   	@php

				   	$website = DB::table('websites')->get();

				   	@endphp

				   	@foreach($website as $row)
				   	<div class="news-title-02">
				   		<h4 class="heading-03"><a href="{{ $row->website_link }}"><i class="fa fa-check" aria-hidden="true"></i> {{ $row->website_name }}  </a> </h4>
				   	</div>
				   	@endforeach
				  
				   </div>

				</div>
			</div>
		</div>
	</section><!-- /.3rd-news-section-close -->
	


	
@php

$photobig = DB::table('photos')->where('type', 1)->orderBy('id','desc')->first();

$photosmall = DB::table('photos')->where('type',0)->orderBy('id', 'desc')->limit(5)->get();

@endphp

	


	<!-- gallery-section-start -->	
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-sm-7">
					<div class="gallery_cetagory-title">
						@if(session()->get('lang') == 'bulgarian')
						Галерия
						@else
						Photo Gallery
						@endif
					</div>

					<div class="row">
	                    <div class="col-md-8 col-sm-8">
	                        <div class="photo_screen">
	                            <div class="myPhotos" style="width:100%">
                                      <img src="{{ asset($photobig->photo) }}"  alt="Avatar">
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-md-4 col-sm-4">
	                        <div class="photo_list_bg">
	                            
	                            @foreach($photosmall as $row)
	                            <div class="photo_img photo_border active">
	                                <img src="{{ asset($row->photo) }}" alt="image" onclick="currentDiv(1)">
	                                <div class="heading-03">
	                                    {{ $row->title }}
	                                </div>
	                            </div>
	                            @endforeach

	                        </div>
	                    </div>
	                </div>

	                <!--=======================================
                    Video Gallery clickable jquary  start
                ========================================-->

                            <script>
                                    var slideIndex = 1;
                                    showDivs(slideIndex);

                                    function plusDivs(n) {
                                      showDivs(slideIndex += n);
                                    }

                                    function currentDiv(n) {
                                      showDivs(slideIndex = n);
                                    }

                                    function showDivs(n) {
                                      var i;
                                      var x = document.getElementsByClassName("myPhotos");
                                      var dots = document.getElementsByClassName("demo");
                                      if (n > x.length) {slideIndex = 1}
                                      if (n < 1) {slideIndex = x.length}
                                      for (i = 0; i < x.length; i++) {
                                         x[i].style.display = "none";
                                      }
                                      for (i = 0; i < dots.length; i++) {
                                         dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                                      }
                                      x[slideIndex-1].style.display = "block";
                                      dots[slideIndex-1].className += " w3-opacity-off";
                                    }
                                </script>

                <!--=======================================
                    Video Gallery clickable  jquary  close
                =========================================-->

				</div>
				<div class="col-md-4 col-sm-5">
					<div class="gallery_cetagory-title"> 
					@if(session()->get('lang') == 'bulgarian')
					Видео Галерия
					@else
					Video Gallery
					@endif 
				</div>

@php

$videobig = DB::table('videos')->where('type', 1)->orderBy('id','desc')->first();

$videosmall = DB::table('videos')->where('type',0)->orderBy('id', 'desc')->limit(4)->get();

@endphp

					<div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="video_screen">
                                <div class="myVideos" style="width:100%">
                                    <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
     <iframe width="853" height="480" src="https://www.youtube.com/embed/{{ $videobig->embed_code }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                        <div class="video_screen">
                           <div class="gallery_sec owl-carousel">
        

                            	@foreach($videosmall as $row)
		<div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
		<iframe width="853" height="480" src="https://www.youtube.com/embed/{{ $row->embed_code }}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		                                </div>
                                @endforeach

                         </div>
                          
                        </div>
                    </div>


                    <script>
                        var slideIndex = 1;
                        showDivss(slideIndex);

                        function plusDivs(n) {
                          showDivss(slideIndex += n);
                        }

                        function currentDivs(n) {
                          showDivss(slideIndex = n);
                        }

                        function showDivss(n) {
                          var i;
                          var x = document.getElementsByClassName("myVideos");
                          var dots = document.getElementsByClassName("demo");
                          if (n > x.length) {slideIndex = 1}
                          if (n < 1) {slideIndex = x.length}
                          for (i = 0; i < x.length; i++) {
                             x[i].style.display = "none";
                          }
                          for (i = 0; i < dots.length; i++) {
                             dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                          }
                          x[slideIndex-1].style.display = "block";
                          dots[slideIndex-1].className += " w3-opacity-off";
                        }
                    </script>

				</div>
			</div>
		</div>
	</section><!-- /.gallery-section-close -->

@endsection