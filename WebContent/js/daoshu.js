
  function lxfEndtime(){
          $(".lxftime").each(function(){
                var lxfday=$(this).attr("lxfday");//用来判断是否显示天数的变量
                var endtime = new Date($(this).attr("endtime")).getTime();//取结束日期(毫秒值)
                var nowtime = new Date().getTime();        //今天的日期(毫秒值)
                var youtime = endtime-nowtime;//还有多久(毫秒值)
                var seconds = youtime/1000;
                var minutes = Math.floor(seconds/60);
                var hours = Math.floor(minutes/60);
                var days = Math.floor(hours/24);
                var CDay= days ;
                var CHour= hours % 24;
                var CMinute= minutes % 60;
                var CSecond= Math.floor(seconds%60);//"%"是取余运算，可以理解为60进一后取余数，然后只要余数。
                if(endtime<=nowtime){
                        $(this).html("已过期")//如果结束日期小于当前日期就提示过期啦
                        }else{
                                if($(this).attr("lxfday")=="no"){
                                        $(this).html("<span> </span>"+CHour+"</span>: <span>"+CMinute+"</span>: <span>"+CSecond+"</span> ");          //输出没有天数的数据
                                        }else{
                        $(this).html("<span> </span><span>"+days+"</span>: <span>"+CHour+"</span>: <span>"+CMinute+"</span>: <span>"+CSecond+"</span>");          //输出有天数的数据
                                }
                        }
          });
   setTimeout("lxfEndtime()",1000);
  };
$(function(){
      lxfEndtime();
   });
