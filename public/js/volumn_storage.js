(function(){
    $('.slider').on('change',function(){
        let volumn = $(this).val() / 100;
        localStorage.setItem('volumn', volumn);
    });
})()

function getVolumn(){
    const volumn = localStorage.getItem('volumn');
    return volumn;
}