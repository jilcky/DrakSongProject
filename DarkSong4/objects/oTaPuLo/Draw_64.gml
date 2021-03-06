///左上角的hp mp ap
//////////////////红HP////////////////////////
//depth = -999999
GameGuiSetSize(256/1280)
#region 绘制红色HP
var Xs = 16+8;//开始
var Xe = 16+MaxHP;//结束
var Y = 8//y
var W = min(100,HP/MaxHP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度
var St = 0;
var Sm = 1;
//绘制开头
draw_sprite_ext(sprUi,St,Xs,Y,1,1,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,St,Xe+1,Y,1,1,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,1);
};


#endregion

#region //篮

//////////////////MP////////////////////////
var Xs = 16+8;//开始
var Xe = 16+MaxMP;//结束
var Y = 8+5//y
var W = min(100,MP/MaxMP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度
var St = 2;
var Sm = 3;
//绘制开头
draw_sprite_ext(sprUi,St,Xs,Y,1,1,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,St,Xe+1,Y,1,1,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,1);
};
#endregion

#region //绿
//
////////////////////Ap/////////////////////
var Xs = 16+8;//开始
var Xe = 16+MaxAP;//结束
var Y = 8+5+5//y
var W = min(100,AP/MaxAP);
var W = max(0,W);
var W = W*(Xe-Xs);//长度
var St = 4;
var Sm = 5;
//绘制开头
draw_sprite_ext(sprUi,St,Xs,Y,1,1,0,c_white,1);
//绘制结尾
draw_sprite_ext(sprUi,St,Xe+1,Y,1,1,0,c_white,1);

//绘制的底层
for (i=0; i<Xe-Xs; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,0.43);
};
//绘制现有
for (i=0; i<W; i+=1)
{
    draw_sprite_ext(sprUi,Sm,Xs+1+i,Y,1,1,0,c_white,1);
};



//左空位

//depth = 0
#endregion


#region //绘制副武器
draw_sprite_ext(sprUi,9,16-8,8-1,1,1,0,c_white,1);
#endregion

//var BN = "斧头"
switch (OtherAtk)
{
    case oAxe: SP = sAxe ; break;
	    case oDagger: SP = sDagger ; break;
		case oHolyWater:SP = sHolyWater;break;
		case oBoomerang:SP = sBoomerang;break;
		 default: SP = sNoSP;
}
draw_sprite_ext(SP,9,16-8+8,8-1+8,0.75,0.75,0,c_white,1);

//switch (OtherAtk)
//{
//    case "斧头": SP = sAxe ; break;
//	    case "小刀": SP = sDagger ; break;
//		case"圣水":SP = sHolyWater;break;
//		case"回旋镖":SP = sBoomerang;break;
//		 default: SP = sNoSP;
//}
////draw_sprite_ext(SP,0,20-12+2+8,8+8-2+2,1,1,0,c_white,1);//对应的武器

/*
GameGuiSetSize(256/1280)
//绘制上限
for (i=0; i<(MaxHP*0.618); i+=1)
{
   draw_sprite_ext(sHP,0,20-12+20+i,8-2,1,1,0,c_white,0.416);
};

   draw_sprite_ext(sHP,1,20-12+20+i,8-2,1,1,0,c_white,1);
  
  
   //绘制现有
   for (i=0; i<HP*0.618; i+=1)
{
   draw_sprite_ext(sHP,0,20-12+20+i,8-2,1,1,0,c_white,1);//HP
};
   draw_sprite_ext(sHP,1,20-12+20,8-2,1,1,0,c_white,1);//HP
   
   
   
   
//这是绘制Ap的

for (i=0; i<MaxAP*0.618; i+=1)
{
   draw_sprite_ext(sAP,0,20-12+20+i,8-2+5,1,1,0,c_white,0.416);
};

   draw_sprite_ext(sAP,1,20-12+20+i,8-2+5,1,1,0,c_white,1);

   //绘制现有
   for (i=0; i<AP*0.618; i+=1)
{
   draw_sprite_ext(sAP,0,20-12+20+i,8-2+5,1,1,0,c_white,1);
};
 draw_sprite_ext(sAP,1,20-12+20,8-2+5,1,1,0,c_white,1);
 
 

//绘制现在所使用的
draw_sprite_ext(sUI2,0,20-12,8-2,1,1,0,c_white,1);//界面框
draw_sprite_ext(sUI2,1,20-12,8-2,1,1,0,c_white,0.4);//界面框
var SPA;SPA = sNoSP;
var A = Map[?"A"]
var AN = A[?"名字"]
var AS = A[?"数量"]
var AM = A[?"持有上限"]
draw_sprite_part(sUI2,1,0,0,20,20*(AS/AM),20-12,8-2);//界面框
var SP;
//SP = SPA
switch (AN)
{
    case "斧头": SP = sAxe ; break;
	    case "小刀": SP = sDagger ; break;
		case"圣水":SP = sHolyWaterP;break;
		case"回旋镖":SP = sBoomerang;break;
	  default: SP = sNoSP;
		 
}
 
draw_sprite_ext(SP,0,20-12+2+8,8+8-2+2,1,1,0,c_white,1);//对应的武器

//后备箱
draw_sprite_ext(sUI2,0,18-12+20+2,8-2+9+1,0.5,0.5,0,c_white,1);
draw_sprite_ext(sUI2,1,18-12+20+2,8-2+9+1,0.5,0.5,0,c_white,0.4);
var SPB;SPB = sNoSP;
var B = Map[?"B"]
var BN = B[?"名字"]
var BS = B[?"数量"]
var BM = B[?"持有上限"]

draw_sprite_part_ext(sUI2,1,0,0,20,20*(BS/BM),18-12+20+2,8-2+9+1,0.5,0.5,c_white,1)

switch (BN)
{
    case "斧头": SP = sAxe ; break;
	    case "小刀": SP = sDagger ; break;
		case"圣水":SP = sHolyWater;break;
		case"回旋镖":SP = sBoomerang;break;
		 default: SP = sNoSP;
}


draw_sprite_part_ext(SP,1,0,0,20,20*(1),2+18-12+20+1,8+9,0.5,0.5,c_white,1)
