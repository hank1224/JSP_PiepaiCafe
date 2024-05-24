window.onload= function(){
    var com = document.getElementById('com');
    var pic = document.getElementById('pic').getElementsByTagName('li');
    var li = document.getElementById('num').getElementsByTagName('li');
    var index=0;
    var timer=null;
    
    timer = setInterval(autoPlay,1500);
    
    com.onmouseover = function() {
        clearInterval(timer);
    }
    
    com.onmouseout = function() {
        timer = setInterval(autoPlay, 1500);
    }
    
    for(var i=0;i<li.length;i++){
        li[i].onmousemove=function(){
            clearInterval(timer);
            index=this.innerText-1;
            changePic(index);
        }
    }
    
    function autoPlay(){
        if(++index>=pic.length){
            index=0;
        }
        changePic(index);
    }
    function changePic(liIndex){
        for(var i=0;i<li.length;i++){
            pic[i].style.display="none";
            li[i].className="";
        }
        pic[liIndex].style.display="block";
        li[liIndex].className="on";
    }
    
    
}