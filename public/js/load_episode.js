function template(data, url){
	let tmp = '';
	for(let i=0; i < data.length; i++){
		tmp += `
				<div class="col-lg-4">
								<div class="show">
									<div class="show_image">
										<a href="episode/${data[i].id}">
										<img src="${url}${data[i].images}" alt="${data[i].title}" style="width: 100%;height: 300px;object-fit: cover;">
										</a>
										<div class="show_tags">
											<div class="tags">
												<ul class="d-flex flex-row align-items-start justify-content-start">
													<li><a href="#">${data[i].category.name}</a></li>
												</ul>
											</div>
										</div>
										<div class="show_play_icon"><img src="images/play.svg" alt="${data[i].title}"></div>
									</div>
									<div class="show_content">
										<div class="show_date"><a href="episode/${data[i].id}">${data[i].crreated_at}</a></div>
										<div class="show_title"><a href="episode/${data[i].id}">${data[i].title}</a></div>
										<div class="show_info d-flex flex-row align-items-start justify-content-start">
											<div class="show_fav d-flex flex-row align-items-center justify-content-start">
												<div class="show_fav_icon show_info_icon"><img class="svg" src="images/heart.svg" alt=""></div>
												<div class="show_fav_count">2371</div>
											</div>
											<div class="show_comments">
												<a href="{{ route('episode.index', { id: epi.id }) }}">
													<div class="d-flex flex-row align-items-center justify-content-start">
														<div class="show_comments_icon show_info_icon"><img class="svg" src="images/speech-bubble.svg" alt=""></div>
														<div class="show_comments_count">88 Comments</div>
													</div>
												</a>	
											</div>
										</div>
									</div>
								</div>
							</div>
				`;
	}
	return tmp;

}