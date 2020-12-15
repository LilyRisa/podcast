const mess_template = (url,data,status) =>{
    if(status == 'sent'){
        let tmp = `
        <div class="outgoing_msg">
        <div class="incoming_msg_img img_right"> <img src="${url+data.user.avatar}" alt="sunil" class="avatar"> </div>
        <div class="sent_msg">
          <p><a href="/user/${data.user.username}"><b style="color: #00ffad">${data.user.fullname}: </b></a><br/>${data.messenges}</p>
          <span class="time_date"> ${data.created_at}</span> </div>
      </div>
        `;
        return tmp;
    }else{
        let tmp = `
            <div class="incoming_msg">
            <div class="incoming_msg_img"> <img src="${url+data.user.avatar}" alt="sunil" class="avatar"> </div>
            <div class="received_msg">
            <div class="received_withd_msg">
                <p><a href="/user/${data.user.username}"><b style="color: #2293f7">${data.user.fullname}: </b></a><br/>${data.messenges}</p>
                <span class="time_date"> ${data.created_at}</span></div>
            </div>
        </div>
        `;
        return tmp;
    }
    
}