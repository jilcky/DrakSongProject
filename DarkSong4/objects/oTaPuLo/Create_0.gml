
action_inherited();
RollSpeed = 0.35;
RollSpeed = 0.5;//滚动速度
RollLong = 3.25;//滚动距离

//攻击
ATK = 1;//攻击力
ASTI = 30//攻击照成硬直
AFlyH = 2;//击飞玩家
AFlyV = 3;//击飞玩家

CanPushBlock = true

HP = 16 ;
MaxHP = 48;
MaxAP = 32;
AP = 15;

//塔普雷的攻击系统
//__pos = 0;
AtkUse = false;


Map = ds_map_create();

var A = ds_map_create();
ds_map_add(A,"名字","");
ds_map_add(A,"数量",0);
ds_map_add(A,"持有上限",0);
ds_map_add(A,"引索",-1);
ds_map_add(Map,"A",A);

var B = ds_map_create();
ds_map_add(B,"名字","");
ds_map_add(B,"数量",0);
ds_map_add(B,"持有上限",0);
ds_map_add(A,"引索",-1);
ds_map_add(Map,"B",B);

OtherAtk =-1;
OtherAtkMap = ds_map_create()
ds_map_add(OtherAtkMap,"小刀",oDagger)
ds_map_add(OtherAtkMap,"斧头",oAxe)
ds_map_add(OtherAtkMap,"圣水",oHolyWater)
ds_map_add(OtherAtkMap,"回旋镖",oBoomerang)
