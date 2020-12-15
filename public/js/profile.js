var template_profile = (url,data) => {
    let tmp;
    if(data.cover != null){
         tmp = `<div class="col-md-12">
                <hr class="my-4">
            </div>
            <div class="col-xs-12 col-sm-12">
                <div class="panel panel-default panel-google-plus">
                    <div class="panel-heading">
                        <img class="img-circle pull-left img-thumbnail" style="width: 70px;height: 70px;object-fit: cover;" src="${url + data.user.avatar}" alt="Mouse0270" />
                        <h3><a href="/user/${data.user.username}">${data.user.fullname}</a></h3>
                        <h5><span>Shared publicly</span> - <span>${data.created_at}</span> </h5>
                    </div>
                    <div class="panel-body">
                        <p>${data.blog}</p>
                        <a class="panel-google-plus-image" href="#">
                            <img src="${url+data.cover}" />
                        </a>
                    </div>
                </div>
            </div>`;
    }else{
        tmp = `<div class="col-md-12">
                <hr class="my-4">
            </div>
            <div class="col-xs-12 col-sm-12">
                <div class="panel panel-default panel-google-plus">
                    <div class="panel-heading">
                        <img class="img-circle pull-left img-thumbnail" style="width: 70px;height: 70px;object-fit: cover;" src="${url + data.user.avatar}" alt="Mouse0270" />
                        <h3><a href="/user/${data.user.username}">${data.user.fullname}</a></h3>
                        <h5><span>Shared publicly</span> - <span>${data.created_at}</span> </h5>
                    </div>
                    <div class="panel-body">
                        <p>${data.blog}</p>
                    </div>
                </div>
            </div>`;
    }
    return tmp;
}