function add(arg){
    jQuery('#form1').validationEngine('hideAll');
    var dir;
    if(arg == 1){
        dir = 'user'
    }else if(arg == 2){
        dir = 'category'
    }else if(arg == 3){
        dir = 'key'
    }else if(arg == 4){
        dir = 'chord'
    }else if(arg == 5){
        dir = 'score'
    }else if(arg == 6){
        dir = 'sang'
    }else if(arg == 8){
        dir = 'audio'
    }else if(arg == 9){
        dir = 'video'
    }
    $("#content-wrapper").empty().load(dir+"/add");
}

function list(arg){
    jQuery('#form1').validationEngine('hideAll');
    var dir;
    if(arg == 1){
        dir = 'user'
    }else if(arg == 2){
        dir = 'category'
    }else if(arg == 3){
        dir = 'key'
    }else if(arg == 4){
        dir = 'chord'
    }else if(arg == 5){
        dir = 'score'
    }else if(arg == 6){
        dir = 'sang'
    }else if(arg == 8){
        dir = 'audio'
    }else if(arg == 9){
        dir = 'video'
    }
    $("#content-wrapper").empty().load(dir+"/list");
}