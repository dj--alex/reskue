if not love then 
    error('This plugin for LOVE2D framework, and not works with other lua-builds'..
                'Also it requires love.filesystem and love.thread modules', 2)
end  --  И дал он ему патроны.  Бесконечные патроны.  
-- Sublime editor :: CTRL-SHIFT-P набрать menu. и оно вернётся и горячие кнопки на русском заработают! Пока сам не решишь не решится. 
i=1;
mastervolume=10;
musicvolume=10;
effectvolume=10;
signal_x=0;
signal_y=0;
jezykow=0;
plusyz=0;
vsyncc=1;
map_changed=0;
gameover=0;
object_to_rendering=0;
SYSname, SYSversion, SYSvendor, SYSdevice = love.graphics.getRendererInfo( );
SYSinfo=SYSname.." "..SYSversion.." "..SYSvendor.." "..SYSdevice; 
realrikoszet=0; 
tanksdestroyed=0;
spriteBatch=0; 
randommove_word="";
new_x_block_fix="";
hardened_ammo_get="";
local music = {};
music.tracks = {};
music.current = nil;
music.state = 'no';

startscreenmode=0;
damagetimertanks=0;
huded=0;
rotate_tt=0;
selectedtankid=0;
tanks_speed_am=800;
restoreoldcontrol=0;
lastmove=1;
ammoX={};
totalammo=0;
ammonum=0;
x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_am=0,0,0,0,0;
start_x=0;
start_y=0; 
language=2;
timerline=0; 
retobjectcode=0; 
wsego_scientist_teleporterow=0;
textures3={};
damagetimerPL1=0;
scientists=0; 
firstload=0;
classic_zx_spectrum_sprite_move=0;
fuel=0;
xpla1fix=0;
ypla1fix=0;
execute="";
ossys=love.system.getOS();
loadexternallevel=0;
ta=0;
feartanks=0;
renderammoshot_tanks=1;
 shippingzone_y,shippingzone_x=0,0;
countinventory_s,countinventory_i=0,0;
shippingcenteritems={};
 itemshippinglist={};
 maximumshipcapacity=20;
tanks_am=0;
slowdowntimerPL2=0;
feartimerPL2=0; 
solarpower=0;
powersetupbysolarenergy=0; 
rman_x2=0; rman_y2=0; rx2=0; ry2=0; rplusx=0;
-- SYS Запланировано: нет сохраняемых настроек локально. - f = io.open(getScriptPath().."\\param.ini", "w")  
standartdamage=50; 
editor_dont_show_broken_items=1;
protecttank=0;
timerx=0; 
enemies={};
smsg4="";
freezetanks=0;
speedtanks=0;
playericon="";
player1tank="";
rotateplayer=0;
totalenemies=0;
nomusic=1; --музыка выключена заранее  0 gjcnfdbnm перед релизом
smsg2=""; --print ("bldżad");
smsg3="";
camera_time_move=0;
editorcallselectobject=0;
editorvisualcode=0;
textureseditor={};
editorrenderedcodecreated=0;
skan_y_max=0;
skan_x_max=0;
ammoKEYPL1=0;
movePL1=0;  
counteditoritems=0;
editorobjects=0;
xeditordata={}; 
cannondrawx=0;
cannondrawy=0;
cannondrawstartshot=0;
cannondrawx2=0;
cannondrawy2=0;
cannondrawstartshot2=0;
editorprepared=0;
nowait=0;
playsound=0;
enemytank=0;
slotlimit=1;-- число виртуальных слотов инвентаря, системный максимум.  Не ячейки инвентаря.
dasglukenfild=0;
getkeyforpause=0;
inventoryitem1=0;inventoryitem2=0;inventoryitem3=0;inventoryitem4=0;
countinventory=0;
maximuminventorysize=5;
inventoryitemtable={}; -- создание инвентаря из 4 или более слотов опционально.
allowpowerrescan=0;
gamescreenfixhorizontal=0;
gamescreenfixvertical=0;
minimumtanks=0;
solarenergy=0;
darkzone=1;
totalsolarenergy=0;
greenshitactivity=0;
cameraleftpos_x_hor=0;
camerauppos_y_vert=0;
greenshitdelay=80;
greenshithastetime=0;
seed=0;
mushroom=0;
UNUSED1=0;
inventorybelt=0;
allowedaidspersonal=0;
battery=0; 
starttanks=0;
speedtimer=0
speedtimerpla2=0;
loadsavegame=0;
saveslot=0;
selectmusic=0;
resolutionPC=0;
zero=0;
selectedoptionmenu=1;
wsego=0;
acidprotect=0;
slowdowntimertanks=0;
slowdowntimer=0;
  local textinput = {keys = {default = ''}, current = 'default'}
player2AI=1; --   1 перед релизом.
startshootcoordinatex=-1;
startshootcoordinatey=-1;
hpdetect=0;
skany=-1;
skanx=-1;
hpdetech=1;
add="";
t="";
ax=0;
menu=-1;

poziom=0;
colorshift=1;
ay=0;
adx=0;
ady=0;
t_id=0;
id=0;
pathtosavemap=0;
resize = {w=0,h=0};
screen = {w=0,h=0};
touch = {ax=0,ay=0};
ossys="uj";
defacescreen=0;
xdataarchived=0;
menuoption=0;
renderammoshot=0;
freezetimerPL1=0;freezetimerPL2=0;freezetimerPL3=0;
rendericeshot=0;
maximumvertical=9;
levelnumber=1; --startowyj uroweń
cannleftx=0;
cannrightx=0;
canny=0;
timerz=0;
zzxammo=0;
zzzammo=0;
pause=1;
anikadr=0;
anicycles=0;
otladka=0;
showandroidbar=0;
passthrurock=0;
selectedobject=56;
selectedobject2=56;
renderer=0;
tank=0;
hp=10;
hpmax=10;
reservedaids=1;
ammo=10;
ice=10;
lives=10;
bombs=10;
keys=10;
water=10;
semode=10;
protect=0;
ey=10;
sy=10;
sx=10;
exp=10;
zx=10;
zy=10;
p1=10;
dr=10;
tx=10;
ty=10;
wt=10;
p2=10;
p3=10;
p4=10; 
targetremains=10;
   powerstate=10;
   puszkistate=1;
paralysatorrifle=0;
paralysatorammo=0;
--задаются переменные, да таким вот тупым методом, иначе сыпется
--Все эти переменные задаются только один раз , некоторые потом будут в сохранёнке.
score=0;
drawonce=0; 
maxwidth=love.graphics.getWidth();
maxheight=love.graphics.getHeight();

rozmiarznak=40 ; -- контролирует размер знакоместа в игре. размер по умолчанию.  height - wysota  width - szirina.
 
local new_source = love.audio.newSource
function music:load(list)
  for i = 1, #list do
    local file = list[i]
    self.tracks[i] = new_source(file, 'stream')
  end
end

music:load{
  'Sounds/Rescue Spectrum Title Music.mp3',
  'Sounds/muzyka-d-zone.xm',
  'Sounds/muzyka-e-12242.s3m',
  'Sounds/muzyka-d-zone.xm'
}

function music:play(n)
  self:stop()
  n = n or math.random(#self.tracks)
  self.current = assert(self.tracks[n], "No track #"..i)
  self.current:play()
  self.state = 'play'
  self.current:setVolume(musicvolume/10);
end

function music:stop()
  if self.current then
    self.state = 'stop'
    self.current:stop()
  end
end

function music:pause()
  if self.current then
    self.state = 'pause'
    self.current:pause()
  end
  self.current:setVolume(musicvolume/10);
end

-- запуск других треков по окончанию
function music:update()
  self.current:setVolume(musicvolume/10);
  if self.state ~= 'play' then
    return
  end

  local track = self.current
  if track and not track:isPlaying() then
    self:play()
  end
  
end




function setresolution (maxwidth,option) 
  --if (ossys=="Android") then plusandr=0; else plusandr=4; end 
            gamescreenfixvertical=0;
        if (maxwidth>0) then rozmiarznak=35 ;             gamescreenfixhorizontal=-6;               end;  
       if (maxwidth>800) then rozmiarznak=40 ;             gamescreenfixhorizontal=-3;               end;
        if (maxwidth>1020) then rozmiarznak=40 ;             gamescreenfixhorizontal=-3;             end;
        if (maxwidth>1120) then rozmiarznak=40 ;            gamescreenfixhorizontal=-3;            end;
        if (maxwidth>1620) then rozmiarznak=45 ;            gamescreenfixhorizontal=-2;            end;
        if (maxwidth>1919) then rozmiarznak=50;             gamescreenfixhorizontal=0;              end;
        if (maxwidth>2200) then rozmiarznak=55;           gamescreenfixhorizontal=2;             end;
        if (maxwidth>2500) then rozmiarznak=60;             end;
        if (maxwidth>2800) then rozmiarznak=80;           end;
        if (maxwidth>3200) then rozmiarznak=80;            end;

        if (option==7) then rozmiarznak=40;--  standartwysotagraphicmenu=90; standartwysotatextmenu=40; standartsizeusermenu=120;
          gamescreenfixhorizontal=-2;   end;

          basetexturesize=40;
         sc=rozmiarznak/basetexturesize;  --scaling == NIL BLDŻAD TUTAJ -- здесь указывается на какое число ориентируется вся игра (40обычно)
         scaling=sc;
        startpositionuserPCmenuX=8;
        startpositionuserPCmenuY=8*rozmiarznak;
        --new
      standartwysotatextmenu=rozmiarznak*0.70; -- для обычных менюшек (settings, pause , f10 , shipping center)
      wysotamenu=standartwysotatextmenu;
      standartwysotagraphicmenu=rozmiarznak*2
      standartsizeusermenu=rozmiarznak*3;
      mainmenusize=rozmiarznak*1.75+1; 

        MapRenderingCoordPostobjectX=gamescreenfixhorizontal*rozmiarznak+240+0*rozmiarznak; --по именно этой координате будет отрисовыватся карта
          visual_mapsize_horizontal=math.ceil ((maxwidth-MapRenderingCoordPostobjectX)/rozmiarznak)-1;
          visual_mapsize_vertical=math.ceil (maxheight/rozmiarznak)-3; -- добавлять высоту по вертикали тут (-5)
        rightspaceonscreen=gamescreenfixhorizontal*rozmiarznak+240+visual_mapsize_horizontal*rozmiarznak; -- первое свободное место права от поля игры.
        leftspaceonscreen=gamescreenfixhorizontal*rozmiarznak+240+0*rozmiarznak; 
        downspaceonscreen=visual_mapsize_vertical*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak; -- понадобится для обновленного модуля editor
       
        scalingmenu=1;  -- что с этим делать? как его вычислять?  смена размера идёт за счет rozmiarznak

        wysotastroki=rozmiarznak;  -- NEW BUILD 4300  NE PROWEREN 

        scalingandroidcursor=scaling+0.3;
        androidcursorrightposition=60+maxwidth-((100*scalingandroidcursor)*4);
        cursormaxwidth=androidcursorrightposition; cursormaxheight=-200+maxheight/2; 
        cursorsizeuserandroid=100*scalingandroidcursor; -- для элементов меню реакция на тачпаде.

        standartsizeusermenu_android_0_cc=standartwysotagraphicmenu+10;
        scalingleftgui=standartsizeusermenu_android_0_cc/80;
         
        font = love.graphics.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak-4) -- 
        fontBIG = love.graphics.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak+2) -- 
        fontVERYBIG = love.graphics.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak+9) -- 
        fontSMALL = love.graphics.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak-7) -- 
        fontVERYSMALL = love.graphics.newFont("YanoneKaffeesatz-Bold.ttf", rozmiarznak-16) -- 
        return 1;
end
if (ossys=="Android") then option=7 else option=0; end; 
if (drawonce==0) then setresolution (maxwidth,option);  end;

-- важно - эти же параметры должны быть в ТОЧНОСТИ такие же при смене разрешения. решено. knlk
mapsize_horizontal=250;
mapsize_vertical=201;
love.graphics.setDefaultFilter('nearest'); -- улучшает SCALING

--if (ossys=="Android")and(firstload==0) then firstload=1; setresolution (maxwidth,7);  end;
function changemusic (mtrack) 
	music:stop(mtrack);
		    mtrack=math.ceil(math.random(3))+1;
    	music:play(mtrack); 
end


IMAGES = {}; 
    firstscreen = love.graphics.newImage("Textures/loadingscreen.png");
    EN_FLAG = love.graphics.newImage("Textures/EN_US.png");
    RU_FLAG = love.graphics.newImage("Textures/RU_RU.png");
    MATE_LOGO = love.graphics.newImage("Textures/mate_logo.png");

    empty = love.graphics.newImage("Textures/1empty.png");
    ammoproj = love.graphics.newImage("Textures/ammoprojectile.png");
    dymokproj = love.graphics.newImage("Textures/dymok1.png");
    ramkaobjinv = love.graphics.newImage("Textures/ramka.png");
    androidguicursor = love.graphics.newImage("Textures/androidcursor.png");
    iceproj = love.graphics.newImage("Textures/iceammoprojectile.png");
    player = love.graphics.newImage("Textures/player.png");
    playertank = love.graphics.newImage("Textures/tank0.png");
    whitetank = love.graphics.newImage("Textures/tank2.png");
    tankleft = love.graphics.newImage("Textures/tank1.png");
    tankplayerleft = love.graphics.newImage("Textures/tank.png");
    gwozdleft = love.graphics.newImage("Textures/gwozd.png");
    humanleft = love.graphics.newImage("Textures/human.png");
    tankright=tankleft;
    playerprotect = love.graphics.newImage("Textures/playerp.png");
    editor0 = love.graphics.newImage("Textures/editor.png");
    express0 = love.graphics.newImage("Textures/express.png");
    destrplayer = love.graphics.newImage("Textures/destr4.png");
    destrplayer1 = love.graphics.newImage("Textures/destr1.png");
    destrplayer2 = love.graphics.newImage("Textures/destr2.png");
    destrplayer3 = love.graphics.newImage("Textures/destr3.png");
    destrplayer4 = love.graphics.newImage("Textures/destr4.png");
    menu_startgame = love.graphics.newImage("Textures/1-startgame.png");
    menu_loadgame = love.graphics.newImage("Textures/2-loadgame.png");
    menu_savegame = love.graphics.newImage("Textures/3-savegame.png");
    menu_authors = love.graphics.newImage("Textures/4-authors.png");
    menu_restart = love.graphics.newImage("Textures/5-restart.png");
    menu_settings = love.graphics.newImage("Textures/6-settings.png");
    menu_editor = love.graphics.newImage("Textures/7-editor.png");
    menu_exit = love.graphics.newImage("Textures/8-exit.png");
    menuicon = love.graphics.newImage("Textures/10-menu.png");
    settings_switch_on =  love.graphics.newImage("Textures/On.png");
    settings_switch_off =  love.graphics.newImage("Textures/Off.png");
    player2tank=0; 

--загрузка звуков игры.
   expresssnd = love.audio.newSource("Sounds/express.mp3"); 
    wystrelsnd = love.audio.newSource("Sounds/tankwystrel.mp3");
    patronysnd = love.audio.newSource("Sounds/patrony.mp3");
    levelnextsnd = love.audio.newSource("Sounds/0.mp3");
    ammotobadtargetsnd = love.audio.newSource("Sounds/ammotobadtarget.mp3");
    ammobrokeitemortargetsnd = love.audio.newSource("Sounds/ammobrokeitemortarget.mp3");
    iceeffectsnd = love.audio.newSource("Sounds/iceeffect.mp3");
        firesnd= love.audio.newSource("Sounds/fire.mp3");
    movableblocksnd =  love.audio.newSource("Sounds/blockmove.mp3");
    movableblockdestrsnd =  love.audio.newSource("Sounds/destrblock1.mp3");
  aptekasnd = love.audio.newSource("Sounds/apteczka.mp3");
      powerstaticon= love.audio.newSource("Sounds/powerstaticon.mp3");
   livessnd = love.audio.newSource("Sounds/lives.mp3");
   deadminesnd = love.audio.newSource("Sounds/deadmine.mp3");
   wallsnd = love.audio.newSource("Sounds/wall.mp3");
    icetakesnd = love.audio.newSource("Sounds/icetake.mp3");
    keysnd = love.audio.newSource("Sounds/key.mp3");
    bombsnd = love.audio.newSource("Sounds/bomb.mp3");
    deadsnd = love.audio.newSource("Sounds/dead.mp3");
    targsnd = love.audio.newSource("Sounds/targetdestrojed.mp3");
    tankzsnd = love.audio.newSource("Sounds/tankzdobyl.mp3");
    cannondestrsnd = love.audio.newSource("Sounds/cannondestr.mp3");
    protectsnd = love.audio.newSource("Sounds/protect.mp3");
    xsnd = love.audio.newSource("Sounds/x.mp3");
    strelkasnd = love.audio.newSource("Sounds/strelka.mp3");
    noammosnd = love.audio.newSource("Sounds/noammo.mp3");
    badsnd = love.audio.newSource("Sounds/bad.mp3");
    swapitem = love.audio.newSource("Sounds/swapitem.mp3");
    doorsnd = love.audio.newSource("Sounds/dooropened.mp3");
    switchpwsnd = love.audio.newSource("Sounds/switch.mp3");
    switchpwsnd2 = love.audio.newSource("Sounds/switchon.mp3");
    switchmsnd = love.audio.newSource("Sounds/alarm.mp3");
    telesnd = love.audio.newSource("Sounds/teleport.mp3");
    teleport2snd = love.audio.newSource("Sounds/teleport2.mp3");
    broken1 = love.audio.newSource("Sounds/broke1.mp3");
    broken2 = love.audio.newSource("Sounds/broke2.mp3");
    broken3 = love.audio.newSource("Sounds/broke3.mp3");
    broken4 = love.audio.newSource("Sounds/broke4.mp3");
    broken5 = love.audio.newSource("Sounds/broke5.mp3");
    brokendoorsnd = love.audio.newSource("Sounds/brokendoor.mp3");
    jedzeniesnd = love.audio.newSource("Sounds/jedzenie.mp3");
    mur = love.audio.newSource("Sounds/mur.mp3");
    tankdeadsnd = love.audio.newSource("Sounds/tankdead.mp3");
    tanknewsnd = love.audio.newSource("Sounds/tanknew.mp3");
    shippingsnd = love.audio.newSource("Sounds/snd3.mp3");
    snd1 = love.audio.newSource("Sounds/snd1.mp3");  -- appears , for tests
  szpricsnd = love.audio.newSource("Sounds/szpric.mp3");
  explodeicesnd = love.audio.newSource("Sounds/explodeice-silence.mp3");
  newarsenalsnd = love.audio.newSource("Sounds/newarsenal.mp3");
  uskoritelsnd = love.audio.newSource("Sounds/uskoritel.mp3");
  batterysnd = love.audio.newSource("Sounds/battery.mp3");
    computersnd = love.audio.newSource("Sounds/computer.mp3");
  stunhitsnd = love.audio.newSource("Sounds/stun_hit.mp3");


function love.load ()
  if(map_changed==0) then map_changed=1;   end; 
 if (firstload==0) then music:play(1); end  
slowdowntimerPL2=0;
    signaltraptimer=0;
    tankwithsignal=nil;
  totalammo=0; -- Загрузка уровня , нужно сбросить все параметры которые отстутвуют в этом уровне.
  ammoX={};
  
 if (ammokeyPL1=="loadexternallevel") then loadexternallevel=1 else loadexternallevel=0; end; 
-- тут задаются переменные которые должны обнулятся до каждой загрузки уровня.
damagetimerPL1=0;
feartimerPL1=0;
dasglukenfild=0;
ammokeyPL1="";
express=0;
repairroad=0;
editor=0;
fuel=0;
x2pla2am=0;
y2pla2am=0;
hptank=3000;--maximumvertical=0; -- add
converted=0;

drawonceZZOLDLEVEL=0;
timer=0;
xch=0;
bdata={};
   for line in love.filesystem.lines ("build.ini") do
      table.insert (bdata, line:split("!"))
    end

if (bdata) then build=bdata[1][1]; end  --загружем версию билда.

smsg1="RESKUE (remake) b"..build;-- сообщение пользователю по умолчанию. 
incontrolcentre=0;
p1p2=0;  --  при scanobject эти переменные могут задаватся поиском.
p1x2=0;
p4x2=0;
tempshutdownpowerstate=0;
antitankm=0;
removeteleportmarker=0;
a=0; --Для тестирования Windows игр на линуксе используйте "Linux для дома"
x=0;y=0;
pri=0;
zzx=0;

-- .$C classic Mission2000 level from Zx-spectrum (Hobeta format) --parsing data .$C
textures = {};
loadedfirst=0;
moving_timeout = 0;

man_x = 0;  -- целевое положение чувака
man_y = 0;  -- целевое положение чувака
man_speed = 210; -- скорость движения чувака в пикселях в секунду
man_is_moving = false; -- проигрывается ли анимация движения

man_step  = rozmiarznak;  -- шаг движения чувака (равен размеру клетки)  всегда и во всех случаях. Для всех переменных. 
scaling=rozmiarznak/40; -- пытается сам растянуть текстуры нв другое разрешение.
-- это коэффициент для работы с основными иконками и знакоместами 20х20
x=0;
y=0;
x2=0;
y2=0;

  default_man_speed= 250+280*scaling;
  default_ammo_speed= 530+280*scaling; 
  if (ossys=="Android") then default_ammo_speed = 270+270*scaling; end; 
  --smsg1 = "scaling factor="..scaling;
  man_speed= default_man_speed;

wysotastroki=rozmiarznak; -- шаг для строк отображения в меню   BUILD 4300
--wysotastroki=rozmiarznak-2; -- шаг для строк отображения в меню ы
--if (maxwidth>1900) then wysotastroki=rozmiarznak-4; end; -- шаг для строк отображения в меню ы
man_x2 = 0;  -- целевое положение пули
man_y2 = 0;  -- целевое положение пули
man_speed2 = default_ammo_speed; -- скорость движения пули в пикселях в секунду
man_is_moving2 = false; -- проигрывается ли анимация движения

man_xpla2 = 0;  -- целевое положение player2
man_ypla2 = 0;  -- целевое положение player2
man_speedpla2 = man_speed; -- скорость движения player2 в пикселях в секунду
man_is_movingpla2 = false; -- проигрывается ли анимация движения

man_x2pla2am = 0;  -- целевое положение player2 пуля
man_y2pla2am = 0;  -- целевое положение player2 пуля
man_speedpla2am = default_ammo_speed; -- скорость движения player2 пуля в пикселях в секунду
man_is_movingpla2am = false; -- проигрывается ли анимация движения

x3pla2am=0;
y3pla2am=0;
cannon_shoot3 = false; -- ne isp

smsglist = {} ;-- Список системных и игровых сообщений на разных языках.
    for line in love.filesystem.lines ("smsg.ini") do
      table.insert (smsglist, line:split("!"))
    end

function reschange (resolutionPC) 
   --resolutionPC=not_numeric (resolutionPC) ;
       timerz=0;
                  xsave=gamex(x); --  x=3 (168), но x у нас широта тут, 
                  ysave=1+gamey(y); --  а Y - 7 (336) , no это теперь высота (!) 
                  xpla2save=gamex(xpla2); -- x2=29 (312) координаты игрока 2 НЕ сохраняются совсем. добавить обработку старт позиции.
                  ypla2save=1+gamey(ypla2); -- y2=13 (960)
    if (totalenemies>0) then for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
          xpla3save=math.ceil (gamex(xt));
          ypla3save=math.ceil (1+gamey(yt));
         enemies[enemynum]:set(typt, xpla3save,ypla3save,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,0,speedtanks,protecttanks,0,0,0,0,0,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2); 
       end; end; 
                  
                  if (resolutionPC==0) then setresolution (901) ; end;
                  if (resolutionPC==1) then setresolution (1024) ; end;
                  if (resolutionPC==2) then setresolution (1280) ; end;
                  if (resolutionPC==3) then setresolution (1920) ; end;
                  if (resolutionPC==4) then setresolution (2360) ; end;
                  if (resolutionPC==5) then setresolution (3000) ; end;
                  if (resolutionPC==6) then setresolution (maxwidth,0) ; end; --RESKUE 
                  if (resolutionPC==7) then setresolution (maxwidth,7) ; end;
                  if (resolutionPC==8) then setresolution (maxwidth,7) ; end;
                  if (ossys=="Android") then setresolution (maxwidth,7); end
                      scaling=rozmiarznak/40;
                      man_step  = rozmiarznak;  -- шаг движения чувака (равен размеру клетки)  всегда и во всех случаях. Для всех переменных. 
                      default_man_speed = 210+240*scaling
                      man_speed= default_man_speed;
                      wysotastroki=rozmiarznak-2; -- что то не учтено

                      scalingmenu=standartwysotagraphicmenu/70;
                      --тут нужно перевычислить координаты X Y  для обоих игроков   
                      x,y=xgametorealpositionbezbyte (ysave,xsave);  --(xgame - первая координата реальная ВЫСОТА. потом ШИРОТА)
                      xpla2,ypla2=xgametorealpositionbezbyte (ypla2save,xpla2save);
          rightspaceonscreen=gamescreenfixhorizontal*rozmiarznak+240+33*rozmiarznak; -- первое свободное место права от поля игры.
      if (totalenemies>0) then for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
          xpla3,ypla3=xgametorealpositionbezbyte (yt,xt);
          man_xpla3=xpla3; 
          man_ypla3=ypla3;
         enemies[enemynum]:set(typt, xpla3,ypla3,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,0,speedtanks,protecttanks,0,0,0,0,0); 
      end; end; 
      -- реализован перенос танков с разных разрешений на другое
      map_changed=1;
    end

function gamex (x)
     x=(x-240)-gamescreenfixhorizontal*rozmiarznak+cameraleftpos_x_hor*rozmiarznak;
     x=(x/rozmiarznak)-1; --  это поправка для любого размера
 return x; 
end

function gamey (y)
    y=(y/rozmiarznak)-gamescreenfixvertical+camerauppos_y_vert;
 return y;
end;
--gamex i gamey делят реальные координаты для получения простых координат совместимых с уровнем.
--обычно используются для печати обьекта в поле игры через printatы
--они не подходят для перемещения человечка, там нужно умножение.

function coord (x,y)-- x это вертикаль 0-18 y - gorizontałs  1,1 lw ugol
   write=(x)*mapsize_horizontal+(y)-mapsize_horizontal+18; --write=x*32+y-14; м  visual_mapsize_horizontal
   return write;
end;

--функция считывает код обьекта из карты и возвращает его, работает по знакоместам.
--что и обеспечивает использование gamey и gamex в вызове. возможно они будут вынесены в нее
--screens (gamey (y),gamex (x)-1));  обычно вызывается так.
function screens (x,y)
   getscreens=xdata[coord (x,y)];
   if (getscreens==nil) then getscreens=0;end;  --убираем вонючий nil
    return getscreens;
end;
function screensq (x,y)
   getscreens=xdata_copy[coord (x,y)];
   if (getscreens==nil) then getscreens=0;end;  --убираем вонючий nil
    return getscreens;
end;



 function not_numeric (a)  --TOGGLE
  if (a>0) then a=0;timerz=0; end
  if (a<0) then a=0;timerz=0; end
  if (a==0)and(timerz>0) then a=1;timerz=0; end
    return a
end

--реально printat ничего не печататет, а лишь записывает в загруженный уровень новый обьект
--а рендерер уже занимается его выводом.   
--Таким образом при желании можно передавать координаты одной цифрой. 
--x и y - это координаты в спектрумовской системе координат, для удобства (по знакоместам)
--в реальный уровень на диске - ничего не пишется, только в массив xdata.
--типичное обращение для печати на экране (gamey(y)координата+plusy смещение ,gamex(x)координата+plusx,56 код обьекта);
--Данный массив может быть записан вместе с текущими параметрами уровня через редактор или сохранение игры.

function printat (x,y,content)
  -- if (string.len (content)>1) then  -- временно убрано т.к. вызывало ошибки в работе функции если будет глючить - удалить.
  content=string.char (content); -- end;
   xdata[coord (x,y)]=content;
   if(map_changed==0) then map_changed=1;   end; 
end;

function powerclean ()
  for b=1,mapsize_horizontal-1,1 do 
         for a=0,mapsize_vertical,1 do 
              c=string.byte(screens (b,a));
              if ((c==45)or(c==46)) then printat (b,a,56); end
           end
       end
     end

function xgametorealpositionbezbyte (X0,Y0)
    x0=240+(Y0)*rozmiarznak+rozmiarznak+gamescreenfixhorizontal*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; 
    y0=(X0)*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak-camerauppos_y_vert*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end



function xgametorealposition (X0,Y0)
    x0=240+string.byte (Y0)*rozmiarznak+rozmiarznak+gamescreenfixhorizontal*rozmiarznak-cameraleftpos_x_hor*rozmiarznak; 
    y0=string.byte (X0)*rozmiarznak-rozmiarznak+gamescreenfixvertical*rozmiarznak-camerauppos_y_vert*rozmiarznak; --учтено смешение 258 и -rozmiarznak
    return x0,y0;
end


function print_r (name,x,y)

local serpent = require("serpent")  
love.graphics.print (serpent.block(name),x,y);
end


     function  ext_objs_param (id,column)
       param=tonumber (objs[id+1][column]);
       return param ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end

     function  ext_objs_string (id,column)
       param=tostring (objs[id+1][column]);
       return param ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end


  function writeMAP(filename, t)  
      local file = love.filesystem.newFile( filename, 'w' )
      local file = io.open(filename, 'wb')
      data = {};
      for i, v in pairs(t) do
         data[i] = v;
      end
      data = table.concat(data)
      file:write(data)
      file:close (data)
      end


  function writeSAVE(filename, t)  
      local file = love.filesystem.newFile( filename, 'w' )
      local file = io.open(filename, 'wb')
      data = {};
      for i, v in pairs(t) do
         data[i] = v;
      end
      data = table.concat(data)
      file:write(data)
      file:close (data)
      end


function freadbin (data)
	str = {};
    for b in string.gmatch(data, ".") do
    --table.insert (str, (string.format("%03d", string.byte(b))));end;
        table.insert (str, b);end;
    return str;
end

--функция для разделения числа на 3 байта. 

 function split3bytes (byte)
  byte1= math.floor (math.abs(byte/65536))   -- 513/256=2
  byte2= math.floor (math.abs((byte-(byte1*65536))/256))   -- 513/256=2
  byte3= byte-byte2*256-byte1*65536;     --513-2*256 = 513-512=1   
   if (byte1>255) then byte1=255; end; 
   if (byte2>255) then byte2=255;end; 
   if (byte3>255) then byte3=255;end; 
   if (byte3<0) then byte3=0;end; 
  --error ("byte="..byte.."  "..byte3.." "..byte2.." "..byte1);
     return byte3,byte2,byte1; 
    end
--- 4555 = 203 17 0 
--- 67555 = 227 7 1 


function bytetest (zxs)
  if (zxs>255) then zxs=255; end;
  if (zxs<0) then zxs=0; end;
  return string.char (zxs);
end


function lprint (SMSG_CODE,cwidth,cheight)
   message,varname=smsg_string (SMSG_CODE);
   paramcontq="";
   if (varname~="") then paramcontq=_G[varname]; 
   	if (paramcontq~=nil) then message=message.." "..paramcontq ;end;
   	end;
   love.graphics.print(message,cwidth,cheight);
   return varname;
end

   function  smsg_string (SMSG_CODE)
    scanid=SMSG_CODE..language;
    message="";
        for l0=1, #smsglist-1,1 do
          if ((smsglist[l0][2])==scanid) then message=smsglist[l0][3];varname=smsglist[l0][4];  end ; 

        end
  
    if (message=="") then message="Invalid SMSG_CODE: "..SMSG_CODE.." Language ID="..language.." in smsg.ini"; end; 
           return message,varname ;
       -- похоже номер обьекта в таблице отличается на +1.
       -- работает разумеется только для чисел, а не для строк.
     end


-- единственное место где определяется всё что должно быть в сохранённой игре SAVEGAME parameters 
  function xdatapreparetowrite ()
     -- может быть не имеет смысл совсем читать максимум HP. 200 для любого уровня. 
     if (tanksdestroyed>250) then tanksdestroyed=250; end; 
      xdata[55634]=bytetest (tanksdestroyed);
      xdata[55625]=bytetest (gamey(y)+1);
      xdata[55626]=bytetest (gamex(x)); 
      xdata[55631]=bytetest (bombs);
      xdata[55632]=bytetest (ice);
      xdata[55633]=bytetest (lives);
      xdata[55635]=bytetest (ammo);
      xdata[55638]=bytetest (targetremains);
      xdata[55649]=bytetest (water); 
      xdata[55646]=bytetest (powerstate);
      xdata[55656]=bytetest (puszkistate);
      xdata[55637]=bytetest (keys);-- keys вместо бонуса за уровень
      xdata[55653]=bytetest (tank);
      xdata[55654]=bytetest (protect);
      xdata[55655]=bytetest (reservedaids);
      xdata[55610]=bytetest (enemytank);
     if (gamex(xpla2)<mapsize_vertical)and(gamey(ypla2)<mapsize_vertical) then xdata[55640]=bytetest (math.ceil(gamex(xpla2))); 
      xdata[55639]=bytetest (math.ceil(1+gamey(ypla2))); end
     if (hp<0) then hp=1 end;
     if (hp<255) then xdata[55629]=bytetest (hp) ;xdata[55652]=string.char (0); end  -- hp реальный вместо   не больше 255. 
     if (score<0) then 
      score1=0; score2=0;
      else
      score1,score2=split2bytes (score);
    end
    if (score>65535) then score=65535; end;-- пока есть только 2 байта для подсчёта очков.
     xdata[55650]=bytetest (score1);
     xdata[55651]=bytetest (score2);

      if (hp>255) then
     hp,hpb2=split2bytes (hp);
     xdata[55652]=bytetest (hpb2);
     xdata[55629]=bytetest (hp);
    end
      --SAVE GAME  дополнительные параметры - повторно использовать всё для F5
       xdata[55624]=bytetest (darkzone);
       xdata[55623]=bytetest (greenshitdelay);
       xdata[55622]=bytetest  (greenshithastetime);
       xdata[55621]=bytetest (seed);
       xdata[55620]=bytetest  (paralysatorrifle);
       xdata[55619]=bytetest (paralysatorammo);
       if (countinventory>0) then xdata[55618]=bytetest (inventoryitemtable[1]);end -- эти предметы могут быть ТОЛЬКО в сохранённой игре и не должны быть в коде уровней.
       if (countinventory>1) then xdata[55617]=bytetest (inventoryitemtable[2]);end
       if (countinventory>2) then xdata[55616]=bytetest (inventoryitemtable[3]);end 
       if (countinventory>3) then xdata[55615]=bytetest (inventoryitemtable[4]);end
       if (countinventory>4) then xdata[55647]=bytetest (inventoryitemtable[5]);end
       if (countinventory>5) then xdata[55648]=bytetest (inventoryitemtable[6]);end
       xdata[55614]=bytetest (minimumtanks);
       xdata[55613]=bytetest (inventorybelt);
       xdata[55636]=bytetest (allowedaidspersonal);
       xdata[55611]=bytetest (starttanks);
       xdata[55610]=bytetest (enemytank);
      -- попробовал сделать обычное сохранение , сохраняется всё что угодно кроме этих предметов
      -- но т.к. они пока не реализованы как  и инвентарь - поэтому это не особо важно.
      -- неиспользованные ключи 16хх  29 50,51,52,53,54,55
 
end
-- Режимы работы Scanobject
-- stroke >0 указывает проверить указанную строку от 0 до 27. строка является номером вертикали (в игре это Y)
-- stroke -1 указывает сканировать весь экран и вернуть первый найденный от начала поля обьект.
-- -2 - указывает вернуть общее число найденных обьектов
-- -3 - указывает вернуть первый случайный обьект
-- возвращает только один найденный обьект. Если указана строка - то ищет только в ней.
-- -4 - указывает проверить указанную колонку или горизонталь от 0 до 31. (в игре это Х)
-- -5 - указывает что надо вернуть обьект который найдется № по списку, например второй или третий. --  8,-4,22    28,-5,2 
function scanobject (code,stroke,coord2)  
  maximumscansize_vertical=mapsize_vertical;
  maximumscansize_horizontal=mapsize_horizontal;
  if (skan_x_max>0)and(1==0) then 
    maximumscansize_vertical=skan_y_max;
    maximumscansize_vertical=skan_x_max;
    --smsg2=skan_x_max;  
  end
     if (stroke>-3) then sthorizontal=0;enhorizontal=maximumscansize_horizontal; end
       if (stroke==-4) then stvertical=0; envertical=maximumscansize_vertical; sthorizontal=coord2; enhorizontal=coord2;  end; 
     if (stroke==-1) then stvertical=1; envertical=maximumscansize_vertical; end; 
     if (stroke>-1) then stvertical=stroke; envertical=stroke+1;  end;  -- по идее должно быть без +1 но где то что то сбивалось из за этого? 
     if (stroke==-2) then stvertical=1; envertical=maximumscansize_vertical;end; 
     if (stroke==-3) then stvertical=math.random(maximumscansize_vertical); 
     	--stvertical=0; 
     	envertical=maximumscansize_vertical;
     	 sthorizontal=math.random(maximumscansize_horizontal-1);
     	 --sthorizontal=0;  -- часто используется для телепорта для грязи и т.п. и часто не находится из за этого обьект. увеличит шансы. 
     	 enhorizontal=maximumscansize_horizontal; 
     	 end;
     	  wsego=0;
     if (stroke==-5) then stvertical=1; envertical=maximumscansize_vertical; sthorizontal=0;enhorizontal=maximumscansize_horizontal; end; 
        for a=stvertical,envertical,1 do  -- вертикаль     -- не ищет совсем если stroke
         for b=sthorizontal,enhorizontal,1 do    --горизонталь.   так ищет только по вертикали что не так  если stroke
              c=string.byte(screens (a,b));
              --if(stroke==-4) then printat (a,b,1); end; -- Показывает в какой вертикали (по Y) был поиск.
              if ((c==code)) then 
                wsego=wsego+1;
                if (wsego==coord2)and (stroke==-5) then return b,a;end;
                 if (stroke>-2)and(wsego>0)or(stroke==-4)and(wsego>0) then return b,a; end; -- при первом же обнаружении в не -2 режиме отправляет назад результат
                 if (stroke==-3) then return b,a; end;   
                 end
           end
       end
       if (wsego<1) then return -1,-1; end --это означает что обьекта нет. 
       if (stroke==-2) then return wsego,wsego; end;   
      if (stroke==-4) then return b,a; end; --предположительно должно работать для второй оси координат.
    end

    --  map_flag = 1 - чтение уровней пользователя
    --  map_flag = 2 - возвращать 1 вместо реального чтения файла.
function sourceread(realfilename,map_flag)
   if (ossys~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ossys=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ossys=="Windows")then  filename=p..'\\saves\\'..realfilename; end
    if (ossys=="Linux") then filename=p..'/saves/'..realfilename; end
    if (ossys=="Windows")and(map_flag==1)then  filename=p..'\\Levels\\'..realfilename; end
    if (ossys=="Linux")and(map_flag==1) then filename=p..'/Levels/'..realfilename; end
    if (ossys=="Mac") then  filename=p..'/saves/'..realfilename; end
    if (ossys=="Mac")and(map_flag==1) then filename=p..'/Levels/'..realfilename; end
 
   if (ossys~="Android") then 
                            if (filename==nil) then return -1 ; end; --Возврат -1 означает что где то серьезная ошибка и пришёл nil
                            --checkfileexists=file_isExists(filename);--i-f (checkfileexists==true) then 
                                    local file = io.open(filename, 'rb'); 
                                  if (file~=nil) then
                                   local str = file:read (55923) ; --if (map_flag~="2") then 
                                          file:close();
                                          return str ;
                                          -- else return 1; end;
                                  else return 0; 
                                end  
                         
                        end
   if (ossys=="Android") then exists = love.filesystem.exists( realfilename );--added 
    if (exists==true) then
             --if (map_flag~="2") then 

              str=love.filesystem.read(realfilename, love.filesystem.getSize(realfilename));
             return str 
             -- else return 1; end ; 
             else return 0; end
           end
          
  
end

   function closedoor (f_x,f_y,f_plusx)
  --if (plusy==0) then
      cd1= string.byte (screens (gamey(f_y)+1,gamex(f_x)+f_plusx));
      cd2= string.byte (screens (gamey(f_y)+2,gamex(f_x)+f_plusx));
      --smsg1="cd1="..cd1.." cd2="..cd2;
      if (cd1==56)and(cd2==56) then 
        printat (gamey(f_y),gamex(f_x)+f_plusx,"135");
        printat (gamey(f_y)+1,gamex(f_x)+f_plusx,"133");
        printat (gamey(f_y)+2,gamex(f_x)+f_plusx,"134");
        love.audio.play(swapitem);
         else love.audio.play(brokendoorsnd); 
        return;
      end; 
     
     end;


function realrandomscanobject (p1)

 			total=scanobject (p1,-2);
            randomc=math.ceil(math.random(total));
            checkx,checky=scanobject (p1,-5,randomc);
            --smsg1="ibane total="..total.." che"..checkx.." y"..checky.." object="..p1;
            return checkx,checky;
            end


function sourcewrite(data, realfilename)
   if (ossys~="Android") then p = love.filesystem.getSourceBaseDirectory() ; end;
   if (ossys=="Android") then p = love.filesystem.getSaveDirectory() ;end
    if (ossys=="Windows")then  filename=p..'\\saves\\'..realfilename; end
    if (ossys=="Linux") then filename=p..'/saves/'..realfilename; end
    if (ossys=="Mac") then  filename=p..'/saves/'..realfilename; end
       
   if (ossys~="Android") then 
        local file = io.open(filename, 'wb'); 
       if (file==nil) then  smsg1="ERROR: Save "..filename.." FAILED!. 1 Retrys. OS="..ossys.." (pathbase) = "..p.." real="..realfilename;  end;
      if (file~=nil) then  file:write(data)
      file:close()
      end         
     end
   if (ossys=="Android") then 
               file=love.filesystem.write(realfilename, data)
          if (file==nil) then  smsg1="Save "..realfilename.." FAILED!. 1 Retrys. OS="..ossys.." Used system love.fs.write"; end;
             filename=realfilename;
        end
		return filename
          --[[  --11.0 UNAVAILABLE UNTIL STARTDEV ANDROID FAST PACKAGER NOT UPDATED FROM 01.2017 (0.10.2 maximum love ver)        ]]--
  end
  -- не используй  IO на андроиде!  работать будет плохо.
  --getSaveDirectory= /storage/emulated/0/Android/data/love.to.android1108152137/files/save/data    save and data not exist/
  --recommended in internet - /data/user/0/org.love2d.android/files/save/"..realfilename
  --love.filesystem.getAppdataDirectory() =   ==> /data/.local/share/   filename=p..''..realfilename; end; 
  --love.filesystem.mkdir ("/data/user/0/RESKUE/files/save");  NE RABOTAJET   
  --if (ossys=="Wedroid") p="/storage/emulated/legacy/Android/data/love.to.android1109230507/files/"; -- RABOTAJET

if (firstload==2) then 
  levelname="_PARAM";
   psave=sourceread(levelname,1); 
    --smsg1=" Loading "..levelname.." failed in PARAMETERS LOAD. File not found.  Requires restart game. "; 
     programparameterdata=freadbin (psave); -- тут в массив загружается
  firstload=1;
   
  end

-- 
levelname="Levels/LEVEL"..levelnumber..".$C";
 --   
if (loadsavegame~="yes")and(loadexternallevel==0) then
--это единственный способ обьяснить LUA что это число а не byte  и не char и не строка.
    data, size = love.filesystem.read (levelname);
    if (size<1) then error ("Loading level failed:"..levelname.." in loadlevelstandart. File not found.  Requires restart game.  ");end
    leveldatacopy=freadbin (data); -- тут в массив загружается код уровня из архива .love самой игры
    xdata={};
end

if (loadexternallevel==1) then 
  levelname="LEVEL"..levelnumber..".$C";
   save=sourceread(levelname,1); 
     if (save==0) then error (" Loading "..levelname.." failed in loadexternallevel. File not found.  Requires restart game. "); end; 
     leveldatacopy=freadbin (save); -- тут в массив загружается
  loadexternallevel=0;
    xdata=leveldatacopy;
  end

if ( loadsavegame=="yes") then 
   -- тут в массив загружается код уровня из папки Saves в папке .love файла на устройстве.  LOAD GAME 
   -- часть комманд даётся в кнопке "2"
       --загрузка всех дополнительных данных из сохранёнки (save game)  
      if (saveslot==0) then levelname ='RESKUEsavex'; end ;   -- есть только 1 слот для сохранения пока что.
      if (saveslot==1) then levelname ='RESKUEsavexx'; end ;   -- есть только 1 слот для сохранения пока что.
      if (saveslot==-1) then levelname ='autosave'; end ;   -- есть только 1 слот для сохранения пока что.
       if (execute=="loadgame") then levelname=savegamename;selectedoptionmenu=0;menu=0;  end; 
       execute=""; 
      save=sourceread(levelname); -- sposob zagruzki czerez IO LUA  z z я надеюсь что  он годен не только для линукс но и для винды и андроид
      if (save==0) then error (" Loading "..levelname.." failed. File not found.  Requires restart game. "); end; 
        leveldatacopy=freadbin (save); -- тут в массив загружается
     xdata=leveldatacopy;

   -- Dasglukenfield должен заканчиватся при переходе на следующий уровень.   АГсл 
  end
       typelevel="RESKUE";
    if (leveldatacopy[2]=="E")and(leveldatacopy[3]=="V")and(loadsavegame~="yes") then 
        typelevel="ZX"; -- каждый файл в формате Hobeta  ZX надо предварительно конвертировать
        if (converted==0)and(loadsavegame~="yes") then   -- для будущей работы с ним 
          darkzone=0;
            --start converting  625-656 ->  rozmiarznak25 rozmiarznak56
              --начальное преобразование уровня и убирание с карты поля данных об уровне на новое место.
              oldlevelshift=0;newformatstroka=0
            for a=0,55924,1 do -- 1500 ->  1624
              if ((leveldatacopy[a])==nil) then leveldatacopy[a]=56;end --затычка от nil 
                if( a<55000) then xdata[a]=string.char (76);  end
                if( a>54999) then xdata[a]=string.char (0);  end
            end
            for a=0,55624,1 do -- 1500 ->  1624  Агсл  агсл fuck fuck

            
                   if(a<625)then -- не хватало одного кирпичика для отображения уровня.  624 пришлось поменять на 625
                      b=a+16;
                     cc=(math.ceil (b/32)-1)*(mapsize_horizontal-32);
                      
                            xdata[a+cc-218]=(leveldatacopy[a]); 
                            --oldlevelshift=oldlevelshift+1;
                            --if (oldlevelshift>31) then oldlevelshift=0;newformatstroka=newformatstroka+mapsize_horizontal-32; end
                            --else oldlevelshift=oldlevelshift+1; 
                          end
                   end;
            
            for a=625,625+32,1 do                  xdata[a+55000]=(leveldatacopy[a]);             end
            --чистка данных и запись пустого места , обьект 76 - стена
            for a=0,22,1 do printat (a,0,76);                end;
      -- рисуем те стены которые были в меньшем поле оригинальной игры чтобы не портилась логика уровня.
            
            converted=1;
          --end converting
           else drawonceZZOLDLEVEL=1; -- задаём параметры если получили уже конвертированный уровень
                    --во первых надо пропустить рисование обьектов по координатам из старой zx версии.
            end
    end;

         
    if (typelevel=="RESKUE") then
      dasglukenfild=0;
       converted=1; drawonceZZOLDLEVEL=1;
       xdata=leveldatacopy;  
       seed= (string.byte (xdata[55621]));
       darkzone= (string.byte (xdata[55624])); 
       greenshitdelay= (string.byte (xdata[55623]));
       greenshithastetime= (string.byte (xdata[55622]));
       solarenergy=0;
       solarpower=0;
       enemies={};
       totalenemies=0;
       wsego_tank_teleporterow=0;
      flagchecknewteleportersenemy=1;  -- add flag chech tanks to field ! 
      ty,tx=scanobject (119,-1);--check teleport cel dla RESKUE level.   wot takaja prostaja prowerka
      shippingzone_y,shippingzone_x=scanobject (29,-5,1);
    end
    -- тип ZX только для устаревших уровней, никогда не используется ни в сохранениях ни в новых уровнях
    if (typelevel=="ZX") then
         enemies={};
       totalenemies=0;
       wsego_tank_teleporterow=0;
      flagchecknewteleportersenemy=0;
      
      exp= (string.byte (xdata[55636]));  -- REUSED AS allowedaidspersonal похоже он вообще нигде не используется.   
      tt1= (string.byte (xdata[55637])); -- REUSED AS KEYS  bonus per level - нигде не используется.
       tx= (string.byte (xdata[55647]));
       ty= (string.byte (xdata[55648]));
       smsg2="ZX-level loaded, tx="..tx.." ty="..ty;
      if (tx>1)and (ty>1) then 
        originalteleport_x=tx; originalteleport_y=ty; 
        printat (tx,ty,"119");
        --printat (tx+1,ty+1,"86");
        end;
      p1= (string.byte (xdata[55641]));  --sost lazerow p1-p4 не сохранять. ненужно уже. 
      dr= (string.byte (xdata[55642]));
      p2= (string.byte (xdata[55643]));
      p3= (string.byte (xdata[55644]));
      p4= (string.byte (xdata[55645]));
      ey= (string.byte (xdata[55630]));--expressSX,SY start SX,EY-END 
      sy= (string.byte (xdata[55628]));
      sx= (string.byte (xdata[55627])); 
     end

    -- тут надо проверять уровень и к xdata добавлять 1000 чтобы он читался из другого места.
if (loadedfirst==0) then
-- 76, 69, 86 , если три первых байте не равны кодам букв LEV, значит уровень не ZX. DECat 24310,639 bytes?? --нкт 29 50,51,52,53,54,55
--загружать старые карты по схеме, но на новых просто исп. будут новые коды для. --DATA x2,y2,sx,sy,xt,ey,b0,i,l,p,u,exp,t,SE,zx,zy,p1,dr,p2,p3,p4,pw,tx,ty,wt,e,e,e,e,e,e,mv   HEADER
    startX=xdata[55625];startY=xdata[55626];   --1-- загрузка координат игрока
    zx=string.byte (xdata[55639]); zy=string.byte (xdata[55640]); --2   
    x,y=xgametorealposition (startX,startY);
    xpla2,ypla2=xgametorealpositionbezbyte (zx,zy);  -- по идее zx  nikak не мог получить строковое значение для ошибки в каком то уровне.
if (loadsavegame~="yes") then -- загружатся координаты по обьектам 17 и 18 (стартовые) должны ТОЛЬКО не в случае сохранённой игры.
checkx,checky=scanobject (18,-1);--check player 1 start position

if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
-- загрузка координат второго игрока
  checkxpla2,checkypla2=scanobject (17,-1);--check player 2 (enemytank) start position
if (checkxpla2>-1) then xpla2,ypla2=xgametorealpositionbezbyte  (1+checkypla2,checkxpla2); end;
if (otladka==1) then smsg1="no savegame. tp. x= "..x.." checkx="..checkx.." y="..y.." chy="..checky.." zx="..zx.." zy="..zy.." xpla2="..xpla2.." ypla2="..ypla2; end;
end
   sy,sx=scanobject (129,-1);
   ey,sx=scanobject (130,-1);sx=sx+1;

    if ((hardlevel==1) and (zx>0)and (zy>0)) then enemytank=1;end
       
      ammo= (string.byte (xdata[55635]));  
      hpmax=200 ; -- максимум жизни теперь всегда будет равен 200 + возможность прокачать его или временно увеличить. 
      if (poziom==1) then hpmax=hpmax/2; end; 
      ice= (string.byte (xdata[55632]));
      lives= (string.byte(xdata[55633]));
      bombs= (string.byte (xdata[55631])); 
      targetremains= (string.byte (xdata[55638]));
      hardlevel=(string.byte (xdata[55612]));
      
      keys=0 ; -- всегда похоже количество ключей во всех уровнях равно нулю
      water= (string.byte (xdata[55649]));-- wt это походу и есть стаканы. 
      powerstate= (string.byte (xdata[55646]));
      puszkistate= (string.byte (xdata[55656]));
      minimumtanks=(string.byte (xdata[55614]));
      starttanks= (string.byte (xdata[55611]));
tanksdestroyed=0; 
hp=hpmax;
loadedfirst=1;
if (loadsavegame=="yes") then   --LOAD GAME  
  -- теоретически 10 новых параметров должно загружатся чуть выше, т.к. все уровни в М2к формате.
  -- при загрузке уровня из сохранения используются дополнительные параметры. 
    keys=string.byte(xdata[55637]);-- keys вместо бонуса за уровень
    tank=string.byte(xdata[55653]);
    protect=string.byte(xdata[55654]);
    reservedaids=string.byte(xdata[55655]);
    hp=string.byte(xdata[55629])+(string.byte(xdata[55652])*256);  -- hp реальный вместо   не больше 255. 
    score=string.byte(xdata[55650])+(string.byte(xdata[55651])*256);
    tanksdestroyed=string.byte(xdata[55634]); --не загружать этот параметр. пока что.
    -- эти предметы могут быть ТОЛЬКО в сохранённой игре и не должны быть в коде уровней.
    paralysatorrifle= (string.byte (xdata[55620]));
    paralysatorammo=(string.byte (xdata[55619]));  
      allowedaidspersonal= (string.byte (xdata[55636]));  -- похоже он вообще нигде не используется.   
      inventorybelt=(string.byte (xdata[55613]));
      inventoryitem6= (string.byte (xdata[55648]));
      inventoryitem5= (string.byte (xdata[55647]));
         inventoryitem4= (string.byte (xdata[55618]));
           inventoryitem3= (string.byte (xdata[55617]));
             inventoryitem2= (string.byte (xdata[55616]));
               inventoryitem1= (string.byte (xdata[55615]));
                      inventoryitemtable={}; -- очищаем таблицу.
                            if (inventoryitem1>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem1); end; 
                            if (inventoryitem2>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem2); end; 
                            if (inventoryitem3>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem3); end; 
                            if (inventoryitem4>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem4); end; 
                            if (inventoryitem5>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem5); end; 
                            if (inventoryitem6>0)and(inventoryitem1~=76) then addinventoryitem (inventoryitem6); end; 
                   
                      countinventory=#inventoryitemtable;
               enemytank= (string.byte (xdata[55610]));
    -- номер уровня в сохранении присутствует, его можно использовать.
    --надо сохранять номер уровня в сохранении и загружать его тоже.
    loadsavegame=0;
    --в этом месте небольшая разница с сохранением игры исчезает. 
    --т.е. вся разница - это наличие инвентаря и счётчиков вот этих предметов
  end
end
 
 function create_atlas ()
ATLAS = love.graphics.newCanvas(8192, basetexturesize) -- это создание пустой картинки для наполнения ее картой спрайтов.
nonetexture="1empty.png"; 
IMAGES = {};
IMAGES[0]=objs[0+1][3];
for a0=1,170,1 do  -- максимум временно 170 (6800 пикс), для 1 байтового режима - 256. 
IMAGES[a0]=objs[a0][3]; -- загружаем список имён из таблицы обьектов. 
end

  love.graphics.setCanvas(ATLAS)
  for i = 0, #IMAGES - 1 do
    local img = love.graphics.newImage("Textures/"..IMAGES[i + 1]);
    if (img==nil) then love.graphics.newImage("Textures/"..nonetexture); end; 
    love.graphics.draw(img, i * basetexturesize)
    IMAGES[i + 1] = love.graphics.newQuad(i * basetexturesize, 0, basetexturesize, basetexturesize, 8192, basetexturesize)
  end
  love.graphics.setCanvas()
end

--загрузка игровых текстур не связанных с уровнем.

	 objs = {} ;-- тут загружается массив обьектов.
    for line in love.filesystem.lines ("objects.ini") do
      table.insert (objs, line:split("!"))
    end

	 if (not atlascreated) then create_atlas ();  atlascreated=1; end; 

     lootid = {} ;-- тут загружается массив обьектов.
    for line in love.filesystem.lines ("lootid.ini") do
      table.insert (lootid, line:split("!"))
    end
      menuplayitems={};
--      addmenuplayitems (60); --hp
  --    addmenuplayitems (58); --ammo
      addmenuplayitems (59); --dynamite
      addmenuplayitems (61); --ice
      addmenuplayitems (60); --medkit
      addmenuplayitems (62); -- live X
      addmenuplayitems (24); -- cel 
     
      --[[
       pagesPLGUI={};
      line="128!NAME!HEADER!0!0";           table.insert (pagesSC,line:split("!") );
      line="128!Health!hp!0!0";           table.insert (pagesSC,line:split("!") );
      ]]--
  -- аутыматычнае создание массива списков продаваемых предметов по objects.ini
    itemshippinglist={};
          shippingcenteritems={};
          pagesSC={};
          counttablepagesSC=0;
           --HEADER SAMPLE  line="ID!ITEM_id!name_item!cost!title_shippingcenteritems";           table.insert (pagesSC,line:split("!") );
           line="128!0!"..smsg_string ("SH_EXIT").."!0!0";           table.insert (pagesSC,line:split("!") );
           line="0!0!"..smsg_string ("SH_ORDER").."!0!0";           table.insert (pagesSC,line:split("!") );
          etatimer=0;
            for sa=0,160,1 do 
              aa=tonumber (ext_objs_param (sa,16)); -- 16 - COST , 15- UNPACK !!!!!
             if (aa)and(aa>0) then 
                addshippingcenteritems(sa);
                counttablepagesSC=counttablepagesSC+1;
                nameobject=ext_objs_string (sa,2); if (nameobject==nil) then nameobject="0"; end;
                line=counttablepagesSC.."!"..sa.."!"..nameobject.."!"..aa.."!";
                table.insert (pagesSC,line:split("!") );
                end
            end
            -- end of shipping list generating  (using objects.ini)


  -- creating savegame list 
          pagesSAVES={};
          counttablepagesSAVES=0;
           --HEADER SAMPLE  line="ID!ITEM_id!name_item!cost!title_shippingcenteritems";           table.insert (pagesSC,line:split("!") );
           line="0!Exit to main menu [Esc]!0!0";    table.insert (pagesSAVES,line:split("!") );
           line="1!Exit to main menu [Esc]!0!0";    table.insert (pagesSAVES,line:split("!") );
           line="2!Quicksave [f5]!0!0";           table.insert (pagesSAVES,line:split("!") );

            for sa=3,13,1 do 
              if (1>0) then 
               savename="Savegame"..sa-2;
                counttablepagesSAVES=counttablepagesSAVES+1;
                 savetest=sourceread(savename);
            if (savetest~=0) then savetest=1; end; --  фиксим баг 5963 с UTF-8  , значит sourceread ПРОИГНОРИРОВАЛ map_flag 2 и прислал файл вместо 1
               -- nameobject=ext_objs_string (sa,2); if (nameobject==nil) then nameobject="0"; end; -- and(savetest~="1")
                line=sa.."!"..savename.."!"..counttablepagesSAVES.."!"..savetest.."!";
                --if (sa==3)and(otladka==1) then smsg1="LINE 630:"..line;  end; 
                --if (sa==4)and(otladka==1) then smsg2="LINE 630:"..line;  end; 
                table.insert (pagesSAVES,line:split("!") );
                end
            end
              savename="quicksave-autoexit";
              savetest=sourceread(savename);
            if (savetest~=0) then savetest=1; end; 
             line="14!"..savename.."!14!"..savetest;           table.insert (pagesSAVES,line:split("!") );
             savename="autosave-2";
              savetest=sourceread(savename);
            if (savetest~=0) then savetest=1; end; 
             line="15!"..savename.."!15!"..savetest;           table.insert (pagesSAVES,line:split("!") );
      --end of creating savegame list

    --тут создается двухмерный массив из objects.ini    -- аналогa readfullcsv
    --важно -  ид обьекта надо либо +1  делать либо использовать специальную новую функцию  ext_objs_param
    --hdr=objs[1][1];  --двухмерный масив задан правильно и работает
    --love.graphics.print("Obj1-1"..hdr,32,32);     --cs.print("Objsubstr 2,2"..string.sub (hdr,2,2),48,48);--мда попроще нельзя б xxx=objs[1][1]
    pages0 = {} ;-- Меню игрока андроид - 
    for line in love.filesystem.lines ("player.ini") do
      table.insert (pages0, line:split("!"))
    end
    --pages0!ax-standartsizeusermenu!ay-standartwysotagraphicmenu 

    pagesсс = {} ;-- Меню игрока андроид - контрольный центр --  - po obrazcu player.ini (pages0)
    for line in love.filesystem.lines ("controlcentre.ini") do
      table.insert (pagesсс, line:split("!"))
    end
    pagesea = {} ;-- Меню игрока андроид - editor - po obrazcu player.ini (pages0)
    for line in love.filesystem.lines ("editor_android.ini") do
      table.insert (pagesea, line:split("!"))
    end


    pages = {} ;-- Главное меню (0) тут загружается массив обьектов. 
    for line in love.filesystem.lines ("pages.ini") do
      table.insert (pages, line:split("!"))
    end
    pages2 = {} ;-- Меню настроек и параметров (1)
    for line in love.filesystem.lines ("pages_settings.ini") do
      table.insert (pages2, line:split("!"))
    end
    pages3 = {} ;-- меню авторы (2)
    for line in love.filesystem.lines ("authors.ini") do
      table.insert (pages3, line:split("!"))
    end
    pages4 = {} ;-- меню редактора (3)
    for line in love.filesystem.lines ("editor_settings.ini") do
      table.insert (pages4, line:split("!"))
    end
    pages5 = {} ;-- меню игрока (пауза) (4)
    for line in love.filesystem.lines ("actions.ini") do
      table.insert (pages5, line:split("!"))
    end

     
--zzx2,xpla2,ypla2,hptank,allowmovepla2,man_is_movingpla2,plusypla2,freezetimerPL2,man_speedpla2,speedtimerpla2
  class_enemy = {};
  --инициализируем поля класса
  function class_enemy:new(typt,x3,y3,hp,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2)
      local object = {};  -- как я и думал это массив внутри массива.
      love.audio.play(tanknewsnd) ;
      --,x2,y2,hp,rotate,movekey,zzx2,allowmovepla2,x2pla2am,y2pla2am,zzx2ammo,allowshotpla2=0;
      object.typt = typt or "tank"; -- задача умолчания если не задан параметр
      object.x3 = x3 or 0;  -- real coord of tank
      object.y3 = y3 or 0;  -- real coord of tank
      object.hp = hp or 400;  -- hp  of tank
      object.rotate = rotate or "left"; -- now rotate of tank - возможно получится использовать для более частого движения в уже выбранную сторону.
      object.man_xpla3 = man_xpla3 or 0; -- temp coord of tank
      object.man_ypla3 = man_ypla3 or 0; -- temp coord of tank
      object.tanks_mov = tanks_mov or 0; -- is_moving датчик движения
      object.freezetanks = freezetanks or 0; 
      object.speedtanks = speedtanks or 0; 
      object.protecttanks = protecttanks or 0; 
      object.x_tanks = x_tanks or 0; --x2pla2am -- real coord of tank shoot
      object.y_tanks = y_tanks or 0; --y2pla2am -- real coord of tank shoot
      object.m_x_tanks = m_x_tanks or 0;  --man_x2pla2am temp coord
      object.m_y_tanks = m_y_tanks or 0;  --man_y2pla2am temp coord
      object.tanks_am = tanks_am or 0;  --tanks_am  indicator ammo
      object.rotate_t = rotate_t or 0;  --
      object.feartanks = feartanks or 0;  --
        object.aitype = aitype or 0;  --aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2)
        object.slowdowntimertanks = slowdowntimertanks or 0;  --
        object.damagetimertanks = damagetimertanks or 0;  --   
        object.pa2 = pa2 or 0;  --
        object.pa3 = pa3 or 0;  --
        object.pa4 = pa4 or 0;  --
        object.pa5 = pa5 or 0;  --
        object.pa6 = pa6 or 0;  --
        object.pa7 = pa7 or 0;  --
        object.pa8 = pa8 or 0;  --
        object.pa9 = pa9 or 0;  --
        object.pax0 = pax0 or 0;  --
        object.pax1 = pax1 or 0;  --
        object.pax2 = pax2 or 0;  --
      object.res = res or 0; 
      
      setmetatable(object,self) --нужно для работы класса
      self.__index = self ;
      return object; -- возвращаем объект!
  end

  
  class_ammo = {};
  --инициализируем поля класса
  function class_ammo:new(typta,start_x,start_y,x_ammo,y_ammo,m_x_tanks,m_y_tanks,ammo_moving,rotate_tt,renderammoshot_ammos)
      local object = {};  -- как я и думал это массив внутри массива.
      object.typta = typta or "bullet"; -- задача умолчания если не задан параметр
      object.start_x = start_x or 0; --x2pla2am -- real coord of tank shoot
      object.start_y = start_y or 0; --y2pla2am -- real coord of tank shoot
      object.x_ammo = x_ammo or 0; --x2pla2am -- real coord of tank shoot
      object.y_ammo = y_ammo or 0; --y2pla2am -- real coord of tank shoot
      object.m_x_tanks = m_x_tanks or 0;  --man_x2pla2am temp coord
      object.m_y_tanks = m_y_tanks or 0;  --man_y2pla2am temp coord
      object.ammo_moving = ammo_moving or 0;  --tanks_am  indicator ammo
      object.rotate_tt = rotate_tt or 0;  --
      object.renderammoshot_ammos = renderammoshot_ammos or 0;  --
      object.rikoszets = rikoszets or 0 ; 
      object.res = res or 0; 
      
      setmetatable(object,self) --нужно для работы класса
      self.__index = self ;
      return object; -- возвращаем объект!
  end

  --функция изменения
  function class_enemy:set(typt,x3,y3,hp,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2)
	local typt = typt or self.typt;
    local hp = hp or self.hp;
    local rotate = rotate or self.rotate;
    local man_xpla3 = man_xpla3 or self.man_xpla3;
    local man_ypla3 = man_ypla3 or self.man_ypla3;
    local tanks_mov = tanks_mov or self.tanks_mov;
    local freezetanks = freezetanks or self.freezetanks;
    local speedtanks = speedtanks or self.speedtanks;
    local protecttanks = protecttanks or self.protecttanks;
    local x_tanks = x_tanks or self.x_tanks;
    local y_tanks = y_tanks or self.y_tanks;
    local m_x_tanks = m_x_tanks or self.m_x_tanks;
    local m_y_tanks = m_y_tanks or self.m_y_tanks;
    local tanks_am = tanks_am or self.tanks_am;
        local rotate_t = rotate_t or self.rotate_t;
        local feartanks = feartanks or self.feartanks;
          local aitype = aitype or self.aitype;
          local slowdowntimertanks = slowdowntimertanks or self.slowdowntimertanks;
          local damagetimertanks = damagetimertanks or self.damagetimertanks;
          local pa2 = pa2 or self.pa2;
          local pa3 = pa3 or self.pa3;
          local pa4 = pa4 or self.pa4;
          local pa5 = pa5 or self.pa5;
          local pa6 = pa6 or self.pa6;
          local pa7 = pa7 or self.pa7;
          local pa8 = pa8 or self.pa8;
          local pa9 = pa9 or self.pa9;
          local pax0 = pax0 or self.pax0;
          local pax1 = pax1 or self.pax1;
          local pax2 = pax2 or self.pax2;
          
    self.typt = typt;
    self.x3 = x3;
    self.y3 = y3;
    self.hp = hp;
    self.rotate = rotate;
    self.man_xpla3 = man_xpla3;
    self.man_ypla3 = man_ypla3;
    self.tanks_mov = tanks_mov;
    self.freezetanks = freezetanks;
    self.speedtanks = speedtanks;
    self.protecttanks = protecttanks;
    self.x_tanks = x_tanks;
    self.y_tanks = y_tanks;
    self.m_x_tanks = m_x_tanks;
    self.m_y_tanks = m_y_tanks;
    self.tanks_am = tanks_am;
    self.rotate_t = rotate_t;
    self.feartanks = feartanks;
        self.aitype = aitype;
    self.slowdowntimertanks = slowdowntimertanks;
    self.damagetimertanks = damagetimertanks;
    self.pa2 = pa2;
    self.pa3 = pa3;
    self.pa4 = pa4;
    self.pa5 = pa5;
    self.pa6 = pa6;
    self.pa7 = pa7;
    self.pa8 = pa8;
    self.pa9 = pa9;
    self.pax0 = pax0;
    self.pax1 = pax1;
    self.pax2 = pax2;
  end

--функция изменения
  function class_ammo:set(typta,start_x,start_y,x_ammo,y_ammo,m_x_tanks,m_y_tanks,ammo_moving,rotate_tt,renderammoshot_ammos)
    local typta = typta or self.typta;
    local start_x = start_x or self.start_x;
    local start_y = start_y or self.start_y;
    local x_ammo = x_ammo or self.x_ammo;
    local y_ammo = y_ammo or self.y_ammo;
    local m_x_tanks = m_x_tanks or self.m_x_tanks;
    local m_y_tanks = m_y_tanks or self.m_y_tanks;
    local ammo_moving = ammo_moving or self.ammo_moving;
        local rotate_tt = rotate_tt or self.rotate_tt;
        local renderammoshot_ammos = renderammoshot_ammos or self.renderammoshot_ammos;
        local rikoszets = rikoszets or self.rikoszets;

        

    self.typta = typta;
    self.start_x = start_x;
    self.start_y = start_y;
    self.x_ammo = x_ammo;
    self.y_ammo = y_ammo;
    self.m_x_tanks = m_x_tanks;
    self.m_y_tanks = m_y_tanks;
    self.ammo_moving = ammo_moving;
    self.rotate_tt = rotate_tt;
    self.renderammoshot_ammos = renderammoshot_ammos;
    self.rikoszets = rikoszets;
  end


  --функция получения результата
  function class_enemy:get()
    return self.typt, self.x3, self.y3, self.hp, self.rotate, self.man_xpla3, self.man_ypla3, self.tanks_mov , self.freezetanks , self.speedtanks, self.protecttanks, self.x_tanks, self.y_tanks, self.m_x_tanks, self.m_y_tanks, self.tanks_am,self.rotate_t,self.feartanks,self.aitype,self.slowdowntimertanks,self.damagetimertanks,self.pa2,self.pa3,self.pa4,self.pa5,self.pa6,self.pa7,self.pa8,self.pa9,self.pax0,self.pax1,self.pax2;
  end

function class_ammo:get()
    return self.typta, self.start_x, self.start_y,  self.x_ammo, self.y_ammo, self.m_x_tanks, self.m_y_tanks, self.ammo_moving,self.rotate_tt,self.renderammoshot_ammos,self.rikoszets;
  end


function class_enemy:remove(ID)
      love.audio.play(tankdeadsnd) ;
   if self.list[ID] then
     self.list[ID] = nil
     -- если удалили - вернуть true
     return true 
   end
end


function class_ammo:remove(ID)
      
   if self.list[ID] then
     self.list[ID] = nil
     -- если удалили - вернуть true
     return true 
   end
end

    if (renderer==0) then 
    render2d (1); end;
 
end

--inventoryitemtable



function addinventoryitem (itemcode)
  countinventory=#inventoryitemtable;
   love.audio.play(swapitem);
  if (countinventory<maximuminventorysize) then table.insert (inventoryitemtable,countinventory+1,itemcode);
   --smsg1="table.insert (inventoryitemtable,"..countinventory..","..itemcode..");";   --for a=1,countinventory,1 do smsg2=smsg2.." inv["..a.."]="..inventoryitemtable[a]..""; end
   
   else smsg1="Inventory Full"; ammoKEYPL1=""; return -1; end
end 

function checkinventoryitem (itemcode)
  countinventory=#inventoryitemtable;
   for ia=1,countinventory,1 do 
   	nowitem=inventoryitemtable[ia];
    if(nowitem==itemcode) then return true; end
end
   return false
 
end 

function removeinventoryitem (id)
  love.audio.play(swapitem);
   if (countinventory>0) then
  a=table.remove (inventoryitemtable,id);
  return a;
  end 
  return 0;
end

function sortinventoryitem ()
  table.sort (inventoryitemtable);
end


function addshippingcenteritems (itemcode)
  countinventory_s=#shippingcenteritems;
   --smsg1="adding..."..countinventory_s..",itemcode="..itemcode;
     if (countinventory_s<25) then table.insert (shippingcenteritems,countinventory_s+1,itemcode);
    else smsg1="shippingcenteritems Full"..countinventory_s; return -1; end
end 

function removeshippingcenteritems (id)
     if (countinventory_s>0) then
  a=table.remove (shippingcenteritems,id);
  return a;
  end 
  return 0;
end



function addmenuplayitems (itemcode)
  countinventory_mp=#menuplayitems;
   --smsg1="adding..."..countinventory_s..",itemcode="..itemcode;
     if (countinventory_mp<15) then table.insert (menuplayitems,countinventory_mp+1,itemcode);
    else smsg1="shippingcenteritems Full"..countinventory_mp; return -1; end
end 

function removemenuplayitems (id)
     if (countinventory_mp>0) then
  a=table.remove (menuplayitems,id);
  return a;
  end 
  return 0;
end


function additemshippinglist (itemcode)
  countinventory_i=#itemshippinglist;
     if (countinventory_i<maximumshipcapacity) then table.insert (itemshippinglist,countinventory_i+1,itemcode);
    else smsg1="itemshippinglist Full"..countinventory_i;  return -1; end
end 

function removeitemshippinglist (id)
     if (countinventory_i>0) then
  a=table.remove (itemshippinglist,id);
  return a;
  end 
  return 0;
end

-- если координаты второго игрока совпадают с координаторй пули первого - отнимаются HP у Р2
-- если снова возникнет баг перестрелкой танков то надо просто учесть man_step  для расчётов. хrozmiarznak) 

--move_the_man
--x,y - начальные координаты
--man_x,man_y - конечная координата
--man_is_moving - идет ли перемещение
--man_speed - скорость анимации

 -- Анимирует движение, если оно имеется. Для чувака 1 i 2 universal function 
function move_the_man(dt,x,y, man_x, man_y ,man_is_moving,man_speed)
     -- local x,y,man_x,man_y,man_is_moving,man_speed ;  надеюсь все эти переменные достаточно локализованы внутри функции.
     if (man_x < 100) and (man_y) < 50 then  -- детектируем ложное движение  с отправкой по нулевой координате.
            man_is_moving = false;
            man_x=x; man_y=y; 
        end;
     if man_is_moving then
        -- шаг анимации
        local dd = math.floor(dt*man_speed);

        -- по X
        if dd >= math.abs(man_x - x)  then 
            -- если шаг анимации слишком большой, то кидаем сразу в конечную точку
            x = man_x;
        else
            -- иначе двигаем на вычисленный шаг в сторону конечной точки (man_x, man_y)
            x = x + dd*(man_x - x)/math.abs(man_x - x);
        end

        if (classic_zx_spectrum_sprite_move==1) then x=man_x; y=man_y; end;

        -- по Y
        if dd >= math.abs(man_y - y)  then 
            y = man_y;
        else
            y = y + dd*(man_y - y)/math.abs(man_y - y);
        end

        -- если достигли конечной точки, заканчиваем движение (анимацию)
        if man_x == x and man_y == y then 
            man_is_moving = false;
        end;
         
        

    end
    return x,y,man_x,man_y,man_is_moving,man_speed      
 end

-- Анимирует движение, если оно имеется. для выстрела чувака 1 и 2ы
function move_the_man2(dt,x2,y2, man_x2, man_y2 ,man_is_moving2,man_speed2)
    -- local x2,y2,man_x2,man_y2,man_is_moving2,man_speed2 ;
    x2,y2,man_x2,man_y2,man_is_moving2,man_speed2=move_the_man(dt,x2,y2, man_x2, man_y2 ,man_is_moving2,man_speed2)

    return x2,y2,man_x2,man_y2,man_is_moving2,man_speed2   
 end




-- Устанавливает новую цель движения чувака относительно текущего местоположения
function do_a_step(dt, dx, dy,x,y)
   if (x==nil) then x=0; end;  
   if (y==nil) then y=0; end; 
   -- man_is_moving = true; -- начинаем движение чувака
    -- новая цель движения
    --man_x = x + dx; 
    --man_y = y + dy; 
    return true,x + dx,y + dy; 
end


function love.update(dt)
  music:update(); 
	--if (totalammo>0) then class_ammo:update (dt);  end; 
    coordXbezmove=gamex(x);
    coordYbezmove=gamey(y); 


-- Если координаты игроков совпадают у P1 будет отниматся HP
if ((xpla2==x)and(ypla2==y)and(enemytank==1)and(hp>0)and(editor==0)) then
    if (protect<1) then hp=hp-5; end;
      if (tank<1) then hp=hp-10;  end; 
      playergetdamage (); 
   love.audio.play(jedzeniesnd);
end

 --Прямой вред от вражеских танков вашему игроку (п1)
 if ((totalenemies>0)and(editor==0)) then --and(wsego_tank_teleporterow>0
   for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
 
  if ((xt==x)and(yt==y)and(hpt>0)and(hp>0))and(typt~="scientist") then
    if (protect<1) then hp=hp-5;end; 
    if (tank<1) then hp=hp-5; end; 
        if(rotate==0) then hardened_ammo_get="right"; end; --right movePL1
    if(rotate==90) then hardened_ammo_get="down"; end; --down
     if(rotate==180) then hardened_ammo_get="left"; end; --left
     if(rotate==270) then hardened_ammo_get="up";  end; --up
     playergetdamage (); 
   love.audio.play(jedzeniesnd);
end

    end; end; 
if (hptank<1)and(enemytank==1) then score=score+1000;
	hptank=0;speedtimerpla2=0; protecttank=0; freezetimerPL2=0;   enemytank=0; 
   man_xpla2, man_ypla2 ,man_is_movingpla2,man_speedpla2=0,0,0,0;
   explodebomb (gamey (ypla2),gamex (xpla2),""); 
   hptank=0; 
   tanksdestroyed=tanksdestroyed+1;
   -- printat (gamey (ypla2),gamex (xpla2), selectedobject);
  -- просто удаляем второй танк если он умер. аним НЕ СДЕЛАНО.
end

-- прямой вред от самостоятельных патрон, рикошета и осколков  пока только для игрока P1 , если это влияет на P2 или другие танки - это ошибка!
   if ((totalammo>0)) then --ammofuck
   for ammonum=1,totalammo,1 do 
     typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets=ammoX[ammonum]:get();
     if (typta=="")  then 
     	ammo_moving=false; rotate_t=-1; renderammoshot_ammos=false;end  
    --попытка заодно проверить на вред танков 
   if ((totalenemies+enemytank)>0)and(editor==0)and(typta~="") then 
   	  --smsg1="tanksgetdamage ("..m_x_ammo..","..m_y_ammo..",damage); "; --potrafil=tanksgetdamage (math.ceil(gamex(x_ammo)),math.ceil(gamey(y_ammo+rozmiarznak)),"damage");   
        	potrafil=tankareexploded (math.ceil(gamey(m_y_ammo+rozmiarznak)),math.ceil(gamex(m_x_ammo)),"damage");   
    	if (potrafil==true) then 
    		    typta=""; ammo_moving=false; renderammoshot_ammos=false ; 
    		    playsoundifvisible (ammotobadtargetsnd,x_ammo,y_ammo);
    		end
      end; -- вот они откуда повреждения другим танкам!

    if (isnear (x_ammo,x))and(isnear (y_ammo,y))and(ammo_moving)and(hp>0) then 
    
    if (editor==0)and(typta~="") then
    if (rikoszets>0) then hp=hp-500; end; 
    if (protect<1) then hp=hp-5;end; 
    if (tank<1) then hp=hp-5; end; 
    if (hardlevel>0) then hp=hp-5; end; 
    if (poziom>0) then hp=hp-5; end; 
    typta=""; ammo_moving=false; renderammoshot_ammos=false ; 
    playsoundifvisible (ammotobadtargetsnd,x_ammo,y_ammo);
     playergetdamage (); 
 		end
 		if (editor==1) then 
 			if (love.keyboard.isDown("m")) then  -- добавить ошибку в координатах для gluckcheckX 
              if (movePL1=="up") then  y_ammo=y_ammo-rozmiarznak;   end
              if (movePL1=="down") then  y_ammo=y_ammo+rozmiarznak; end
              if (movePL1=="left") then  x_ammo=x_ammo-rozmiarznak; end
              if (movePL1=="right") then  x_ammo=x_ammo+rozmiarznak; end
                
            end
              if ((love.keyboard.isDown("d"))) then  
              typta="";
              ammo_moving=false; 
              renderammoshot_ammos=false ; 

            end

 	if ((love.keyboard.isDown("p"))) then 
           	huded=5;
                   selectedammoid=ammonum;
                   
            end
  	end
   

end
 
 	ammoX[ammonum]:set(typta, start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets);
    end; end; 



    function isnear (par1,par2)
      if (par1==nil) then return false; end;
        mn=man_step/2;-- было /2 увеличил для чувствительности танков.
        for a=par1-mn,par1+mn,1 do
            if a==par2 then return true end
            end
    return false;
    end

        function isnear4 (par1,par2)
      if (par1==nil) then return false; end;
        mn=man_step;-- было /2 увеличил для чувствительности танков.
        for a=par1-mn,par1+mn,1 do
            if a==par2 then return true end
            end
    return false;
    end


function isnearED (par1,par2)
      if (par1==nil) then return false; end;
        mn=man_step*2;
        for a=par1-mn,par1+mn,1 do
            if a==par2 then return true end
            end
    return false;
    end

    function isnear2 (par1,par2)
        mn=1;
        for a=par1-mn,par1+mn,1 do
            if a==par2 then return true end
            end
    return false;
    end


function setstandartdamage_P1 ()
        standartdamage=50;  
        if (tank==1) then standartdamage=standartdamage+50; end;  
        if (poziom==1) then standartdamage=standartdamage+25; end; 
        if (hardlevel~=1) then standartdamage=standartdamage+25; end; 
        if (speedtimer>0) then standartdamage=standartdamage+25; end; 
       -- if (prifle>0) then standartdamage=standartdamage+5; end; 
        return standartdamage;
      end


--сейчас всё ок, отнимается жизнь всегда. 100% работает.
-- Если игрок обстреливает танк противника (белый танк) P2
setstandartdamage_P1 () ; 
if ((isnear (xpla2,x2))and(isnear (ypla2,y2))and(man_is_moving2)and(enemytank==1)) then
      if (protecttank>0) then getstandartdamage=standartdamage/5; end;
    if (ammoKEYPL1=="ammo") then hptank=hptank-getstandartdamage;
                  
                  end

    if (ammoKEYPL1=="ice") then freezetimerPL2=freezetimerPL2+5; 
       love.audio.play(iceeffectsnd);
       end;

    smsg1="tank HP="..hptank..""; 
    allowshot=0; man_is_moving2=false;
   love.audio.play(patronysnd) ;
end


--если игрок обстреливает дополнительные танки противника. 

 if (totalenemies>0) then 
   for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
       if (protecttanks>0) then standartdamage=12  else  standartdamage=50;  end
   if (hpt<1)and(typt~="tankdead") then score=score+50; typt="tankdead";  -- hpt=0 ubrano build 4000
        if (hpt~=-1234) then  tanksdestroyed=tanksdestroyed+1;love.audio.play (tankdeadsnd); end  --модуля где производится убийство танков почему то 2 (!!)  2- puszki
          end;

          if (scientists>0)then if (typt=="scientist") then 
        scientist_x=xt; scientist_y=yt;
        killscientists=scientistsgetdamage (scientist_x,scientist_y); -- аналог tanksgetdamage,но он не ведет запись в enemy:set
        smsg4="killscientists"..killscientists.."=scientistsgetdamage ("..scientist_x..","..scientist_y..");";
        if (killscientists==1) then killscientists=0; hpt=0;typt="tankdead"; smsg1="Scientist killed by tanks"; end; 
        end ; end 

 if ((isnear (xt,x2))and(isnear (yt,y2))and(tanks_mov)and(hpt>0)and(man_is_moving2)) then   -- man_is_moving2
            if (usedlast_ammo_pc1=="ammo") then hpt=hpt-standartdamage; 
            if (speedtimer>0) then 
               if (ammoicon=="up") then  yt=yt-rozmiarznak;   end
              if (ammoicon=="down") then  yt=yt+rozmiarznak; end
              if (ammoicon=="left") then  xt=xt-rozmiarznak; end
              if (ammoicon=="right") then  xt=xt+rozmiarznak; end
              damagetimertanks=damagetimertanks+100; end;
                          end;
           -- Вражеские танки от выстрелов с усилителем получают продолжительно длящийся вред.
          if (usedlast_ammo_pc1=="ice") then freezetanks=freezetanks+35; hpt=hpt-1;
             love.audio.play(iceeffectsnd);
             end;
          smsg1="tank HP="..hpt.." zwykle wystrzel";  --zwykle wystrzel
         allowshot=0; man_is_moving2=false;
         love.audio.play(patronysnd) ;
      end


if (xt>60)and((isnear (xt,x))and(isnear (yt,y))and(hpt>0)and (editor==1)) then   -- man_is_moving2
            if (love.keyboard.isDown("m")) then  -- добавить ошибку в координатах для gluckcheckX 
              if (movePL1=="up") then  yt=yt-rozmiarznak;   end
              if (movePL1=="down") then  yt=yt+rozmiarznak; end
              if (movePL1=="left") then  xt=xt-rozmiarznak; end
              if (movePL1=="right") then  xt=xt+rozmiarznak; end
                man_xpla3=xt; man_ypla3=yt;
            end

			if (love.keyboard.isDown("m")and (enemynum==1)and (love.keyboard.isDown("1"))) then
              if (movePL1=="up") then  yt=yt-rozmiarznak;   end
              if (movePL1=="down") then  yt=yt+rozmiarznak; end
              if (movePL1=="left") then  xt=xt-rozmiarznak; end
              if (movePL1=="right") then  xt=xt+rozmiarznak; end
                man_xpla3=xt; man_ypla3=yt;
            end
            
              if ((love.keyboard.isDown("d"))) then  
              hpt=0;
              
            end
            if ((love.keyboard.isDown("y"))) then    
              protecttanks=1000;
            end
            if ((love.keyboard.isDown("o"))) then    
             -- slowdowntimertanks=1000;
             damagetimertanks=1000; 
            end

            if ((love.keyboard.isDown("u"))) then    
              aitype=1;
                 for enemynum=1,totalenemies,1 do 
         
        typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[enemynum]:get();
        aitype=1;
        
        enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2); -- NIL  kak tak? 
        end;
        ammoKEYPL1=""; 
            end


           if ((love.keyboard.isDown("i"))) then 
           	huded=3;
                  -- просто читаем данные танков и выводим их на печать, отладочная функция
                if (tanks_mov==true) then par_tmov="tanks_mov"; else par_tmov=""; end
                   if (tanks_am==true) then par_ta="tanks_am"; else par_ta=""; end
                   selectedtankid=enemynum;
                   --smsg2="e["..enemynum.."]="..typt.." hpt="..hpt.." "..par_tmov.." "..par_ta.." fear="..feartanks.." frz="..freezetanks.." protect="..protecttanks.." speed="..speedtanks.." xt="..xt.." yt="..yt  ; 
                  
            end

         
  end





 if (x_tanks>60)and((isnear (x_tanks,x))and(isnear (y_tanks,y))and(tanks_am)and(hp>0)and(hpt>0)and(freezetanks==0)and(typt~="tankdead")and (editor==0)) then   -- man_is_moving2
    hp=hp-4;if (tank<1) then hp=hp-10; end;
    allowshot_tanks=0; tanks_am=0;x_tanks,y_tanks,m_x_tanks,m_y_tanks=0,0,0,0; -- танки почему то всё ещё могут ломать предметы находящиеся ЗА игроком при выстреле
    if (protect<1) then hp=hp-20; end; 
    if (hardlevel==1)and(protect<1) then hp=hp-10; end; 
    if (poziom==1) then hp=hp-10; end; 
    if (speedtanks>0) then damagetimerPL1=damagetimerPL1+1;  
    if(rotate_t==0) then hardened_ammo_get="right"; end; --right movePL1
    if(rotate_t==90) then hardened_ammo_get="down"; end; --down
     if(rotate_t==180) then hardened_ammo_get="left"; end; --left
     if(rotate_t==270) then hardened_ammo_get="up";  end; --up
   end; 
    
    playergetdamage (); 
      end


     enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2);-- NIL  kak tak? 
     
end; end;
--smsg4=" enemies[enemynum]:set(typt,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";

-- если противник обстреливает игрока.
-- если координаты 1 игрока совпадают с координатой пули 2 - отнимаются HP у Р1 
if ((isnear(x2pla2am,x))and(isnear(y2pla2am,y))and(man_is_movingpla2am)and(enemytank==1)) then
    hp=hp-4;if (tank<1) then hp=hp-10; end;
    allowshotpla2=0;
    if (protect<1) then hp=hp-20; end; 
    if (hardlevel==1)and(protect<1) then hp=hp-20; end; 
    if (poziom==1) then hp=hp-20; end; 
    if (speedtimerpla2~=nil)and(speedtimerpla2>0) then damagetimerPL1=damagetimerPL1+1;  end; 
    playergetdamage (); 
    love.audio.play(patronysnd) ;
end





function sleep(ms)
    local b = os.clock() * 1
    while os.clock() * 1 - b <= ms do end
end
       
         

        function getobjcode (y,x)  -- заменить в коде все подобные конструкции на эту универсальную. НЕ СДЕЛАОН.ы
        zz=(screens (y,x));-- Gamey i gamex должен быть уже применён.
                    if (zz) then
                        objectcode=string.byte (zz); else objectcode=0; end;
            return objectcode; 
        end

 -- function checklistammo  ice  or table
     function checklistice (objectcode,mx,my)
        objectcode_ice=ext_objs_param (objectcode,8);
        objectcode_damagestage=ext_objs_param (objectcode,6);
        if (objectcode_ice~=nil) then  result=objectcode_ice else result=0; end; 
        if (objectcode_ice==0) then return 0;  end; 
           --if (objectcode>5)and(objectcode<10)and(powerstate==1) then powerclean (); allowpowerrescan=1;end;
           if (objectcode_ice==255) then result=0; end; 
           if (objectcode_ice==255)and(objectcode_damagestage~=nil)and(objectcode_damagestage>0) then result=objectcode_damagestage; end; 
			if (objectcode_damagestage==255) then result=0; end 
           return result; 
        end

      function checklistbomb (objectcode,mx,my)
        objectcode_bomb=ext_objs_param (objectcode,7);
        if (objectcode_bomb~=nil) then  result=objectcode_bomb else result=0; end; 
      if (objectcode_bomb==0) then return 0;  end; 
          if (objectcode==122)or(objectcode==123) then targetremains=targetremains-1;        end; 

           if (objectcode>5)and(objectcode<10)and(powerstate==1) then powerclean (); allowpowerrescan=1;end;
           return result; 
        end

  function tankareexploded (y4pla2am,x4pla2am,command)
  	xx2,yy2= xgametorealpositionbezbyte (y4pla2am,x4pla2am) ; -- мы получаем только координаты пули и команду которую она несла.
  	 --smsg1="TAE->TGD ("..xx2.."="..xpla2..","..yy2.."="..ypla2..") xx2=xpla2 ORIG X4="..x4pla2am..",Y4="..y4pla2am.." c="..command.."";  
  		if (command==nil) then command="";end;
  	if ((isnear (xx2,xpla2))and(isnear (yy2,ypla2))and(hptank>0)) then   -- man_is_moving2  --and(tanks_mov)
  		if (command=="damage") then hptank=hptank-20;  end; 
      if (command=="freeze")and(protecttank<1) then freezetimerPL2=freezetimerPL2+25;end 
      if (command=="slow")and(protecttank<1) then slowdowntimerPL2=slowdowntimerPL2+455; 
      man_speedpla2=default_man_speed/4;
	man_speedpla2am=default_ammo_speed/4;end 
      if (command=="fear")and(protecttank<1) then feartimerPL2=feartimerPL2+405; end 
      return true; 
  end
    -- if (command=="damage")and(protecttank<1)  then damagetimerPL2=damagetimerPL2+305; end   --этого параметра нет у P2 белого танка.
        if (totalenemies>0)and(livedtanks>0) then 
     
      potrafil=tanksgetdamage (xx2,yy2,command);  --отправляем в обработку обучные танки
        return potrafil; 
      end
      	--	if (command=="damage") then command=""; end; 
end

function a_tank_exploded (by,bx,command)
 			 tankareexploded (by,bx,command); 
            tankareexploded (by+1,bx,command); 
            tankareexploded (by-1,bx,command); 
            tankareexploded (by,bx+1,command); 
            tankareexploded (by,bx-1,command); 
            tankareexploded (by,bx+2,command); 
            tankareexploded (by,bx-2,command);
            tankareexploded (by+2,bx,command);  
            tankareexploded (by-2,bx,command); 
           
            tankareexploded (by,bx+1,command); 
            tankareexploded (by+1,bx+1,command); 
            tankareexploded (by-1,bx+1,command); 
            tankareexploded (by,bx+1+1,command); 
            tankareexploded (by,bx-1+1,command); 
            tankareexploded (by,bx+2+1,command); 
            tankareexploded (by,bx-2+1,command);
            tankareexploded (by+2,bx+1,command);  
            tankareexploded (by-2,bx+1,command); 
    end


function explodeice (by,bx,command)
    map_changed=77; 
	       if (command==nil) then command=""; end 
            c1=getobjcode (by+1,bx); cc1=checklistice (c1,by+1,bx); -- тут мы получаем коды всего что лежит рядом.
            c2=getobjcode (by-1,bx); cc2=checklistice (c2,by-1,bx);
            c3=getobjcode (by,bx+1); cc3=checklistice (c3,by,bx+1);
            c4=getobjcode (by,bx-1); cc4=checklistice (c4,by,bx-1) ; 
            c5=getobjcode (by,bx+2); cc5=checklistice (c5,by,bx+2);
            c6=getobjcode (by,bx-2); cc6=checklistice (c6,by,bx-2);
            c7=getobjcode (by+2,bx); cc7=checklistice (c7,by+2,bx) ; 
            c8=getobjcode (by-2,bx); cc8=checklistice (c8,by-2,bx) ;
            if (command=="freezebomb") then command="freeze";
            	   defacescreen=2; timerz=0; -- для спецэффекта  wremenno ubral ibo meszajet 4100  wernut  
			if (cc1==1)then printat (by+1,bx,"30"); end; --если что то есть из списка - взрываем.
            if (cc2==1) then printat (by-1,bx,"30");end;
            if (cc3==1) then printat (by,bx+1,"30");end;
            if (cc4==1) then printat (by,bx-1,"30");end;
            if (cc5==1)and(cc3==1) then printat (by,bx+2,"30");end;
            if (cc6==1)and(cc4==1) then printat (by,bx-2,"30");end;
            if (cc7==1)and(cc1==1) then printat (by+2,bx,"30");end;
            if (cc8==1)and(cc2==1) then printat (by-2,bx,"30");end;
            if (cc1>1)then printat (by+1,bx,cc1); end; --если что то есть из списка - взрываем.
            if (cc2>1) then printat (by-1,bx,cc2);end;
            if (cc3>1) then printat (by,bx+1,cc3);end;
            if (cc4>1) then printat (by,bx-1,cc4);end;
            if (cc5>1)and(cc3==1) then printat (by,bx+2,cc5);end;
            if (cc6>1)and(cc4==1) then printat (by,bx-2,cc6);end;
            if (cc7>1)and(cc1==1) then printat (by+2,bx,cc7);end;
            if (cc8>1)and(cc2==1) then printat (by-2,bx,cc8);end;
        		end 
            printat (by,bx,"27");
	          a_tank_exploded (by,bx,command);
		   return;
		end

        function explodebomb (by,bx,command)
             map_changed=77;   
        	if (command==nil) then command=""; end 
            c1=getobjcode (by+1,bx); cc1=checklistbomb (c1,by+1,bx); -- тут мы получаем коды всего что лежит рядом.
            c2=getobjcode (by-1,bx); cc2=checklistbomb (c2,by-1,bx);
            c3=getobjcode (by,bx+1); cc3=checklistbomb (c3,by,bx+1);
            c4=getobjcode (by,bx-1); cc4=checklistbomb (c4,by,bx-1) ; 
            c5=getobjcode (by,bx+2); cc5=checklistbomb (c5,by,bx+2);
            c6=getobjcode (by,bx-2); cc6=checklistbomb (c6,by,bx-2);
            c7=getobjcode (by+2,bx); cc7=checklistbomb (c7,by+2,bx) ; 
            c8=getobjcode (by-2,bx); cc8=checklistbomb (c8,by-2,bx) ;
            --defaultbroken="27";
            printat (by,bx,"27");
            defacescreen=1; timerz=0; -- для спецэффекта  wremenno ubral ibo meszajet 4100  wernut  
           a_tank_exploded (by,bx,command);
            if (cc1==1)then printat (by+1,bx,"27"); end; --если что то есть из списка - взрываем.
            if (cc2==1) then printat (by-1,bx,"27");end;
            if (cc3==1) then printat (by,bx+1,"27");end;
            if (cc4==1) then printat (by,bx-1,"27");end;
            if (cc5==1)and(cc3==1) then printat (by,bx+2,"27");end;
            if (cc6==1)and(cc4==1) then printat (by,bx-2,"27");end;
            if (cc7==1)and(cc1==1) then printat (by+2,bx,"27");end;
            if (cc8==1)and(cc2==1) then printat (by-2,bx,"27");end;
            if (cc1>1)then printat (by+1,bx,cc1); end; --если что то есть из списка - взрываем.
            if (cc2>1) then printat (by-1,bx,cc2);end;
            if (cc3>1) then printat (by,bx+1,cc3);end;
            if (cc4>1) then printat (by,bx-1,cc4);end;
            if (cc5>1)and(cc3==1) then printat (by,bx+2,cc5);end;
            if (cc6>1)and(cc4==1) then printat (by,bx-2,cc6);end;
            if (cc7>1)and(cc1==1) then printat (by+2,bx,cc7);end;
            if (cc8>1)and(cc2==1) then printat (by-2,bx,cc8);end;
            return; 
        end

function mushroomupd (by,bx)
        
               c1=getobjcode (by,bx); -- тут мы получаем код
               finalobject="83";
               check2=wzroststage (c1);
               --smsg2=(startobject.." TO "..finalobject); 
               if (check2~="0") then finalobject=check2;printat (by,bx,finalobject);  end
        end

       function wzroststage (checkcode)  -- аналог  Damaged by ammo
                  if (checkcode==80) then return "81"; end;
                  if (checkcode==81) then return "82"; end;
                  if (checkcode==82) then return "83"; end;
                  return "0";
                  end


function greenshit (by,bx,placeobject)
            xxx=math.ceil(math.random (4));
            c1=getobjcode (by+1,bx); -- тут мы получаем коды всего что лежит рядом.
            c2=getobjcode (by-1,bx);
            c3=getobjcode (by,bx+1);
            c4=getobjcode (by,bx-1);
            --printat (by,bx,"21");
           -- defacescreen=1; timerz=0; -- для спецэффекта
           placeitembydefault="21"
            if (xxx>0)and(checklistbomb (c1)>0) then trytoplace (by+1,bx,c1,placeobject); end; --если что то есть из списка - взрываем.
            if (xxx>0)and(checklistbomb (c2)>0) then trytoplace (by-1,bx,c2,placeobject);end;
            if (xxx>0)and(checklistbomb (c3)>0) then trytoplace (by,bx+1,c3,placeobject);end;
            if (xxx>0)and(checklistbomb (c4)>0) then trytoplace (by,bx-1,c4,placeobject);end;


        end


            function trytoplace (dx,dy,startobject,finalobject)
               --smsg1=(startobject.." TO "..finalobject); 
               check2=damagestage (startobject);
               --smsg2=(startobject.." TO "..finalobject); 
               if (startobject==124) then explodebomb (dx,dy);end; 
               if (check2~="0") then finalobject=check2; end
               if (finalobject~="255") then
                    printat (dx,dy,finalobject); 
                    end
               
              end

              --функция содержит таблицу поведения для расстреливаемых обычными патронами предметов. 
              --может быть полезна для упрощения некоторых вычислений которые сейчас дублируют друг друга.
              --возвращает 0 если не знает можно ли что то делать с этим обьектом.
              function damagestage (checkcode)  -- аналог  Damaged by ammo
                  --if (checkcode==104) then return "105"; end;
                 code=ext_objs_param (checkcode,6);
                 if (code==nil) then return "0" else return ""..code.."" ; end; 
                 if (code==255) then return "0" else return ""..code.."" ; end; 
                
              end

-- Т.к. второй игрок отличается от первого отработка обьектов и событий для них сильно различается
-- но  само перемещение персонажа похоже и можно его "функционализировать"   НЕ СДЕЛАНО
--speedtimerpla2  man_speedpla2    freezetimerPL2=2;
function reactmove2 (zzx2,xpla2,ypla2,hptank_f,allowmovepla2,plusxpla2,plusypla2,freezetimerPL2_f,man_speedpla2,speedtimerpla2_f,protecttanks_f,feartanks_f,typt_f, zz_id_teraz,enemynum_f)
    --hptank=0;
    teleport=0; teleport_xpla2=0;  teleport_ypla2=0;
    if (editor==1)or(pause==1) then return allowmovepla2,hptank_f,freezetimerPL2_f,speedtimerpla2_f,protecttanks_f,feartanks_f ;  end;
    if (hptank_f<1) then  return 0,0,0,0,0 ; end; 
      chancesitem=ext_objs_param (zzx2,11);
    if (chancesitem==nil) then chancesitem=0; end; 
     if (freezetimerPL2_f>0) then return 0,hptank_f,freezetimerPL2_f,speedtimerpla2_f,protecttanks_f,feartanks_f ; end; -- БАГ --  как то по другому надо сделать реакцию на второго игрока, иначе все замерзать будут.
     objectcode_ammo=ext_objs_param (zzx2,5);
          if (objectcode_ammo==255) then  allowmovepla2=0; end; 
     if (speedtimerpla2_f>0) then damager=1; else damager=0; end;
     if (protecttanks_f>0) then addchance=5; else addchance=0; end;

	chancesyou=(math.random(67+20*damager+addchance)); -- chances attack	
    chancesrandomsound=math.random(70);
    -- почти никакой автоматизации damagestageid, autoshot=0  и.т.п. пока не используется.

  -- реакция на objects.ini по умолчанию - если в 5-й колонке есть значение на этот предмет - оно печатается.
   if (objectcode_ammo~=nil)and(objectcode_ammo<255)and(typt_f~="scientist") then 
        --love.audio.play(icetakesnd);  ((zzx2==22)) 
         printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,objectcode_ammo);
        end

	if (zzx2==16) then  
	by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (explodeicesnd,xpla2,ypla2); 
	explodeice (by,bx,"freeze");
	-- по хорошему тут надо бы передать mute т.е заглушить передачу freezetimerPL2 которыый забивает тот что изменяется в explodeice
	-- и на записанный там позже сразу же записывается значение отсюда конечно же не совпадающее., а чаще всего 0,
	-- именно поэтому значение на выходе теряется и именно поэтому пришлось написать эти 2 строки. 
	 if (typt_f=="btank") then freezetimerPL2_f=freezetimerPL2_f+10; end; 
	 if (typt_f~="btank") then freezetimerPL2_f=freezetimerPL2_f+300; end; 
        end;    
        
        if (zzx2==256) then  
	by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (explodeicesnd,xpla2,ypla2); 
	explodeice (by,bx,"freezebomb");
	 freezetimerPL2_f=freezetimerPL2_f+1000;
        end;    
        
         if (zzx2==38) then  
		by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (explodeicesnd,xpla2,ypla2); 
	explodeice (by,bx,"fear");
	feartanks_f=feartanks_f+445; 
        end;     

       if (zzx2==48) then  
		by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (stunhitsnd,xpla2,ypla2); 
	explodeice (by,bx,"slow");
	slowdowntimertanks=slowdowntimertanks+400; --и так работает можно не писать
        end;     
if (zzx2==49) then  
    by=gamey(ypla2)+plusypla2;bx=gamex(xpla2)+plusxpla2; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
  --playsoundifvisible (stunhitsnd,xpla2,ypla2); 
  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
    tankwithsignal=enemynum_f;
    signaltraptimer=signaltraptimer+200; --и так работает можно не писать
        end;     

   if (zzx2==20) then allowmovepla2=0;  darkzone= not_numeric (darkzone);
               love.audio.play(patronysnd);  
                end;
   if (zz_id_teraz==46) or (zz_id_teraz==45) then 
         hptank_f=hptank_f-600; 
 end

    if (zzx2==39) then protecttanks_f=1000; --protecttank=1000;
      --if (acidprotect==1) then addinventoryitem (40); end; 
      --acidprotect=0;
     love.audio.play(protectsnd);
              printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
         end;

    if (zzx2==21) then 
      hptank_f=hptank_f-1; 
      if (typt_f=="scientist") then hptank_f=hptank_f-100; end; 
      end


    if (zzx2==19) then 
    speedtimerpla2_f=speedtimerpla2_f+1500;-- speedtanks=1000; 
    
     playsoundifvisible(uskoritelsnd,xpla2,ypla2);
                 printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
         end;


    if (zzx2==30) then 
                printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
                freezetimerPL2_f=freezetimerPL2_f+50; --freezetanks=40; freezePL2=1;
                love.audio.play(iceeffectsnd);
         end;

  

    
     if (zzx2==147) then 

            allowmovepla2=0;

          end

 

    if (zzx2==44) then
      dasglukenfild=1;
     love.audio.play(patronysnd);
             printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
         end;

    if (zzx2>5)and(zzx2<11) then allowmovepla2=0; 
                        end;
   
      if (zzx2==141) then allowmovepla2=0; 
                          end;
      if (zzx2==142) then allowmovepla2=0; 
                          end;


    if (zzx2==87) then allowmovepla2=0; 
                          end;

    if (zzx2==45) then allowmovepla2=0; 
                          end;

    if (zzx2==46) then allowmovepla2=0; 
                          end;


    if (zzx2==132) then allowmovepla2=0; 
                          end;
    if (zzx2==140) then allowmovepla2=0; 
                          end;
    if (zzx2==133) then allowmovepla2=0; 
                          end;
    if (zzx2>133)and(zzx2<140) then allowmovepla2=0; 
                          end;
    if (zzx2==135) then allowmovepla2=0; 
                          end;


    if (zzx2==121)and(typt_f=="btank") then --xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; xt>0)and(yt>0
        flagchecknewteleportersenemy=0;
        --wsego_tank_teleporterow
         enemies[totalenemies+1] = class_enemy:new("tank",xpla2,ypla2,500,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0); 
         totalenemies=totalenemies+1; 
        --smsg1="enemies="..#enemies.." totalenemies="..totalenemies.."wsego_tank_teleportero="..wsego_tank_teleporterow;
  
        printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                 end
    
    if (zzx2==124) then  -- образец как работать с protecttanks
         hptank_f=hptank_f-50;  
         if (protecttanks_f==0) then hptank_f=hptank_f-200; end;
         if (hardlevel~=1) then hptank_f=hptank_f-50; end; -- на усложнённых уровнях урон танку от бомб меньше
         if (poziom~=1) then hptank_f=hptank_f-50; end;  --  на усложнённых уровнях урон танку от бомб меньше
       love.audio.play(bombsnd);
         by=gamey(ypla2)+plusy;bx=gamex(xpla2)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx,"");
       end;
     
            if (zzx2==31)and(typt_f~="scientist") then 
              love.audio.play(deadminesnd);
              hptank_f=0; --enemytank=0;
                       end;

            if (solarpower>2)and(zzx2==146)and(typt_f~="scientist") then 
          love.audio.play (tankdeadsnd);
           --tanksdestroyed=tanksdestroyed+1;
              solarpower=solarpower-4;
              hptank_f=0; --enemytank=0;
               printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27"); 
                
         end;

        --tylko dla nie scientistów
         if (typt_f~="scientist") then 


   if (zzx2==101) then  -- TEST  танки не должны боятся батареек.
   	playsoundifvisible (batterysnd,xpla2,ypla2) ;
      feartanks_f=50;hptank_f=hptank_f+200; 
      printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
      end

    if (zzx2==53)and(solarpower<5)and(chancesyou>40) then  -- TEST  танки не должны боятся батареек.
      
      printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
      end


     if ((zzx2==58)or(zzx2==61)or(zzx2==62)or(zzx2==59)or(zzx2==60)) then 
    playsoundifvisible (patronysnd,xpla2,ypla2) ;
             printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");
         end;


    if (zzx2>103)and(zzx2<113)or(zzx2==149) then allowmovepla2=0; 
    playsoundifvisible (jedzeniesnd,xpla2,ypla2) ;
     finalobject="27";
     check2=damagestage (zzx2);
        if (check2~="0") then finalobject=check2; end
           if (chances>56) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

                          end;

        if (zzx2==102)or(zzx2==144)or(zzx2==145) then allowmovepla2=0; 
    playsoundifvisible (jedzeniesnd,xpla2,ypla2) ;
     finalobject="27";
     check2=damagestage (zzx2);
        if (check2~="0") then finalobject=check2; end
           if (chances>56) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

                          end;
  if (zzx2>79)and(zzx2<87) then allowmovepla2=0; 
		playsoundifvisible (jedzeniesnd,xpla2,ypla2) ;
     finalobject="27";
     check2=damagestage (zzx2);
        if (check2~="0") then finalobject=check2; end
           if (chances>16) then  printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,finalobject);end;

    end

          end 
          -- nie scientist koniec


          -- dla scientisti
        if (typt_f=="scientist") then 
      if (zzx2==60) then  -- TEST  танки не должны боятся батареек.
          feartanks_f=50;hptank_f=200;
           love.audio.play(aptekasnd);  
          printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
          end


            if (zzx2==148)or(zzx2==101)  then 
              allowmove=0;
          end
     if (zzx2==147) then 
            allowmove=0;
            checkxB,checkyB=realrandomscanobject (148,-5,randomb);
            checkx,checky=realrandomscanobject (147,-5,randomc);
            if (checkx==-1) then smsg2="Scientist tries use teleporter.";end;
            if (checkx>-1) then teleport_xpla2,teleport_ypla2=xgametorealpositionbezbyte (2+checky,checkx) ; 
              teleport=1;
               smsg2="teleport_xpla2="..teleport_xpla2.." teleport_ypla2="..teleport_ypla2.." teleport flag="..teleport;
             
              end;
               if (math.random (10)>8.8)and(checkxB>-1) then 
                teleport_xpla2,teleport_ypla2=xgametorealpositionbezbyte (2+checkyB,checkxB) ;  
                teleport=1;
                smsg2="teleport_xpla2="..teleport_xpla2.." teleport_ypla2="..teleport_ypla2.." teleport flag="..teleport;
                end;
               playsoundifvisible (teleport2snd,xpla2,ypla2) ;
     end

          if (zzx2==135) then allowmove=0; 
        --if  then allowmove=0; end нужен таймер не позволяющий любому обьекту многократно применятся по 50 раз за прикосновение.
        if (plusy==0) then
      cd1= string.byte (screens (gamey(ypla2)+1,gamex(xpla2)+plusxpla2));
      cd2= string.byte (screens (gamey(ypla2)+2,gamex(xpla2)+plusxpla2));
      --smsg1="cd1="..cd1.." cd2="..cd2;
      if (timerz>10) then if (cd1==133)and(cd2==134)then 
        printat (gamey(ypla2),gamex(xpla2)+plusxpla2,"140");
        printat (gamey(ypla2)+1,gamex(xpla2)+plusxpla2,"56");
        printat (gamey(ypla2)+2,gamex(xpla2)+plusxpla2,"56");
       playsoundifvisible (swapitem,xpla2,ypla2) ;
        timerz=0; else playsoundifvisible (brokendoorsnd,xpla2,ypla2) ;
        return;
      end; end
                          end;
                          end;
      if (zzx2==140) then allowmove=0; 
        
       if (timerz>10) then closedoor (xpla2,ypla2,plusxpla2,plusypla2,timerz); timerz=0; end ; 
                          end;

      if ((zzx2==58)or(zzx2==61)or(zzx2==62)or(zzx2==59)or(zzx2==60)) then 
         allowmovepla2=0; 
         end;        
      if (zzx2>103)and(zzx2<113)or(zzx2==149) then allowmovepla2=0;   end
      if (zzx2==102)or(zzx2==144)or(zzx2==145) then allowmovepla2=0;  end
      if (zzx2>79)and(zzx2<87) then allowmovepla2=0; end;

      if (zzx2==72) then 
              --love.audio.play(deadminesnd);
              smsg1="You save scientist."; 
              hptank_f=-1234; score=score+1000; --enemytank=0; 
          targetremains=targetremains-1;
          printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"33");       
            end
              
      if (zzx2==122) then
             love.audio.play(deadminesnd);
       targetremains=targetremains-1;hptank_f=0;
          printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
          love.audio.play(deadsnd);
        end
     if (zzx2==123) then
          love.audio.play(targsnd); 
      hptank_f=hptank_f-15;
        
     targetremains=targetremains-1;
      printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end


        end
          -- koniec scientistów 

    if ((zzx2==76)or(zzx2==78)or(zzx2==0)or(zzx2==1)or(zzx2==2)or(zzx2==3)) then
     --love.audio.play(wallsnd);
                allowmovepla2=0;
       end;     

        if (zzx2==75)or(zzx2==96) then
                    allowmovepla2=0; 
                end; 
               
                 
                if (zzx2==73)or(zzx2==107)or(zzx2==108)or(zzx2==109)or(zzx2==110)or(zzx2==111)or(zzx2==112) then
                    allowmovepla2=0; 
                end; 
     if ((zzx2==77)) then 
       love.audio.play(icetakesnd);
         printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
        end

    if (zzx2==97) then
     if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
                allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"98"); end;
                end;   

     if (zzx2==98) then
     if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
                allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"99");end;
                end;   
     if (zzx2==99) then
     if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
                 allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"100");end;
                end;   
   
     if (zzx2==100) then
     if (typt_f~="scientist") then  love.audio.play(jedzeniesnd); end
               allowmovepla2=0; 
           if (chances>50) then printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"27");end;
                end;   

    if (zzx2==114)and(typt_f=="scientist")and(hptank_f<210) then 
    	 
                dodac=220-hptank_f;
               if (solarpower>1) then
                love.audio.play(szpricsnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                hptank_f=hptank_f+dodac;
                solarpower=solarpower-dodac; 
                end; 
               
                end;
              
   
 
    if (zzx2==12)and(timerz>5) then
     love.audio.play(switchpwsnd);
                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"14");
            powerstate=1; timerz=3;
            allowpowerrescan=1; end 
    if (zzx2==12)and(timerz<6) then allowmovepla2=0;
                 end 
    if (zzx2==14)and(timerz>5) then
     love.audio.play(switchpwsnd2);

                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"12");
            powerstate=0;
            timerz=3; end 
    if (zzx2==14)and(timerz<6) then allowmovepla2=0;
                
        end 

    if (zzx2==120) then
     love.audio.play(switchmsnd);
                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"131");
            puszkistate=1;
                
        end 
    if (zzx2==131) then
     love.audio.play(switchmsnd);
                allowmovepla2=0; 
           printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"120");
            puszkistate=0;
                
        end 

     if ((zzx2==13)or(zzx2==79)or(zzx2==71)or(zzx2==70)) then
            allowmovepla2=0;
       zzblock=string.byte (screens (gamey(ypla2)+2*plusypla2,gamex(xpla2)+2*plusxpla2));
                if (zzblock==56) then 
                    love.audio.play(movableblocksnd);
                    printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                    printat (gamey(ypla2)+2*plusypla2,gamex(xpla2)+2*plusxpla2,zzx2);
                end
                if (zzblock==13)and(zzx2==79) then 
                     love.audio.play(movableblockdestrsnd);
                    printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if (zzblock==79)and(zzx2==79) then 
                     love.audio.play(movableblockdestrsnd);
                    printat (gamey(ypla2)+plusypla2,gamex(xpla2)+plusxpla2,"56");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end

         end;
         return allowmovepla2,hptank_f,freezetimerPL2_f,speedtimerpla2_f,protecttanks_f,feartanks_f, teleport_xpla2, teleport_ypla2,teleport; 
end

function reactmove (zzx)
    if (editor==1) then return; end;
    if (pause==1) then return; end;
    if (freezetimerPL1>0) then return; end;
    --реакция на движение второго игрока - возможно потом придётся вынести как отдельную функцию.
     --по умолчанию второй игрок отправляет обьект на который наступил, однако для Player 2 надо особый обработчик.
    --реакция на движение, может изменять параметры,или запрещать движение или корректировать его.
     objectcode_ammo=ext_objs_param (zzx,4);
     takeableitem=ext_objs_string (zzx,19);
          if (objectcode_ammo==255) then  allowmove=0; end; 

    -- реакция на objects.ini по умолчанию - если в 5-й колонке есть значение на этот предмет - оно печатается.
    if (objectcode_ammo~=nil)and(objectcode_ammo<255) then 
        --love.audio.play(icetakesnd);  ((zzx2==22)) 
         printat (gamey(y)+plusy,gamex(x)+plusx,objectcode_ammo);
        end
    if (zzx==32) then allowmove=0; renderer=0; 
    if (menu~=5) then selectedoptionmenu=1; playsoundifvisible (computersnd,x,y);end; 
    menu=5; incontrolcentre=1;
    
     
                          end;
    
     if  (takeableitem=="take") then --starttanks=starttanks+5; ДЕЙСТВИЕ TAKE
      if (countinventory<maximuminventorysize) then
      addinventoryitem (zzx);
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                else
              allowmove=0;
             end
         end;
     
     if (zzx==19) then  
      man_speed= default_man_speed+300; 
      man_speed2= default_ammo_speed+250;
      speedtimer=95; 
     playsoundifvisible(uskoritelsnd,x,y);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

    if (zzx==35) then
      language=0;
             defacescreen=3;timerz=0;
         end;

    if (zzx==36) then
      language=2;
         end;


    if (zzx==44) then
      dasglukenfild=1;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

       if (zzx==74)and(seed>1) then  
           seed=seed-1; 
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"80");
         end;
    
    if (zzx==132) then allowmove=0; 
                          end;
    if (zzx==133) then allowmove=0; 
                          end;
    if (zzx>133)and(zzx<140) then allowmove=0; 
                          end;

        if (zzx==88) then allowmove=0; 
        	 if (timerz>5) then
        	 -- closedoor (x,y,plusx); 
		start_ammo_x,start_ammo_y=scanobject (140,gamey(y),1);
		if (start_ammo_x>0) then 
			ccc=screens (start_ammo_y,start_ammo_x);
			door_y,door_x=xgametorealpositionbezbyte (start_ammo_y,start_ammo_x);
			door_x=door_x+rozmiarznak;
			closedoor (door_y,door_x,0); 
			--smsg1="closedoor ("..door_y..";,"..door_x..",0); ccc="--..ccc;
		 			end
        	 timerz=0;  end;
                          end;

    if (zzx==135) then allowmove=0; 
        --if  then allowmove=0; end нужен таймер не позволяющий любому обьекту многократно применятся по 50 раз за прикосновение.
        if (plusy==0) then
      cd1= string.byte (screens (gamey(y)+1,gamex(x)+plusx));
      cd2= string.byte (screens (gamey(y)+2,gamex(x)+plusx));
      --smsg1="cd1="..cd1.." cd2="..cd2;
      if (timerz>3) then if (cd1==133)and(cd2==134)then 
        printat (gamey(y),gamex(x)+plusx,"140");
        printat (gamey(y)+1,gamex(x)+plusx,"56");
        printat (gamey(y)+2,gamex(x)+plusx,"56");
        love.audio.play(swapitem);
        timerz=0; else love.audio.play(brokendoorsnd); 
        return;
      end; end
                          end;
                          end;
      if (zzx==140) then allowmove=0; 
         if (timerz>3) then closedoor (x,y,plusx); timerz=0;  end;
     
      
                          end;

        if (zzx==51)and(targetremains<4)and(fuel>2)and(editor==0)then 
     finaltitle=1; 
     autosave_execute (); 
     score=score+2000+lives*20+ammo+ice+bombs+keys*5+water*5;
         
           end
        if (zzx==51) then smsg1="Fuel:"..fuel.." Scientists not saved:"..targetremains; end;


     molotok=checkinventoryitem(50); 
		if (zzx==16)and(tank==1) then  
	by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (explodeicesnd,x,y); 
	explodeice (by,bx,"freeze");
	freezetimerPL1=freezetimerPL1+50;
        end;     

        if (zzx==38)and(tank==1) then  
	by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (explodeicesnd,x,y); 
	explodeice (by,bx,"fear");
	feartimerPL1=feartimerPL1+35;
        end;     

       if (zzx==48)and(tank==1) then  
	by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
	playsoundifvisible (stunhitsnd,x,y); 
	explodeice (by,bx,"slow");
	slowdowntimer=slowdowntimer+95;
	man_speed=default_man_speed/4;
	man_speed2=default_ammo_speed/4;
        end;     

    if (zzx==22) then passthrurock=passthrurock+2;
     --love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx, ext_objs_param (zzx,4));  -- приходит уже string
         end;




     if (zzx==58) then 
      if (countinventory<maximuminventorysize)and(ammo>199)and(allowmove~=0) then 
        addinventoryitem(58); allowmove=0; 
        printat (gamey(y)+plusy,gamex(x)+plusx,"56"); 
      end
      if (countinventory==maximuminventorysize)and(ammo>199) then allowmove=0; plusx=0; plusxy=0; 
      end 
      if (ammo<200)and(allowmove~=0) then 
        ammo=200; allowmove=0;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
          end
      
                          
         end;

    if (zzx==94) then
      if (seed<80) then  seed=seed+40;
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
           else
            allowmove=0;
          end
         end;
    if (zzx==83) then 
            if (mushroom<slotlimit) then mushroom=mushroom+1;
              love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"74");
                 else
              --allowmove=0;
             end
         end;


 
   

     if (zzx==61) then ice=ice+15;         
     love.audio.play(patronysnd);
             printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if (zzx==62) then lives=lives+1; if (poziom==0) then lives=lives+1; end;     
         love.audio.play(livessnd);
               printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;--это упрощение,  в обычной сложности +1
     if (zzx==59) then bombs=bombs+6;        
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;
     if (zzx==126) then keys=keys+1;        
     love.audio.play(keysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if (zzx==95) then paralysatorrifle=1;   
     paralysatorammo=paralysatorammo+1;      
     love.audio.play(newarsenalsnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if (zzx==103) then paralysatorammo=paralysatorammo+1;        
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if ((zzx==13)or(zzx==79)or(zzx==71)or(zzx==70)) then
    
       allowmove=0;
       zzblock=string.byte (screens (gamey(y)+2*plusy,gamex(x)+2*plusx));
                if (zzblock==56) then 
                     love.audio.play(movableblocksnd);
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if (zzblock==13)and(zzx==79) then 
                     love.audio.play(movableblockdestrsnd);
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                   if (zzblock==79)and(zzx==79) then 
                     love.audio.play(movableblockdestrsnd);
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if (zzblock==43)and(zzx==70) then 
                  fuel=fuel+1;
                    love.audio.play(movableblockdestrsnd);
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    printat (gamey(y)+2*plusy,gamex(x)+2*plusx,"42");
                end
         end;



     if (zzx==87) then
     love.audio.play(movableblocksnd);
       allowmove=0;
       if (water>0) then water=water-1;
       zzblock=string.byte (screens (gamey(y)+2*plusy,gamex(x)+2*plusx));
                if (zzblock==56) then 
                    printat (gamey(y)+plusy,gamex(x)+plusx,"56");
                    printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end
                if ((zzblock==76)or(zzblock==77)) then 
                    printat (gamey(y)+plusy,gamex(x)+plusx,"27");
                    --printat (gamey(y)+2*plusy,gamex(x)+2*plusx,zzx);
                end;
            else 
                if (tank==0) then  hp=0; end
                if (tank==1) then hp=hp-100;playergetdamage ();  end;
                damagetimerPL1=damagetimerPL1+2; 
            love.audio.play(firesnd);end;
         end;


  
    if (zzx==118) then
     
                allowmove=0; 
                end

     if ((zzx==121)and(tank>0)) then  --при попытке взять ещё один танк появляется враг.ы
        enemytank=1; hptank=3000;
        freezetimerPL2=0;slowdowntimerPL2=0;
        xpla2=x; ypla2=y;
        
        printat (gamey(y)+plusy,gamex(x)+plusx,"56");

              
              if (acidprotect==1) then addinventoryitem(40); acidprotect=0; end;

        end

     if (zzx==121)and(tank<1) then tank=1;        
     love.audio.play(tankzsnd);
        printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;


     if (zzx==125) then  --railroad
            print ("");
         end;

    if (zzx==128) then express=1;        
     love.audio.play(expresssnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         man_speed=default_man_speed+1000; 

         end;


     if (zzx==39) then 
      if (protect==1) then addinventoryitem (39) ;
      printat (gamey(y)+plusy,gamex(x)+plusx,"56");end; 
      protect=1; 
      if (acidprotect==1) then addinventoryitem (40); end; 
      acidprotect=0;
     love.audio.play(protectsnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

    if (zzx==41) then inventorybelt=1; allowedaidspersonal=allowedaidspersonal+3;
       love.audio.play(protectsnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
    end

    if (zzx==40) then 
      if (acidprotect==1) then addinventoryitem (40) ;
      printat (gamey(y)+plusy,gamex(x)+plusx,"56");end; 
      acidprotect=1;
        if (protect==1) then addinventoryitem (39); end; 
      protect=0;
     love.audio.play(protectsnd);
              if (tank==0) then printat (gamey(y)+plusy,gamex(x)+plusx,"56"); end;
              if (tank==1) then printat (gamey(y)+plusy,gamex(x)+plusx,"121"); end;
              tank=0;
         end;
            
     if (zzx==27) then 
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;



     if (zzx==255)or(zzx==127) then water=water+1;        
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

     if (zzx==47) then 
   -- random items not released. 
        score=score+math.random(50);
     if (math.random(50)>45) then hp=hp+10; 
            smsg1="You found an bonus hp";
                end;  --уведомить игрока о действиях.ыыыыы
     if (math.random(70)>55) then antitankm=1; 
            smsg1="You found an antitank missile";
                end;  --уведомить игрока о действиях.ыыыыы
      if (math.random(70)>55) then 
        addinventoryitem (58);
            smsg1="You found ammobox";
                end;  --уведомить игрока о действиях.ыыыыы
      if (math.random(70)>65) then 
        addinventoryitem (60);
            smsg1="You found an medikit";
                end;  --уведомить игрока о действиях.ыыыыы
     love.audio.play(patronysnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;

          --функция для взрыва бомбы,  наступания на бомбы и выстрела в нее любым игроком одна и та же.
     if (zzx==124) then 
      hp=hp-25; 
      if (hardlevel==1) then hp=hp-25; end;
      if (poziom==1) then hp=hp-25; end;
        if (tank<1) then hp=hp-50; end;
        if (protect<1) then hp=hp-50; end; 
        playergetdamage (); 
       love.audio.play(bombsnd);
         by=gamey(y)+plusy;bx=gamex(x)+plusx; --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx,"");
       end;
            
       

      if (zzx==30) then 
          -- выключено ибо непонятно что происходит всвязи с увеличением клетки  - dla zmiany rozmiaru 
          love.audio.play(iceeffectsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"27");
              freezetimerPL1=1;
                if (protect<1) then freezetimerPL1=2;end
               if (tank<1) then freezetimerPL1=2;end
         end;




     if (zzx==60) then if (hp==hpmax)or(hp>hpmax)  then 
                        if (reservedaids<(slotlimit+allowedaidspersonal)) then 
                                 reservedaids=reservedaids+1; 
                                  love.audio.play(patronysnd);
                                else 
                           
                           if (countinventory<maximuminventorysize) then addinventoryitem(60); allowmove=0; 
                            printat (gamey(y)+plusy,gamex(x)+plusx,"56"); else allowmove=0; plusx=0; plusxy=0; end 
                            end
                        end;       
                if (hp<hpmax ) then      love.audio.play(aptekasnd);  hp=hpmax;
                  end;
                

                    if (allowmove~=0) then  printat (gamey(y)+plusy,gamex(x)+plusx,"56"); end; 
                end;


    if (zzx==114) then
                dodac=hpmax+50-hp;
               if (solarpower>1) then
                love.audio.play(szpricsnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                hp=hp+dodac;
                solarpower=solarpower-dodac; 
                end; 
               
                end;

   if (zzx==150) then allowmove=0; 
                dodac=hpmax+50-hp;
               if (solarpower>1) then
                love.audio.play(szpricsnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                hp=hp+dodac;
                solarpower=solarpower-dodac; 
                end; 

                   dodac=300-ammo;
               if (solarpower>1)and(ammo<300) then
                --love.audio.play(aptekasnd);
                if (solarpower<dodac) then dodac=solarpower; end;
                ammo=ammo+dodac;
                solarpower=solarpower-dodac; 
                end; 
               
               
                end;


   if (zzx==20) then allowmove=0;  darkzone= not_numeric (darkzone);
               love.audio.play(patronysnd);  
                end;


    if (zzx==115) then allowmove=0; 
                          end;

 

   if (zzx==86) then allowmove=0; 
                        end;
    if (zzx==84) then allowmove=0; 
                         end;
    if (zzx==85) then allowmove=0; 
                          end;
     if (zzx==141) then allowmove=0; 
                          end;
      if (zzx==142) then allowmove=0; 
                          end;



    if (zzx==31) then tank=0;  protect=0; end; --обьект не должен уничтожатся как и стена.

    if (passthrurock<1) then
                if (zzx==76) then
                    love.audio.play(wallsnd);
                    if (express<1) then allowmove=0; end -- на экпрессе можно сломать стену.  FUCK 
                    if ((protect<1)and(tank<1)and(ossys~="Android")) then hp=hp-1; end
                end;    
                if (zzx==75)or(zzx==96) then
                    allowmove=0; 
                end; 
                
                if (zzx==73)or(zzx==107)or(zzx==108)or(zzx==109)or(zzx==110)or(zzx==111)or(zzx==112) then
                    allowmove=0; 
                end; 
                if (zzx==55) then
            --     love.audio.play(wallsnd);
                   allowmove=0; 
                end; 
                if (zzx==63) then
                    allowmove=0; 
                end; 
              

        end  --end of passthrurock spell

    if (passthrurock>0) then
                if (zzx==76) then
                    passthrurock=passthrurock-1;
                end;    

           if (zzx==55) then
                   passthrurock=passthrurock-1;
                end; 
                if (zzx==63) then
                   passthrurock=passthrurock-1;
                end; 
              
        end



    chances=(math.random(52+7*tank+1*protect));

     if (zzx==97) then
     love.audio.play(wallsnd);
                allowmove=0; 
            if ((protect<1)and(tank<1)) then hp=hp-math.random(1);  end
            if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"98"); end;
                end;   

     if (zzx==98) then
     love.audio.play(wallsnd);
                allowmove=0; 
              if ((protect<1)and(tank<1)) then hp=hp-math.random(1); end
             if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"99");end;
                end;   
     if (zzx==99) then
     love.audio.play(wallsnd);
                allowmove=0; 
              if ((protect<1)and(tank<1)) then hp=hp-math.random(1); end
               if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"100");end;
                end;   
   
     if (zzx==100) then
     love.audio.play(wallsnd);
                allowmove=0; 
              if ((protect<1)and(tank<1)) then hp=hp-math.random(1); end
              if (chances>50) then printat (gamey(y)+plusy,gamex(x)+plusx,"27");end;
                end;   
   


    if (zzx==12)and(timerz>15) then
     love.audio.play(switchpwsnd);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"14");
            powerstate=1; timerz=0;
            allowpowerrescan=1; end 
    if (zzx==12)and(timerz<16) then allowmove=0;
                
        end 
    if (zzx==14)and(timerz>15) then
     love.audio.play(switchpwsnd2);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"12");
            powerstate=0; timerz=0;
                allowpowerrescan=1; end 
    if (zzx==14)and(timerz<16) then allowmove=0;
        end 

    if (zzx==120) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"131");
            puszkistate=1;
                
        end 
    if (zzx==131) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y)+plusy,gamex(x)+plusx,"120");
            puszkistate=0;
                
        end 


   if (zzx==113) then 
     love.audio.play(doorsnd);
              printat (gamey(y)+plusy,gamex(x)+plusx,"56");
         end;
   if ((zzx==78)and(keys==0)) then
     love.audio.play(wallsnd);
                allowmove=0; 
                end;     
  if ((zzx==78)and(keys>0)) then 
        keys=keys-1;
         love.audio.play(doorsnd);
         printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end

     if ((zzx==77)and(tank==0)) then
     love.audio.play(wallsnd);
                allowmove=0; if (protect<1) then hp=hp-math.random(1); end
                end;     
  if ((zzx==77)and(tank>0)) then 
   love.audio.play(icetakesnd);
         printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end
  if ((zzx==10)or(zzx==11)or(zzx==6)or(zzx==7)or(zzx==8)or(zzx==9)) then
     if (tank==0) then
     love.audio.play(wallsnd);
            allowmove=0;
                end;     
  if ((tank>0)) then 
   love.audio.play(cannondestrsnd);
   if (zzx==6)or(zzx==7)or(zzx==8)or(zzx==9) then powerclean (); allowpowerrescan=1;nowait=1; end; -- запуск рескана штырьков
        --нет анимации уничтожения  НЕ СДЕЛАНО.
         printat (gamey(y)+plusy,gamex(x)+plusx,"27");
        end
    end
  if (zzx==5) then
    playsoundifvisible (computersnd,x,y);
          incontrolcentre=1;
          allowmove=0; 
        end

    if (incontrolcentre==1) then allowmove=0; end;  -- блокирует перемещение персонажа пока тот затаривается покупками.ы
    if (pause==1) then allowmove=0; end;  -- блокирует перемещение персонажа пока pause
   if ((zzx==23)or(zzx==45)or(zzx==46)) then
     love.audio.play(deadminesnd);
     hp=0;
               allowmove=0; 
        end
 
   if (zzx==21) then 
    if (acidprotect==1) then  end;
    if (acidprotect==0) then      love.audio.play(deadminesnd);
                    hp=0;
               allowmove=0;  end;

      end

     if (zzx==122) then
        --     love.audio.play(deadminesnd);
      tank=0; targetremains=targetremains-1;hp=0;
        --анимация взрыва танка или человечка  - НЕ РЕАЛИЗОВАНО 
      printat (gamey(y)+plusy,gamex(x)+plusx,"56");
     love.audio.play(deadsnd);
        end
     if (zzx==123) then
           love.audio.play(targsnd); 
      hp=hp-1; if (tank<1) then hp=hp-10;end;
        --анимация взрыва человечка  - НЕ РЕАЛИЗОВАНО 
     targetremains=targetremains-1;
      printat (gamey(y)+plusy,gamex(x)+plusx,"56");
        end

      
     if (zzx==147) then 
            allowmove=0;
             playsoundteleport=0;
             checkxB,checkyB=realrandomscanobject (148,-5,randomb);--check player 1 start position
            checkx,checky=realrandomscanobject (147,-5,randomc);--check player 1 start position
          
            if (checkx==-1) then smsg2="Teleporters not found.";end;
            if (checkx>-1) then x,y=xgametorealpositionbezbyte (2+checky,checkx) ; playsoundteleport=1;   end
            if ((math.random (10))>8.8)and(checkxB>-1) then x,y=xgametorealpositionbezbyte (2+checkyB,checkxB) ;  playsoundteleport=1; end;
              if (playsoundteleport==1) then love.audio.play(teleport2snd); end; 
              

     end

     if (zzx==15) then  --teleport object   -- АНИМАЦИЯ НЕ СДЕЛАНО
              --  accelmove=2;  
                --правильно было бы так - найти на карте все коды 119, переместится случайно в любой из них рядом с 
                --которым есть свободная клетка.
              removeteleportmarker=1;
               love.audio.play(telesnd);
               allowmove=0;
                          --      plusx=0;  plusy=0;
            --   pri=coord (gamey(y)+plusy,gamex(x)+plusx);
            printat (tx,ty,"15");
                  ttx=gamex(x)+plusx;tty=gamey(y)+plusy;
                    --на данную секунду обьекты меняются кооректно местами, но сам человечек часто попадает не туда.
                --y=(tx+plusx)*rozmiarznak;x=240+(ty+plusy)*rozmiarznak;  -- задаём новые координаты по адресу полученного телепорта,
                x,y=xgametorealpositionbezbyte (tx,ty);
                --if (move=="up") then x=x+2*rozmiarznak;end;  --здесь y это высота
                if (move=="down") then y=y+2*rozmiarznak;end;  --здесь y это высота
                if (move=="left") then x=x-1*rozmiarznak; y=y+1*rozmiarznak; end;  --здесь y это высота   
                if (move=="right") then x=x+1*rozmiarznak; y=y+1*rozmiarznak; end;  --здесь y это высота   
                -- x- это по горизонтали для чела y для вертикали, но в некоторых переменных оси перепутаны.
                --gamex i gamey делят реальные координаты для получения простых координат совместимых с уровнем.
               --они не подходят для перемещения человечка, там нужно умножение.
                tx=tty; ty=ttx; --  телепорт перемещается на старые координаты.
                printat (tx,ty,"119");
                end;  

     if (zzx==4) then  -- xblock object
                accelmove=1;
               love.audio.play(xsnd);
                printat (gamey(y)+plusy,gamex(x)+plusx,"76");
                pri=coord (gamey(y)+plusy,gamex(x)+plusx);
                new_x_block_fix=movePL1;
                --new_x_block_fix=string.byte (screens (gamey(y)+plusy),(gamex(x)+plusx)); 
                --reactmove (new_x_block_fix); 
                end;  
	

 --После перехода по кодам 0-4 должна быть проверка НЕМЕДЛЕННАЯ следующего символа! НЕ СДЕЛАНО
  --accelmove допустимо значеине 2 для перепрыгивания обьекта. 
     if (zzx==3) then  --3 wniz 1 wprawo 0 wlewo
               love.audio.play(strelkasnd);
             --   plusx=0; --Игнорируется почему то,по неверной 
                 --if (plusx~=0) then allowmove=0;plusx=0;end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
                 if (plusy>-1) then  accelmove=1; end;
                 if (plusy==-1) then allowmove=0;
                           pri=coord (gamey(y)+plusy,gamex(x)+plusx);
                                end;
                 
                end;  
     if (zzx==2) then  -- 2 wwerh 1 wprawo 0 wlewo
                love.audio.play(strelkasnd);
                --if (plusx~=0) then allowmove=0;plusx=0;end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
                if (plusy<1) then   accelmove=1; end;    
                if (plusy==1) then allowmove=0;
                         pri=coord (gamey(y)+plusy,gamex(x)+plusx);
                        end
                 
                end;  

     if (zzx==1) then  -- 2 wwerh 1 wprawo 0 wlewo
                love.audio.play(strelkasnd);
                --if (plusy~=0) then allowmove=0;plusy=0; end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
                if (plusx>-1) then   accelmove=1; end;    
                if (plusx==-1) then allowmove=0;
                         pri=coord (gamey(y)+plusy,gamex(x)+plusx);
                        end
                 
                end; 

     if (zzx==0) then  -- 2 wwerh 1 wprawo 0 wlewo
                love.audio.play(strelkasnd);
                --if (plusy~=0) then allowmove=0;plusy=0; end;--Тут долж быть смена управление. НЕ СДЕЛАНО.
                if (plusx<1) then   accelmove=1; end;    
                if (plusx==1) then allowmove=0;
                         pri=coord (gamey(y)+plusy,gamex(x)+plusx);
                        end
                 
                end; 
                if (zzx~=4) then 
				new_x_block_fix="";
                hardened_ammo_get="";
			end
end

-- выстрел Player 1  Игрок 1 выстрел, анимация полёта пули.
if (pause==1) then allowmove=0;end;



 x2,y2,man_x2,man_y2,man_is_moving2,man_speed2=move_the_man2(dt,x2,y2, man_x2, man_y2 ,man_is_moving2,man_speed2);  



if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if ((((ammoKEYPL1=="ammo")or(ammoKEYPL1=="paint"))and(hp>0)and(ammo<1)and(editor<1)and(pause<1))) then 
     love.audio.play(noammosnd);
  end
    if ((((ammoKEYPL1=="ammo")or(ammoKEYPL1=="paint"))and(hp>0)and(ammo>0)and(editor<1)and(pause<1))) then 
            if (movePL1=="")and(lastmove==1) then
               movePL1=lastmovePL1; 
               end
            zzxammo=0; 
             usedlast_ammo_pc1="ammo";
            allowshot=1;steps=0;renderammoshot=1;
            y2=y; x2=x;y2now=y2; x2now=x2;
            if (movePL1=="left") then 
              love.audio.play(wystrelsnd);
            ammoicon="left";
            ammo=ammo-1;  
            while ((allowshot==1)and(gamex(x2)>0)) do 
            
            x2=x2-rozmiarznak; 
            steps=steps+1;  --тут подсчитываются шаги полёта пули. 
         zzzammo=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        allowshot,rikoszet=reactammo (zzxammo); -- проверяем в что попали
                          if (gamex(x2)==0) then allowshot=0; end; 
                    end
            
                    if (allowshot==0) then 
                          plusx=-steps+2;plusy=0; 
                         x2=x2now; --y2=y2now+rozmiarznak; --подправляем координаты чтобы пуля была где нужно.
                        --если убрать фикс,попадание в танк будет работать но анимация будет неверной.
                        if (rikoszet==1) then  rx2=x2; ry2=y2; rplusx=plusx;rman_is_moving2=true; 
                          rman_x2=man_x2; rman_y2=man_y2;
                          end;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x2,y2); end;
                       end
                  

            end; 
            --===========================
            if (movePL1=="right") then 
                       love.audio.play(wystrelsnd);
            ammo=ammo-1;
            ammoicon="right";
            while ((allowshot==1)and(gamex(x2)<mapsize_horizontal-1)) do 
                     
            x2=x2+rozmiarznak;
            steps=steps+1;
         zzzammo=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        allowshot,rikoszet=reactammo (zzxammo); ---- проверяем в что попали
                    end
                if (allowshot==0) then 
                          plusx=steps-1;plusy=0;
                         x2=x2now; y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x2,y2); 
                       end
                        end
            end; 
            --=====================================
            if (movePL1=="down") then 
                freezetimerPL3=0;
                       love.audio.play(wystrelsnd);
            ammo=ammo-1;
            ammoicon="down";
            while ((allowshot==1)and(gamey(y2)<mapsize_vertical-1)) do 
            
               y2=y2+rozmiarznak;
            steps=steps+1;
         zzzammo=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        allowshot,rikoszet=reactammo (zzxammo); -- проверяем в что попали
                    end
                if (allowshot==0) then 
                          plusx=0;plusy=steps-1; 
                         --x2=x2now+rozmiarznak;  --если убрать фикс,попадание в танк будет работать но анимация будет неверной.
                         y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x2,y2); 
                       end
                        end
            end; 
            --=====================================
       if (movePL1=="up") then 
        freezetimerPL3=0;
                       love.audio.play(wystrelsnd);
            ammo=ammo-1;
            ammoicon="up";
            while ((allowshot==1)and(gamey(y2)>0)) do 
         
            y2=y2-rozmiarznak;
            steps=steps+1;
         zzzammo=(screens (gamey (y2),gamex (x2)));
                    if (zzzammo) then
                        zzxammo=string.byte (zzzammo);
                        allowshot,rikoszet=reactammo (zzxammo); -- -- проверяем в что попали
                        if (gamey(y2)==0) then allowshot=0; end; 
                    end
                    if (allowshot==0) then 
                          plusx=0;plusy=-steps+2; 
                         x2=x2now; y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x2,y2);  
                       end
                        end
            end; 
            --=====================================
            end

end;

if ((player2AI>0)and(editor==0)and(enemytank>0)) then   -- movePL2="";
           chances=(math.random(55+10*tank+10*protect+3*hardlevel+10*poziom));
            if (chances>50)and(hp>1)and(xpla2>200) then ammoKEYPL2="ammo"; end
            if (chances<50) then ammoKEYPL2="";end
            if (chances==50) then hpdetect=1; hpdetect2=1; end;
        if ((chances<10) and (chances>0)) then movePL2="left";end
        if ((chances<20) and (chances>10)) then movePL2="right";end
        if ((chances<30) and (chances>20)) then movePL2="up";end
        if ((chances<40) and (chances>30)) then movePL2="down";end
        if ((chances<50) and (chances>40)) then movePL2="up";end
        if (timerz<10) then hpdetect=hp; end;
        if (timerz<155)and(timerz>80) then hpdetect2=hp; end;
        if (1>0)and(hpdetect==hpdetect2) then 
             
                if x==xpla2 and y<ypla2 then movePL2="up";end
                if x==xpla2 and y>ypla2 then movePL2="down";end
                if x>xpla2 and y==ypla2 then movePL2="right";end
                if x<xpla2 and y==ypla2 then movePL2="left";end
                end
         if (timerz==200) then hpdetect=1; hpdetect2=1; end;
    end
    -- анимация движения 
-- выстрел Player2

--move_the_manpla2am(dt)
x2pla2am,y2pla2am,man_x2pla2am,man_y2pla2am,man_is_movingpla2am,man_speedpla2am=move_the_man2(dt,x2pla2am,y2pla2am,man_x2pla2am, man_y2pla2am,man_is_movingpla2am,man_speedpla2am);  





if ((not man_is_movingpla2)and(not man_is_movingpla2am)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL2=="ammo")and(enemytank>0)and(editor<1)and(pause<1))) then 
      if ((movePL2=="")and(player2AI==0)and(lastmove==1)) then
               movePL2=lastmovePL2; 
               end
            --xpla2 i ypla2 не должны менятся никаким образом! это координаты игрока!!
            zzx2ammo=0;allowshotpla2=1;steps=0;
            y2pla2am=ypla2; x2pla2am=xpla2; -- начальная координата полёта пули
            x2now2am=x2pla2am; y2now2am=y2pla2am -- копируем координату 
            renderammoshotpla2=1;  
            if (movePL2=="left") then 
              playsoundifvisible (wystrelsnd,xpla2,ypla2);
            ammoiconpla2="left";
            while ((allowshotpla2==1)and(gamex(x2pla2am)>0)) do 
            x2pla2am=x2pla2am-rozmiarznak; 
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                         if (gamex(x2pla2am)==0) then allowshotpla2=0; end; 
                    end
                    if (allowshotpla2==0) then 
                          plusx=-steps+1;plusy=0;   --максимальная конечная координата
                         x2pla2am=x2now2am; 
                      --   y2pla2am=y2now2am+rozmiarznak; --подправляем координаты чтобы пуля была где нужно.
                            man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x2pla2am,y2pla2am); 
                       end

                        end
            end; 
            --===========================
            if (movePL2=="right") then 
                 playsoundifvisible (wystrelsnd,xpla2,ypla2);
            ammoiconpla2="right";
            while ((allowshotpla2==1)and(gamex(x2pla2am)<mapsize_horizontal-1)) do 
            x2pla2am=x2pla2am+rozmiarznak;
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.

                    end
                        if (allowshotpla2==0) then 
                          plusx=steps-1;plusy=0;
                         x2pla2am=x2now2am; y2pla2am=y2now2am;
                            man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x2pla2am,y2pla2am); 
                       end
                        end
            end; 
            --=====================================
            if (movePL2=="down") then 
                  playsoundifvisible (wystrelsnd,xpla2,ypla2);
            ammoiconpla2="down";
            while ((allowshotpla2==1)and(gamey(y2pla2am)<mapsize_vertical-1)) do 
            y2pla2am=y2pla2am+rozmiarznak;
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
                      if (allowshotpla2==0) then 
                          plusx=0;plusy=steps-1; 
                         --x2pla2am=x2now2am+rozmiarznak; 
                         y2pla2am=y2now2am;
                            man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x2pla2am,y2pla2am); 
                       end
                        end
            end; 
            --=====================================
       if (movePL2=="up") then 
                 playsoundifvisible (wystrelsnd,xpla2,ypla2);
            ammoiconpla2="up";
            while ((allowshotpla2==1)and(gamey(y2pla2am)>0)) do 
            y2pla2am=y2pla2am-rozmiarznak;
            steps=steps+1;
         zzz2ammo=(screens (gamey (y2pla2am),gamex (x2pla2am)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz2ammo) then
                        zzx2ammo=string.byte (zzz2ammo);
                        allowshotpla2=reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                         if (gamey(y2pla2am)==0) then allowshotpla2=0; end; 
                    end
               if (allowshotpla2==0) then 
                          plusx=0;plusy=-steps+2; 
                         x2pla2am=x2now2am; y2pla2am=y2now2am;
                          man_is_movingpla2am,man_x2pla2am,man_y2pla2am=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x2pla2am,y2pla2am);  
                        end
                        end
            end; 
            --=====================================
            end

end;
    -- анимация движения

--в кого попадают выстрелы. при совпадении будет убывание HP у 1 или второго игрока.



-- ICE выстрел Player1 ICE , использует переменные от ammo ssss
if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL1=="ice")and(hp>0)and(ice<1)and(editor<1)and(pause<1))) then 
  love.audio.play(badsnd);
   end
  if (((ammoKEYPL1=="ice")and(hp>0)and(ice>0)and(editor<1)and(pause<1))) then 
            -- персонаж перемещается при выстреле льда,поправить как нибудь.  
                 if ((movePL1=="")and(lastmove==1)) then
               movePL1=lastmovePL1; 
               end
               usedlast_ammo_pc1="ice";
            zzxice=0;accelmove=0;allowshot=1;steps=0;
            y2=y; x2=x;y2now=y2; x2now=x2;renderammoshot=2; 
            if movePL1=="left" then 
              love.audio.play(wystrelsnd);
            ammoicon="left";
            ice=ice-1; 
            while ((allowshot==1)and(gamex(x2)>0)) do 
            x2=x2-rozmiarznak; 
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- функции обработки пули.
                        if (gamex(x2)==0) then allowshot=0; end;
                    end
                      if (allowshot==0) then 
                          plusx=-steps+2;plusy=0; 
                         x2=x2now; --y2=y2now+rozmiarznak; --подправляем координаты чтобы пуля была где нужно.
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x2,y2); 
                            end
                        end
            end; 
            --===========================
            if movePL1=="right" then 
                       love.audio.play(wystrelsnd);
            ice=ice-1;
            ammoicon="right";
            while ((allowshot==1)and(gamex(x2)<mapsize_horizontal-1)) do 
            x2=x2+rozmiarznak;
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- fункции обработки пули
                    end
            
                       if (allowshot==0) then 
                          plusx=steps-1;plusy=0;
                         x2=x2now; y2=y2now;
                          man_is_moving2,man_x2,man_y2=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x2,y2); 
                       end
                        end
            end; 
            --=====================================
            if (movePL1=="down") then 
                       love.audio.play(wystrelsnd);
            ice=ice-1;
            ammoicon="down";
            while ((allowshot==1)and(gamey(y2)<mapsize_horizontal-1)) do 
            y2=y2+rozmiarznak;
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- обработки пули. п
                    end
            
                     if (allowshot==0) then 
                          plusx=0;plusy=steps-1; 
                         --x2=x2now+rozmiarznak; 
                         y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x2,y2); 
                       end
                        end
            end; 
            --=====================================
       if movePL1=="up" then 
                       love.audio.play(wystrelsnd);
            ice=ice-1;
            ammoicon="up";
            while ((allowshot==1)and(gamey(y2)>0)) do 
            y2=y2-rozmiarznak;
            steps=steps+1;
         zzzice=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzzice) then
                        zzxice=string.byte (zzzice);
                        reactice (zzxice); -- функции обработки пули. 
                        if (gamey(y2)==0) then allowshot=0; end;
                    end
            
                         if (allowshot==0) then 
                          plusx=0;plusy=-steps+2; 
                         x2=x2now; y2=y2now;
                            man_is_moving2,man_x2,man_y2=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x2,y2);  
                       end
                        end
            end; 
            --=====================================
            end

end;

-- END ICEfffffffffff



-- BOMB выстрел Player1  , использует переменные от ammo ssss
if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL1=="bomb")and(hp>0)and(bombs>0)and(editor<1)and(pause<1))) then 
            -- персонаж перемещается при выстреле льда,поправить как нибудь.  
            zzx=0;steps=0;
            y2=y; x2=x;y2now=y2; x2now=x2;
            if movePL1=="left" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
            x2=x2-rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 

            --===========================
         if movePL1=="right" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
            x2=x2+rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 
            --=====================================
   
      if movePL1=="down" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
                    y2=y2+rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 
            --=====================================
        if movePL1=="up" then 
              --love.audio.play(wystrelsnd);
            bombs=bombs-1; 
                    y2=y2-rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),"124"); end;
                    end
            end; 
            --=====================================
            end

end;

-- END BOMB

if (ammoKEYPL1=="selectitem") then 
  sortinventoryitem ();
end

   -- if (inventorybelt==nil) then smsg1="inventorybelt = NIL !!!!!!!!!!!!!!!!!!!!!!!!!!!"; smsg2="inventorybelt = NIL !!!!!!!!!!!!!!!!!!!!!!!!!!!";inventorybelt=0; end ; 
      if (inventorybelt==1) then maximuminventorysize=8; end
      if (inventorybelt==0) then maximuminventorysize=5;end
  

--электричество теперь может включится само по достижению достаточного запаса солнечной энергии в 50. И отключится при падении ( но только если было включено с помощью солнечных панелей).
if (solarenergy>50)and(solarpower>200) then powerstate=1; powersetupbysolarenergy=1;   p1=1; p3=1; 
      if (solarpower>200)and(solarpower<250) then allowpowerrescan=1; end ; 
     end; -- зачем то для включения повер требуется p1>0 p3>0   для чего? 
   if (solarenergy<40)and(powersetupbysolarenergy==1) then powerstate=0;powersetupbysolarenergy=0; end;


-- искуственный "интеллект" танков 
function checkusefulitems_near (xt,yt,typeobject_f)
    recommendedmove="";
    --xpla3c,ypla3c=xgametorealpositionbezbyte (yt,xt);
    xpla3c=math.ceil (gamex(xt)) ; ypla3c=math.ceil (gamey(yt)); 
    
    objectcode=getobjcode (ypla3c,xpla3c+1);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="right"; retobjectcode=objectcode; end
    objectcode=getobjcode (ypla3c,xpla3c-1);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="left"; retobjectcode=objectcode;end
    objectcode=getobjcode (ypla3c-1,xpla3c);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="up"; retobjectcode=objectcode;end
    objectcode=getobjcode (ypla3c+1,xpla3c);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="down"; retobjectcode=objectcode;end
    objectcode=getobjcode (ypla3c,xpla3c+2);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="right"; retobjectcode=objectcode;end
    objectcode=getobjcode (ypla3c,xpla3c-2);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="left"; retobjectcode=objectcode;end
    objectcode=getobjcode (ypla3c-2,xpla3c);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="up"; retobjectcode=objectcode;end
    objectcode=getobjcode (ypla3c+2,xpla3c);  if ((listcheck (objectcode,typeobject_f))==1) then recommendedmove="down"; retobjectcode=objectcode;end
  --  smsg2=" xpla3c,ypla3c= "..xpla3c..","..ypla3c.."  objectcode"..objectcode.."; list="..listcheck (objectcode).." recom.."..recommendedmove ;
    return recommendedmove,retobjectcode;    
end

function listcheck (objectcode,typeobject_f)
  -- smsg1="listcheck (objectcode="..objectcode.." type_cc="..typeobject_f..")" ; 
  whoisinterestitem=ext_objs_string (objectcode,18);
     if (whoisinterestitem=="creatures") then return 1; end;  -- интересно всем
     if (whoisinterestitem=="tanks")then if (typeobject_f=="tank")or(typeobject_f=="gwozd") then return 1; end;  end; 
     if (whoisinterestitem=="gwozd")then if (typeobject_f=="gwozd") then return 1; end;  end; 
    if (typeobject_f=="scientist")and (whoisinterestitem=="scientist") then
        return 1; 
    end
  
 return 0; 
 end

function AI (xpla3,ypla3,movePL3_f,ammoKEYPL3,speedtanks,hpt,feartanks,typeobject_f,aitype_f,pa2_f)    -- movePL2="";    AI TANK
        chances=(math.random(75+10*tank+10*protect+10*poziom));  -- +3*hardlevel
        if (signaltraptimer>0) then 
        
        local x=signal_x; local y=signal_y; 
        --if (tankwithsignal==nil) then tt=0; else tt=tankwithsignal; end; --smsg1="tt="..tt.." sigtimer.."..signaltraptimer.." signal_x="..signal_x.." x="..x;
        selectedtankid=tankwithsignal; 
        end
        --для ловушки нужно перехватить x i y 
        if (aitype_f==0) then 
        if (typeobject_f=="gwozd")and(timerx>15) then ammoKEYPL3="ammo";end;
        if (chances>30)and(hp>0)and(xpla3>200) then ammoKEYPL3="ammo";movePL3_f=""; end
        if (typeobject_f=="tank")and(hp<1) then ammoKEYPL3="";end;
        if (typeobject_f=="scientist") then ammoKEYPL3="";end;
        if (chances>29)and(chances<50) then hpdetect=1; hpdetect2=1; end;
        if ((chances<5) and (chances>0)) then movePL3_f="left";end
        if ((chances<10) and (chances>5)) then movePL3_f="right";end
        if ((chances<15) and (chances>10)) then movePL3_f="up";end
        if ((chances<20) and (chances>15)) then movePL3_f="down";end
        if (speedtanks<1) then  if ((chances<45) and (chances>29)) then movePL3_f="";end ;end ;
        if (timerz<10) then hpdetect=hp; end;
        if (timerz<125)and(timerz>120) then hpdetect2=hpdetect; end;
        if (speedtanks>0)and(timerx>55) then hpdetect2=hpdetect; end;
        if (hp>0)and(hpdetect==hpdetect2) then   --выключение этого условия делает танки неагрессивными и нестреляющими.
                if x==xpla3 and y<ypla3 then movePL3_f="up";end
                if x==xpla3 and y>ypla3 then movePL3_f="down";end
                if x>xpla3 and y==ypla3 then movePL3_f="right";end
                if x<xpla3 and y==ypla3 then movePL3_f="left";end
                if (feartanks~=nil)and(feartanks>0)or(typt=="scientist") then
                        if x==xpla3 and y<ypla3 then movePL3_f="down";end
                        if x==xpla3 and y>ypla3 then movePL3_f="up";end
                        if x>xpla3 and y==ypla3 then movePL3_f="left";end
                        if x<xpla3 and y==ypla3 then movePL3_f="right";end
                          end
                end
        end --endi aitype 0
        if (aitype_f==1) then 
        	movePL3_f="";
        end --endi aitype 1

        if (ammoKEYPL3=="ammo")and(movePL3_f=="") then ammoKEYPL3=""; end
        recommendedmove,retobjectcode=checkusefulitems_near (xpla3,ypla3,typeobject_f); 
          --smsg1=recommendedmove..", "..retobjectcode.."=checkusefulitems_near (xpla3,ypla3,"..typeobject_f.."); ";  BUG FUCK баг с магнитом и именем существа НЕ ИСПРАВЛЕН!!
        if (recommendedmove~="")and(chances>12)and(retobjectcode~="53") then movePL3_f=recommendedmove;         end;       
        if (retobjectcode=="53")and(recommendedmove~="")and(chances>2)and(solarpower>1) then solarpower=solarpower-11;  movePL3=recommendedmove;         end;
        if (pa2_f~="")and(pa2_f~=0) then movePL3_f=pa2_f; end; --(chances>30)
        pa2_f=""; 
         return xpla3,ypla3,movePL3_f,ammoKEYPL3; 
   end


 timerx=timerx+1;  deadtanks=0; livedtanks=0; scientists=0;
-- обработка перемещения танков 
if (1==1) then  -- (not man_is_moving2)and(not man_is_moving)
  if (((editor<1)and(pause<1))) then  --(ammoKEYPL1=="placeenemy")
             if (totalenemies>0) then 
   for enemynum=1,totalenemies,1 do 
       typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
       -- больше негде в принципе сохранить параметры текущего перемещения кроме как в массиве. а где же ещё то . man_xpla2 
       allowshot_tanks=0;
     if (signaltraptimer>0)and(enemynum==tankwithsignal)and(hpt>0)  then 
        signal_x=xt; signal_y=yt; end    
    if (typt=="tank")or(typt=="gwozd")then if (hpt>0) then livedtanks=livedtanks+1  else deadtanks=deadtanks+1;  end;  end; 
    if (typt=="scientist")then if (hpt>0) then scientists=scientists+1; end;  end;
    if (typt=="tankdead") then deadtanks=deadtanks+1;  end; --livedtanks=livedtanks-1;
if (timerx>100) then timerx=0;end;
if (feartanks==nil) then feartanks=0; end 
   man_speedpla3= default_man_speed; 
  if (speedtanks>0) then speedtanks=speedtanks-1;man_speedpla3 = 500+240*scaling; end;
  if (slowdowntimertanks>0) then slowdowntimertanks=slowdowntimertanks-1;man_speedpla3 = 30+240*scaling; end;
 if (freezetanks>0) then freezetanks=freezetanks-1; end;
 if (damagetimertanks>0) then damagetimertanks=damagetimertanks-1; hpt=hpt-1; end;
 if (damagetimertanks<1) then damagetimertanks=0; end;
 if (feartanks>0) then feartanks=feartanks-1; end;
 if (feartanks<1) then feartanks=0; end;
 if (freezetanks<1) then freezetanks=0; end; 
 if (protecttanks>0) then protecttanks=protecttanks-1; end;
      tanks_speed_am =450+240*scaling;  
if (speedtanks>0) then   tanks_speed_am = 750+240*scaling; end;
if (slowdowntimertanks>0) then   tanks_speed_am = 80+240*scaling; end;
 
        xt,yt,movePL3,ammoKEYPL3=AI (xt,yt,movePL3,ammoKEYPL3,speedtanks,hpt,feartanks,typt,aitype,pa2) ;  --- ,rotate[enemynum]
         
         xt,yt,hpt,rotate,man_xpla3,man_ypla3,freezetanks,speedtanks,tanks_mov,feartanks,protecttanks=tankmove (xt,yt,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,movePL3,ammoKEYPL3,hpt,freezetanks,speedtanks,protecttanks,feartanks,typt,enemynum); -- if love.keyboard.isDown("e")and((ammoKEYPL3~="ammo")) then end;
      if (gamex(x_tanks)<1)then x_tanks=xt;y_tanks=yt; end; -- если почему то стартовая координата меньше нуля чего быть не может сбросить ее.
      if (gamex(x_tanks)>4000)then x_tanks=xt;y_tanks=yt; end; -- если почему то стартовая координата меньше нуля чего быть не может сбросить ее.
      if (movePL3)and(ammoKEYPL3) then        --if (enemynum==1) then smsg1="e1:rotate_t"..rotate_t..",ta="..ta.." rotate="..rotate..",ammoKEYPL3"..ammoKEYPL3..",HP="..hpt; end; 
     end
    x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,tanks_speed_am=move_the_man2(dt,x_tanks,y_tanks,m_x_tanks, m_y_tanks,ta,tanks_speed_am);     -- if (renderammoshot_ammos==1) then end;
      if (tanks_am) then ta=1; end
      if (tanks_am==false) then ta=0; end
      if (tanks_mov==true) then tmov=1; end
   if (tanks_mov==false)and(tanks_am==false) then 
      if (yt==nil) then yt=0; end -- там НИКОГДА не должно быть NIL !   ни при каких случаях!!!
      if (xt==nil) then xt=0; end
      gluckcheckY=gamey (yt); gluckcheckYYY=math.ceil(gluckcheckY);
      gluckcheckX=gamex (xt); gluckcheckXXX=math.ceil(gluckcheckX);
      if (gluckcheckX~=gluckcheckXXX)or(gluckcheckY~=gluckcheckYYY) then 
      xt,yt= xgametorealpositionbezbyte (gluckcheckYYY,gluckcheckXXX); 
      if (otladka==1) then smsg1="Gluck fix: OLD=gluckcheckX"..gluckcheckX.." ("..gluckcheckXXX..") gluckcheckY="..gluckcheckY.."new "..xt..",y="..yt..""; end; 
      man_xpla3=xt; man_ypla3s=yt;
       feartanks=10; -- для решения проблемы с танками с сбивающимися координатами (танки могли перемещатся сквозь стены)
      end;
      end
      if (tanks_mov==false ) then tmov=0; end -- and(tanks_mov)
      if (ammoKEYPL3=="ammo") and (not tanks_mov)and(freezetanks<1) then -- FUCKFUCKFUCK  and (not tanks_am)  and (not tanks_mov)   (ammoKEYPL3=="ammo") -- and (not tanks_mov)
        -- танки не должны ни в коем случае стрелять если они находятся не ровно на своем знакоместе. т.е. tanks_mov   должен быть выключен !! а он не выключается нигде и никогда похоже.
        x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta=tankammo (xt,yt,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,movePL3,ammoKEYPL3,hpt,freezetanks,speedtanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,tanks_speed_am,rikoszet); 
        end
        if (movePL3)and(ammoKEYPL3) then 
              
     end     
      pa2="";
          enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2); -- NIL  kak tak? 
    end
  end
            end;
        end;

if (editor==1) then renderammoshot_ammos=0; end ;

  --x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_amcyfra,rotate_t=
  --tankammo (start_x,start_y,start_x,start_y,0,0,(moveP3)typt1,0,hpt,0,0,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_amcyfra,400)
     
-- обработка выстрелов танков    
function  tankammo (xpla3,ypla3,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,movePL3,ammoKEYPL3,hptank,freezetanks,speedtanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,tanks_speed_am)
  -- выстрел Player2 --move_the_manpla2am(dt)
         allowshot_tanks=1;
 if (hpt==nil) then hpt=hptank;  end ; 
  if (freezetanks>0) then allowshot_tanks=0; end; 
 --if (rikoszet==1) then ta=0; end;
  if (ta==0) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже   and(not tanks_mov)  именно из за этого условия получалась бесконечный рикошент.
    --smsg1="suka"; -- editor=0; pause=0;
  if (((hpt>0)and(editor<1)and(pause<1))) then             --xpla2 i ypla2 не должны менятся никаким образом! это координаты игрока!!
            zzx3ammo=0;steps=0;
          x_tanks=xpla3; y_tanks=ypla3; --if (rikoszet==0) then     end; -- тут задаем начальные координаты пуль (иначе бесконечно летающие пули получаются , забавный баг можно где то использовать потом)
            xTnow2am=x_tanks; yTnow2am=y_tanks -- копируем координату x2pla2am
            renderammoshot_ammos=1;  
            --smsg1="xpla3 start="..xpla3.." gamex="..gamex(x_tanks)..", and ypla3start "..ypla3.." gamey="..gamey(y_tanks).."";
            if (movePL3~="") then playsoundifvisible (wystrelsnd,xpla3,ypla3); end
          -- smsg1="ibane movePL3="..movePL3..""; 
		--smsg2="tankammo x_tanks="..x_tanks.." m_x_tanks"..m_x_tanks.." movePL3="..movePL3.." steps"..steps.." ammoK="..ammoKEYPL3.." zzx3ammo="..allowshot_tanks.." ammonum	="..totalammo;  
          
         	--movePL3="right";
            if (movePL3=="left") then 
                  rotate_t=180;
            while ((allowshot_tanks==1)and(gamex(x_tanks)>0)) do 
            x_tanks=x_tanks-rozmiarznak; 
            steps=steps+1;
         zzz3ammo=(screens (gamey (y_tanks),gamex (x_tanks)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                            allowshot_tanks,rikoszet=reactammo2 (zzx3ammo,x_tanks,y_tanks,allowshot_tanks,movePL3,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                        if (gamex(x_tanks)==0) then allowshot_tanks=0; end;
                    end
                    if (allowshot_tanks==0) then 
                          plusx=-steps+1+1;plusy=0;   --максимальная конечная координата
                         x_tanks=xTnow2am; 
                            tanks_am,m_x_tanks,m_y_tanks=do_a_step(dt, -man_step+plusx*rozmiarznak,0,x_tanks,y_tanks);   -- dt dx dy xt,yt  just return true,x + dx,y + dy; 
                       end

                        end
            end; 
            --===========================
            if (movePL3=="right") then 
             while ((allowshot_tanks==1)and(gamex(x_tanks)<mapsize_horizontal-1)) do 
            x_tanks=x_tanks+rozmiarznak;
            steps=steps+1;
            rotate_t=0;
         zzz3ammo=(screens (gamey (y_tanks),gamex (x_tanks)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                        allowshot_tanks,rikoszet=reactammo2 (zzx3ammo,x_tanks,y_tanks,allowshot_tanks,movePL3,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
                        if (allowshot_tanks==0) then 
                          plusx=steps-1-1;plusy=0;
                         x_tanks=xTnow2am; y_tanks=yTnow2am;
                            tanks_am,m_x_tanks,m_y_tanks=do_a_step(dt, man_step+plusx*rozmiarznak, 0,x_tanks,y_tanks); 
                       end
                        end
            end; 
            --=====================================
            if (movePL3=="down") then 
            while ((allowshot_tanks==1)and(gamey(y_tanks)<mapsize_vertical-1)) do 
            y_tanks=y_tanks+rozmiarznak;
            steps=steps+1;
            rotate_t=90;
         zzz3ammo=(screens (gamey (y_tanks),gamex (x_tanks)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                        allowshot_tanks,rikoszet=reactammo2 (zzx3ammo,x_tanks,y_tanks,allowshot_tanks,movePL3,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                    end
                      if (allowshot_tanks==0) then 
                          plusx=0;plusy=steps-1-1; 
                          y_tanks=yTnow2am;
                            tanks_am,m_x_tanks,m_y_tanks=do_a_step(dt, 0, man_step+plusy*rozmiarznak,x_tanks,y_tanks); 
                       end
                        end
            end; 
            --=====================================
       if (movePL3=="up") then 
            while ((allowshot_tanks==1)and(gamey(y_tanks)>0)) do 
            y_tanks=y_tanks-rozmiarznak;
            steps=steps+1;
            rotate_t=270;
         zzz3ammo=(screens (gamey (y_tanks),gamex (x_tanks)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                        allowshot_tanks,rikoszet=reactammo2 (zzx3ammo,x_tanks,y_tanks,allowshot_tanks,movePL3,speedtimerpla2); -- тут БУДЕТ вызов функции обработки пули. пока условие невыполнимо.
                         if (gamey(y_tanks)==0) then allowshot_tanks=0; end;
                    end
               if (allowshot_tanks==0) then 
                          plusx=0;plusy=-steps+2; 
                         x_tanks=xTnow2am; y_tanks=yTnow2am;
                          tanks_am,m_x_tanks,m_y_tanks=do_a_step(dt, 0, -man_step+plusy*rozmiarznak,x_tanks,y_tanks);  
                        end
                        end
            end; 
            --=====================================
            end

end;

 return x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,rotate_t;
end
    -- END временный модуль для расстановки танков
-- END окончание обработки выстрелов танков

-- Free ammo and realrikoszet 
-- Обработка самостоятельных патрон и рикошета
-- в данный момент чуть более чем полностью проблемная, похоже нужно переписать целиком.
-- 1 - нужно рассчитать траекторию до ближайшего ломаемого предмета.
-- 2 - и только тогда разово пустить по нему пулю или что угодно. уже это будет графическое отображение.

function class_ammo:update(dt)
	--self.x_ammo=math.random(30);	y_ammo=math.random(30);
 	--smsg1="x_ammo="..x_ammo.." y_ammo"..y_ammo.." type="..typta; 
end
 -- typta = typta or self.typta;  -- куда летит пуля, слово с названием направления, или пусто если пули нет.
 -- start_x = start_x or self.start_x; 	-- - стартовая координата откуда был произведен выстрел, не должна менятся 
 -- - x_ammo = x_ammo or self.x_ammo; -- текущая координата патрона ,     -- y_ammo = y_ammo or self.y_ammo;
	
if (totalammo>0)and(editor==0)	 then --ammofuck
  for ammonum=1,totalammo,1 do 
     typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets=ammoX[ammonum]:get(); 
     randommove_word=math.ceil(math.random(4));
    if (randommove_word==4) then randommove_word="up"; randommove_rotate=270; end 
    if (randommove_word==3) then randommove_word="down";randommove_rotate=90;  end 
    if (randommove_word==2) then randommove_word="left"; randommove_rotate=180; end 
    if (randommove_word==1) then randommove_word="right"; randommove_rotate=0; end 
    
    if (typta~="") then
    	 if (rikoszets<1) then spd=30; end
    	 if (rikoszets>0) then spd=60; end
    	 if (rikoszets>1) then spd=90; end
    	 x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,man_speedx=move_the_man(dt,x_ammo,y_ammo,m_x_ammo, m_y_ammo,ammo_moving,spd);  
    
          plux=0; plusy=0; steps=0;
          -- тут что то случилось с выстрелами вверх и вниз это не рикошет поломался  а тут какая то уйня изменилась сама,
 	if (typta=="up")and((1)and(gamey(y_ammo)>0)) then  plusyz=-1; plusy=-steps+2; 
		ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, 0, -man_step*1,x_ammo,y_ammo); else  renderammoshot_ammos=0;
 		end ;
    if (typta=="down")and((1)and(gamey(y_ammo)<mapsize_vertical-1))  then plusyz=1; plusy=steps-1;  
    	ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, 0,  man_step*1,x_ammo,y_ammo) ; else  renderammoshot_ammos=0;
    	end ;    --y man_step*1 

    if (typta=="left")and((1)and(gamex(x_ammo)>0)) then plusx=-1; 
    	ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, -man_step*1,0,x_ammo,y_ammo); else  renderammoshot_ammos=0;
    	end ;
    if (typta=="right")and((1)and(gamex(x_ammo)<mapsize_horizontal-1)) then  plusx=1; 
    	ammo_moving,m_x_ammo,m_y_ammo=do_a_step(dt, man_step*1, 0,x_ammo,y_ammo); else  renderammoshot_ammos=0;
    	end ;
   	
    	if (ammo_moving) then allowshot_ammo_status=1; else allowshot_ammo_status=0; end; 
  	-- allowshot_ammo_status/ allowshotpla2 - не понимает false/true туда шлют обычно 1  и он и остаётся если не встретилось препятствие
  	checkwzywost1= (gamex(m_x_ammo));
  	checkwzywost2=math.ceil (gamex(m_x_ammo));
  	if (checkwzywost2~=checkwzywost1) then wszywo=1; else wszywo=0; end; 

       	if (typta~="down") then toscreen_x,toscreen_y=math.ceil (gamex(m_x_ammo)),math.ceil(gamey (m_y_ammo)); end; --  gamex  gamey  zzx4ammo==48  - screens очень любит это
        if (typta=="down") then toscreen_x,toscreen_y=math.ceil (gamex(m_x_ammo)),math.ceil(gamey (m_y_ammo))+plusy;end; --  gamex  gamey  zzx4ammo==48  - screens очень любит это
        steps=steps+1;
        zzx4ammo= ((getobjcode (toscreen_y,toscreen_x)));--ammofuck  getobjcode   --
    	  --  if (typta=="down") then 
    	--zzx4ammo=((getobjcode (toscreen_y,toscreen_x))); end; --ammofuck  getobjcode   --
    	-- должен X10, но попадает на 25 клеток правее скрин. Х35.   -- при ширине 26
    	--если сжать экран  то X30   Х27-Х2 = 25.  откуда оно?
    	-- при изменении rozmiarznak меняется и число 25 .    Х2, 12,22,42  
    	-- 41-16 40-15=25  
    	--printat (toscreen_y,toscreen_x,27); -- для теста.  10,35,60 
    	--скрин не видит нечетко спозиционированную пулю.

 	if (typta~="down")and(zzx4ammo~=48)and(zzx4ammo~=0)and(wszywo==0) then 
 		allowshot_ammo_status,realrikoszet=reactammo2 (zzx4ammo,math.ceil (m_x_ammo),math.ceil (m_y_ammo),allowshot_ammo_status,typta,2); end; 
 	if (typta=="down")and(zzx4ammo~=48)and(zzx4ammo~=0)and(wszywo==0) then 
 		allowshot_ammo_status,realrikoszet=reactammo2 (zzx4ammo,math.ceil (m_x_ammo),math.ceil (m_y_ammo)-1,allowshot_ammo_status,typta,2); end; 
 
 	--smsg1="wszywo="..wszywo.." OBJ4="..zzx4ammo..",xa="..(x_ammo)..",mxa="..m_x_ammo.." ya="..(y_ammo)..",mya="..m_y_ammo.." T="..typta..",RIKS"..rikoszets.."ALW="..allowshot_ammo_status..",RIK="..realrikoszet..",REN="..renderammoshot_ammos.."";
 	 if (allowshot_ammo_status==0) then ammo_moving=false; renderammoshot_ammos=0; --dhtvt  wremenno
 	 	typta=""; end;
if (realrikoszet=="rikoszet")and(rikoszets<2)and(typta~=randommove_word)and(1==0)and(wszywo==0)  then --RIKOSZET DISABLED 
	-- по идее при рикошете мы имеем корректные координаты, раз сработал reactammo. иначе он вообще не сработает собственно
 rikoszets=rikoszets+1;
				 if (1==0) then -- NO WORK RIKOSZET VAR 2
				  start_x=math.ceil (x_ammo)-plusx*rozmiarznak;
				 start_y=math.ceil (y_ammo)-plusy*rozmiarznak;
				 	class_ammo:new(randommove_word,start_x,start_y,start_x,start_y,start_x,start_y,true,randommove_rotate,true,0,0); 
				 smsg1="class_ammo:new("..randommove_word..","..start_x..","..start_y..",math.ceil (m_x_ammo),math.ceil (m_y_ammo),math.ceil (m_x_ammo),math.ceil (m_y_ammo),true,randommove_rotate,1,0,0); " 	
					end
	--badlyworks rikoszet kode 3 lines
	  ammo_moving=true; renderammoshot_ammos=true;typta=randommove_word ;
		realrikoszet="";
		 rotate_tt=randommove_rotate; 
			x_ammo=x_ammo-plusx*rozmiarznak;  m_x_ammo=x_ammo;-- попытка пофиксить вертикаль выключил мх.
			y_ammo=y_ammo+plusyz*rozmiarznak;  m_y_ammo=y_ammo;
		end; 
     ammoX[ammonum]:set(typta, start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets);
     rikoszets=0; 
     end --of if typta~="" 
 end
end
 -- ammo_moving, ammo_am -- указатель столкнулась ли с чем то пуля *по идее, идет ли перемещение, false если встретила персонажа или препятствие
 --персонажи или препятствия после получения вреда должны установить этот параметр и сбросить typta на ""
 --rotate_tt - на сколько градусов требуется повернуть пулю для анимации
 --renderammoshot_ammos -- требуется ли рисовать пулю на экране
  --ammofuck
-- Окончание обработки самостоятельных патрон и рикошета

-- Создание выстрела самостоятельных патрон и рикошета
if (love.keyboard.isDown("1")and (timerz>1))and love.keyboard.isDown("3")and(pause==0) then
   if (totalammo>100) then  
    totalammo=0; 
    ammoX={}; 
    selectedammoid=nil;
           huded=0;
  end

   timerz=0;
    start_ammo_x,start_ammo_y=realrandomscanobject(54,-5,1); --  scanobject 
     start_ammo_y=start_ammo_y+1;
     start_x,start_y= xgametorealpositionbezbyte (start_ammo_y,start_ammo_x); 
     
     ammo_moving=true;
     rikoszets=0;
     renderammoshot_ammos=true; 
   if (start_x>1) then 
    totalammo=totalammo+1;
 randomc=math.ceil(math.random(5));
    if (randomc==4)or (randomc==5) then ammoX[totalammo] = class_ammo:new("left",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,180,1,0,0); end;
    if (randomc==1)or (randomc==5) then ammoX[totalammo] = class_ammo:new("right",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,0,1,0,0); end;
    if (randomc==2)or (randomc==5) then ammoX[totalammo] = class_ammo:new("up",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,270,1,0,0); end;
    if (randomc==3)or (randomc==5) then ammoX[totalammo] = class_ammo:new("down",start_x,start_y,start_x,start_y,start_x,start_y,ammo_moving,90,1,0,0); end;
    smsg3="New ammoX ["..totalammo.."]: start_ammo_x="..start_ammo_x.." start_x="..start_x.." start_ammo_y="..start_ammo_y.." start_y="..start_y;
   end; 
end

-- Окончание создания выстрелов самостоятельных  патрон и рикошета

-- обработка перемещений танков, требует перевода на попиксельные координаты и заключение внутрь цикла
-- первый танк имеет ккординату x=4 (360) y=9 (760)    move переходит сюда как movePL2
function tankmove (xpla3,ypla3,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,movePL3,ammoKEYPL3,hptank,freezetanks,speedtanks,protecttanks,feartanks,typt,enemynum)
  --tankmove (xt,yt,man_xpla3,man_ypla3,tanks_mov,man_speedpla3,movePL3,ammoKEYPL3,hpt,freezetanks,speedtanks,protecttanks,feartanks); -- if love.keyboard.isDown("e")and((ammoKEYPL3~="ammo")) then end;
   xpla3,ypla3,man_xpla3,man_ypla3,tanks_mov,man_speedpla3=move_the_man(dt,xpla3,ypla3, man_xpla3, man_ypla3 ,tanks_mov,man_speedpla3);
      if (tanks_mov) then tmov=1; end
      if (tanks_mov==false ) then tmov=0; end
 allowmovepla3=1; 
  if (freezetanks>0) then allowmovepla3=0; end; 
        
   -- if (freeze==1) then allowmovepla3=0; 
     --   if (freezetimer<1) then freezetanks=0; freeze=0; end
      --  end;

  if ((ammoKEYPL3=="ammo")) then allowmovepla3=0;end;
  
   if (pause==1) then allowmovepla3=0;end;
   redirectmovepla2=0;
    
    move="undefined";
    plusxpla2=0; plusypla2=0;
    xnowpla3=xpla3;ynowpla3=ypla3; -- сохраняем настоящие текущие координаты.
    cannotmove=0;
     teleport_xpla3=0;  teleport_ypla3=0;teleport=0;
    if (typt=="tank")and(hptank<30) then cannotmove=1; end;
    if (typt=="gwozd")and(hptank<1) then cannotmove=1; end;
    if (typt=="scientist")and(hptank<1) then cannotmove=1; end;
    if ((not tanks_mov)and(allowmovepla3>0)) then
        -- обрабатываем кнопки только, если чувак не двигается уже
         if (((movePL3=="right"))and(not (ammoKEYPL3=="ammo"))and(gamex(xpla2)<mapsize_horizontal-1)) then
         movepla2="right";plusxpla2=1;rotate=180;
         zz_id_teraz=(screens (gamey (ypla3),gamex (xpla3)));-- определяем од ног
         zzz2=(screens (gamey (ypla3),gamex (xpla3)+1));-- определяем куда движется чувак
                           if (zzz2) then
                zzx2=string.byte (zzz2);
                if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum) else if (editor==0) then allowmovepla3=0; end end;
             end
        if (teleport==1)and(teleport_xpla3~=nil)  then xnowpla3=xpla3; ynowpla3=ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3=xpla3; man_ypla3=ypla3; tanks_mov=0; end; 
        if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, man_step*1, 0,xpla3,ypla3);end;
        --if (allowmovepla3==1) then smsg2=" man_is_movingpla2,"..man_xpla2..","..man_ypla2.."=do_a_step(dt, "..man_step.."*"..accelmovepla2..", 0,"..xpla2..","..ypla2..");end;"; end;         --smsg3="allowmovepla3="..allowmovepla3.." reactmove (zzx2="..zzx2..")";  -- man_is_movingpla2 is boolean  cannot be printed
        end
          -- FUCKFUCKFUCK  
        if (((movePL3=="left"))and(not (ammoKEYPL3=="ammo"))and(gamey(xpla3)>0)) then
         movepla2="left";plusxpla2=-1;rotate=0;
         zzz2=(screens (gamey (ypla3),gamex (xpla3)-1)); 
                              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum) else if (editor==0) then allowmovepla3=0; end end;
              end     
         if (teleport==1)and(teleport_xpla3~=nil)  then xnowpla3=xpla3; ynowpla3=ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3=xpla3; man_ypla3=ypla3; tanks_mov=0; end; 
         if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, -man_step*1, 0,xpla3,ypla3);end;
        end

     if (((movePL3=="down"))and(not (ammoKEYPL3=="ammo"))and(gamey(ypla3)<mapsize_vertical+20*editor)) then
         movepla2="down";plusypla2=1;rotate=270;
         zzz2=(screens (gamey (ypla3)+1,gamex (xpla3))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                    if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum) else if (editor==0) then allowmovepla3=0; end end;
              end   
        if (teleport==1)and(teleport_xpla3~=nil)  then xnowpla3=xpla3; ynowpla3=ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3=xpla3; man_ypla3=ypla3; tanks_mov=0; end; 
         if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, 0, man_step*1,xpla3,ypla3) ;end;
        end
        if (((movePL3=="up"))and(not (ammoKEYPL3=="ammo"))and(gamey(ypla3)>1)) then
         movepla2="up";plusypla2=-1; rotate=90;
         zzz2=(screens (gamey (ypla3)-1,gamex (xpla3))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                  if (cannotmove==0) then allowmovepla3,hptank,freezetanks,speedtanks,protecttanks,feartanks, teleport_xpla3, teleport_ypla3,teleport=reactmove2 (zzx2,xpla3,ypla3,hptank,allowmovepla3,plusxpla2,plusypla2,freezetanks,0,speedtanks,protecttanks,feartanks,typt, zz_id_teraz,enemynum) else if (editor==0) then allowmovepla3=0; end end;
              end   
        if (teleport==1)and(teleport_xpla3~=nil) then xnowpla3= teleport_xpla3; ynowpla3= teleport_ypla3; teleport=0;plusxpla2=0; plusypla2=0; allowmovepla3=0; man_xpla3= teleport_xpla3; man_ypla3= teleport_ypla3; tanks_mov=false; end; 
         if (allowmovepla3==1) then tanks_mov,man_xpla3,man_ypla3=do_a_step(dt, 0, -man_step*1,xpla3,ypla3);end;
        end

    end
 --конец управления танками
  if (man_xpla3<200)or (man_ypla3<200) then xpla3=xnowpla3; ypla3=ynowpla3; end; 
 -- Затычка выключена  if (allowmovepla2==1)and (man_xpla2>200)and (man_ypla2>200) then xpla2=man_xpla2; ypla2=man_ypla2; end; 
 return xpla3,ypla3,hptank,rotate,man_xpla3,man_ypla3,freezetanks,speedtanks,tanks_mov,feartanks,protecttanks;
end
    -- временный модуль для расстановки танков  fuck 

 if ((love.keyboard.isDown(".")and(editor==1)and(pause<1)))  then --отладочная , отключена.  oij
      for enemynum=1,totalenemies,1 do 
       typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks=enemies[enemynum]:get();
     end
           end;
--zzx2, II , jedzenie 

   if (flagchecknewteleportersenemy==1)and(pause==0)and(editor==0)and(renderer==1) then 
        totalenemies=0;
        enemies={};
        --smsg1="Executing flagchecknewteleportersenemy"; 
    --      xt,yt=x,y;          aaa=1;
          wsego_tank_teleporterow=scanobject (28,-2);--check player 1 start position
          wsego_scientist_teleporterow=scanobject (34,-2);--check player 1 start position
                     if (wsego_tank_teleporterow>0) then  --заблокировано чтобы не создавало танков заранее.
            for aaa=1,1,1 do 
            checkx,checky=scanobject (28,-5,aaa);--check player 1 start position
            if (checkx==-1) then smsg2="Tanks teleporters not found.";end;
            if (checkx>-1) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; 
             -- yt=checky; xt=checkx; -- 
                          end -- пока что печатаем по реальным координатам принтат. 
            if (renderer==1) then 
                    enemies[aaa] = class_enemy:new("tank",xt,yt,500,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0);  
                    totalenemies=totalenemies+1;
                    end; 
            --smsg1="a="..aaa.."class_enemy:new(tank,"..xt..","..yt..",400) wsego_tank_teleporterow="..wsego_tank_teleporterow..";";
              end
          
       flagchecknewteleportersenemy=0;
       end;
     end
     --smsg1="wsego_scientist_teleporterow="..wsego_scientist_teleporterow; 
       if (chances==nil) then chances=0; end; 

    if (timerx>90)and(wsego_tank_teleporterow>0)and(editor==0)and(renderer==1)and(pause==0) then 
          if (livedtanks==0)or (ammoKEYPL1=="placeenemy")or(livedtanks<minimumtanks)or(totalenemies<starttanks) then timerx=-20; --FUCKFUCKFUCK
            if (ammoKEYPL1=="placeenemy") then timerx=85; end; 
            if (totalenemies<starttanks) then timerx=85; end; 
              randomteleporterselect=   math.ceil (math.random (wsego_tank_teleporterow)); 
             checkx,checky=scanobject (28,-5,randomteleporterselect);
             if (chances<70) then typeobject="tank"; end; 
             if (chances>69) then typeobject="gwozd";end; 
             if (otladka==1) then smsg1="new "..typeobject..":: "..checkx..","..checky.."=scanobject (28,-5,"..randomteleporterselect..")"; end; --new tank

             if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; 
            randomget=math.ceil(math.random(8));
            if (randomget==1) then addspeed=400; else addspeed=0; end;
            if (randomget==2) then addprotect=400; else addprotect=0 ;end;
            if (randomget==3) then addfear=400; else addfear=0 ;end;
            if (randomget==4) then addslowdown=400; else addslowdown=0 ;end;
                 if (xt>0)and(yt>0) then enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,500,0,0,0,0,0,addspeed,10+addprotect,0,0,0,0,0,0,addfear,0,addslowdown,0,0,1,0,0,0); 
                   totalenemies=totalenemies+1; 
                   end --of checky==true
                 end
          end
  end
   
   if (timerx>80)and(wsego_scientist_teleporterow>0)and(scientists<1)and(editor==0)and(renderer==1)and(pause==0) or(love.keyboard.isDown("s")) then 
          if (1==1) then 
             typeobject="scientist"; 
             randomteleporterselect=   math.ceil (math.random (wsego_scientist_teleporterow)); 
             checkx,checky=scanobject (34,-5,randomteleporterselect); --16
             if (otladka==1)and(checky~=nil)and(checkx~=nil) then smsg1="new"..typeobject..":: "..checkx..","..checky.."=scanobject (34,-5,"..randomteleporterselect..")"; end;

             if (checky~=nil) then xt,yt=xgametorealpositionbezbyte (1+checky,checkx) ; 
                 if (xt>0)and(yt>0) then
                 printat (checky,checkx,"56"); 
                  enemies[totalenemies+1] = class_enemy:new(typeobject,xt,yt,150,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0); 
                   totalenemies=totalenemies+1; 
                   end --of checky==true
                 end
          end
  end


  if  (enemytank==0)and (timerz>50) then--(hardlevel==1)and
        love.audio.play (snd1) ;
        enemytank=1; hptank=3000;
        freezetimerPL2=0;slowdowntimerPL2=0;
        protecttank=300;
    checkx,checky=scanobject (17,-1);--check player 1 start position
    if (checkx>-1) then xpla2,ypla2=xgametorealpositionbezbyte (1+checky,checkx) ; end
     checkx,checky=scanobject (28,-5,randomteleporterselect);
             if (checkx~=nil)and(checkx>-1) then  xpla2,ypla2=xgametorealpositionbezbyte (1+checky,checkx) ;  end
   end
  
-- END временный модуль для расстановки танков

-- =======================================================================


-- выкладывание вещей из инвентаря Player1  , использует переменные от ammo ssss
if ((not man_is_moving2)and(not man_is_moving)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((ammoKEYPL1=="placeitem")and(hp>0)and(countinventory>0)and(editor<1)and(pause<1))) then 
            -- персонаж перемещается при выстреле льда,поправить как нибудь.  
            zzx=0;steps=0;
            y2=y; x2=x;y2now=y2; x2now=x2;
            inventoryitemtoremove=inventoryitemtable[countinventory];
            
            smsg2="inventoryitemtoremove="..inventoryitemtoremove;
            --if (inventoryitemtoremovex==nil) then inventoryitemtoremovex=inventoryitemtoremove; end; 
            if movePL1=="left" then 
            x2=x2-rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove); 
                             removeinventoryitem(countinventory);  
                           countinventory=countinventory-1; --предмет можно удалить только если он успешно поставится.

                         end;
                    end
            end; 

            --===========================
         if movePL1=="right" then 
              --love.audio.play(wystrelsnd);
            x2=x2+rozmiarznak; 
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                         removeinventoryitem(countinventory);  
                         countinventory=countinventory-1; 
                         end;
                    end
            end; 
            --=====================================
   
      if movePL1=="down" then 
                    y2=y2+rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                            removeinventoryitem(countinventory);  
                             countinventory=countinventory-1; 
                         end;
                    end
            end; 
            --=====================================
        if movePL1=="up" then 
              --love.audio.play(wystrelsnd);
                    y2=y2-rozmiarznak;
         zzz=(screens (gamey (y2),gamex (x2)));-- определяем куда движется пуля  (горизонталь влево по -1) 
                    if (zzz) then
                        zzx=string.byte (zzz);
                        if (zzx==56) then printat (gamey (y2),gamex (x2),inventoryitemtoremove);
                        removeinventoryitem(countinventory);  
                          countinventory=countinventory-1; 
                         end;
                    end
            end; 
            --=====================================
            end

end;

-- END инвентарь игрока 1


-- У всех реакций на выстрел 1 неиспр баг, если держать выстрел удаляются несколько целей

--реакция на выстрел льда  Работает на 50%
 function reactice (zzxice)
 --if (zzxice==27) then return;end; objectcode_bomb=ext_objs_param (objectcode,7);
 objectcode_ice=ext_objs_param (zzxice,8);
 damagestageid=ext_objs_param (zzxice,6); 
 if (objectcode_ice==255) then  allowshot=0; end; 
 if (objectcode_ice==nil) then objectcode_ice=0; end ; 
if (objectcode_ice>1)and(objectcode_ice<255) then  --build 4100 
     love.audio.play(iceeffectsnd);
     printat (gamey(y2)+plusy,gamex(x2)+plusx,objectcode_ice);
        allowshot=0;
         end;
 if (zzxice==124) then
 	
        by=gamey(y2);bx=gamex(x2); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       if (paralysatorrifle>0) then 
       playsoundifvisible (explodeicesnd,x2,y2); 
         explodeice (by,bx,"freezebomb");  
         end ; --printat 77 раньше выполнялось
       if (paralysatorrifle==0) then
       love.audio.play(iceeffectsnd);
        printat (gamey(y2)+plusy,gamex(x2)+plusx,"77"); end; 
             end;
 
   if (objectcode_ice==1) then 
     love.audio.play(iceeffectsnd);
     printat (gamey(y2)+plusy,gamex(x2)+plusx,"30");
        allowshot=0;
         end;
--63,113,124  => 77 
    if (zzxice==97) then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
                allowshot=0;
                end;   
    if (zzxice==98) then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
                allowshot=0;
                end;   
    if (zzxice==99) then
            --стена от ледяново выстрела мгновенно рушится. но только в упор.
            if (steps<2) then printat (gamey(y2)+plusy,gamex(x2)+plusx,"27"); end;
                allowshot=0;
                end;   



end




--реакция на выстрел пули  игрока 2 Работает на 100%  является копией reactammo , также как и reactmove2 - копия reactmove
--zzx3ammo,x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,"cannons"
function reactammo2 (zzx2ammo,x2pla2am,y2pla2am,allowshotpla2,ammoiconpla2,speedtimerpla2)
  --smsg3="really we get reactammo2 ("..zzx2ammo..","..x2pla2am..","..y2pla2am..",allowshotpla2,ammoiconpla2)";
 realrikoszet=0; 
 objectcode_ammo=ext_objs_param (zzx2ammo,10);
 damagestageid=ext_objs_param (zzx2ammo,6);
 if (objectcode_ammo==255) then  allowshotpla2=0; end; 
 if (damagestageid~=nil)and(damagestageid>0) then allowshotpla2=0; end; 
    chancesitem=ext_objs_param (zzx2ammo,11);
    if (chancesitem==nil) then chancesitem=0; end; 
    if (speedtimerpla2>0) then damager=1; else damager=0; end 
  realrikoszet=ext_objs_string (zzx2ammo,20);
  if (realrikoszet==nil) then realrikoszet=0; end; 

chancesyou=(math.random(67+20*damager)); -- chances attack	
    chancesrandomsound=math.random(70);

   --if (zzx2ammo==27) then return allowshotpla2,ammoiconpla2 ;end; -- ???  3799 ошибка  y2pla2am  может быть из за этого? 
    if (ammoiconpla2=="cannons") then plusx=0; plusy=0; 
    end;
    if (ammoiconpla2=="left") then plusx=-1; end
    if (ammoiconpla2=="right") then  plusx=1; end
    if (ammoiconpla2=="up") then  plusy=-1; end
    if (ammoiconpla2=="down") then plusy=1; end

    if (zzx2ammo==63) then 
     --love.audio.play(ammotobadtargetsnd);
                  allowshotpla2=0;
         end;
    if (zzx2ammo==147) then 
      playrandombrokensound (50);
    end

   -- это задаёт реакцию по умолчанию на выстрел , если указан код 1 значит предмет разрушаемый  и разрушать его надо по damagestage
    if ((damagestageid~=nil)and(damagestageid<255)) then  --(objectcode_ammo==1)and
       if (chancesitem<chancesyou) then  
              if (zzx2ammo<97)or(zzx2ammo>99)then   playrandombrokensound (chancesrandomsound,x2pla2am,y2pla2am);end;
              if (zzx2ammo>96)and(zzx2ammo<101)then playsoundifvisible(ammotobadtargetsnd,x2pla2am,y2pla2am); end
              printat (gamey(y2pla2am),gamex(x2pla2am),damagestageid); end ; 
           allowshotpla2=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
         end;


              if (zzx2ammo==71) then 
      playsoundifvisible(bombsnd,x2pla2am,y2pla2am);
             printat (gamey(y2pla2am),gamex(x2pla2am),"27");
             printat (gamey(y2pla2am)+plusy,gamex(x2pla2am)+plusx,"27");
                          allowshotpla2=0;
         end;

      if (zzx2ammo==75) then 
                 playrandombrokensound (chancesrandomsound,x2pla2am,y2pla2am);
            end;
       
           if (zzx2ammo==124) then 
        playsoundifvisible(bombsnd,x2pla2am,y2pla2am);
        by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx,"");
       allowshotpla2=0;
       end;

     if ((zzx2ammo==58)and(chances>35)or(zzx2ammo==59)) then 
       playsoundifvisible(bombsnd,x2pla2am,y2pla2am);
        by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx,"");
       allowshotpla2=0;
       end;

       if ((zzx2ammo==61)and(chances>35)) then 
       playsoundifvisible(explodeicesnd,x2pla2am,y2pla2am);
        by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodeice (by,bx,"freezebomb");
       allowshotpla2=0;
       end;

      -- в усложнённом уровне танк может уничтожать цели основного игрока портя ему прохождение.
    if ((zzx2ammo==122)or(zzx2ammo==123)) then  -- в дружественном режиме танк может помогать ему.
     love.audio.play(ammobrokeitemortargetsnd);
     if (poziom==0)and(hardlevel~=1) then targetremains=targetremains-1;end;-- при базовом уровне сложности счет идёт игроку 1.
             printat (gamey(y2pla2am),gamex(x2pla2am),"27");
        allowshotpla2=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
     
     end

   if (zzx2ammo==76) then 
     playsoundifvisible (ammotobadtargetsnd,x2pla2am,y2pla2am);
         --hptank=hptank-1;
         end;
  
    if (zzx2ammo==114)or (zzx2ammo==120)or(zzx2ammo==131)  then 
       playrandombrokensound (chancesrandomsound,x2pla2am,y2pla2am);
        end;

if  (y2pla2am==nil) then y2pla2am=0; end -- затычка от ошибки 3807 global y2pla2am == nil !!!! 
if  (x2pla2am==nil) then x2pla2am=0; end -- затычка от ошибки 3807 global y2pla2am == nil !!!! 

return allowshotpla2,realrikoszet;
end
-- обработка выстрелов игрока 2 s


--нужно отправить реальные координаты карты в визуальные и обратно.
function reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3) 
   x3pla2amrealtovisual,y3pla2amrealtovisual= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
   y3pla2amrealtovisual=y3pla2amrealtovisual+rozmiarznak;
   --gytest=0*gamey(x3pla2amrealtovisual); gxtest=0*gamex(y3pla2amrealtovisual);
   --smsg1="gy="..gytest.."gx="..gxtest.." Y3xX3="..y3pla2amrealtovisual..","..x3pla2amrealtovisual.."= xgametorealpositionbezbyte ("..x3pla2am..","..y3pla2am..");";
  allowshotpla3=reactammo2 (zzx3ammo,x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,"cannons",0); --x3pla2am,y3pla2am,
  --smsg2=allowshotpla3.."=reactammo2 ("..zzx3ammo..",x3pla2amrealtovisual,y3pla2amrealtovisual,allowshotpla3,);";
  return allowshotpla3; --gamex(x3pla2am),gamey(y3pla2am),
      --by=gamey(y2pla2am);bx=gamex(x2pla2am); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
end

--реакция на выстрел пули  игрока 3  является копией reactammo2  
--работает только с знакоместными координатами а не преобразует реальные в знакоместные через gamex/gamey 

function playrandombrokensound (chances,xt,yt) 
  if (xt==nil)and(yt==nil) then xtt=x; ytt=y else xtt=xt; ytt=yt; end; 
     if (chances>50) then playsoundifvisible (broken1,xtt,ytt); return; end;
     if (chances>40) then playsoundifvisible (broken2,xtt,ytt); return; end;
     if (chances>30) then playsoundifvisible (broken3,xtt,ytt); return; end;
     if (chances>20) then playsoundifvisible (broken4,xtt,ytt); return; end;
     if (chances>10) then playsoundifvisible (broken5,xtt,ytt); return; end;
     end
     

     --function playrandombrokensoundifvisible (chances,xt,yt) 

--1 копия блока выстрела
--2 новая функция - выпустить патрон из точки а в точку б
--новые пули должны добавлятся в массив.     длолодло
-- ammo_am обьект 54 язык - пусть он для примера пока стреляет.kkkддддд

--реакция на выстрел пули  Работает на 100%
function reactammo (zzxammo)
  objectcode_ammo=ext_objs_param (zzxammo,9);
  damagestageid=ext_objs_param (zzxammo,6);
    chancesitem=ext_objs_param (zzxammo,11); --chancesitem
  if (chancesitem==nil) then chancesitem=0;end; 
 if (speedtimer>0) then damager=1; else damager=0; end 
 if (objectcode_ammo==255) then  allowshot=0; end; 
 if (damagestageid~=nil)and(damagestageid>0) then  allowshot=0; end; 
   realrikoszet=ext_objs_param (zzxammo,18);
    if (realrikoszet==nil) then realrikoszet=0; end; 

if (realrikoszet==1) then 
end 
 -- есть подозрение что plusx  i plusy  не помогают а лишь добавляют баг с случайным разрушением некоторых обьектов.
 -- по вызову функции приходит левое значение plusx i plusy. оно было удалено кроме функций где действовтаь через клетку.
    if (ammoicon=="left") then plusx=-1; end
    if (ammoicon=="right") then plusx=1; end
    if (ammoicon=="up") then plusy=-1; end
    if (ammoicon=="down") then plusy=1; end
    
    chancesrandomsound=math.random(70);
    chancesyou=(math.random(54+17*tank+3*protect+10*damager)); -- chances attack

  -- это задаёт реакцию по умолчанию на выстрел , если указан код 1 значит предмет разрушаемый  и разрушать его надо по damagestage
    if ((damagestageid~=nil)and(damagestageid<255)) then --(objectcode_ammo==1)and
        if (chancesitem<chancesyou) then 
          if (zzxammo<97)or(zzxammo>99)then   playrandombrokensound (chancesrandomsound);end;
          if (zzxammo>96)and(zzxammo<101)then  love.audio.play(ammotobadtargetsnd); end
            printat (gamey(y2),gamex(x2),damagestageid); end; 
           
        allowshot=0;-- при попадании в любую цель пуля должна остановится, иначе она будет лететь дальше.
         end;

          if (zzxammo==71) then 
     love.audio.play(bombsnd);
             printat (gamey(y2),gamex(x2),"27");
             printat (gamey(y2)+plusy,gamex(x2)+plusx,"27");
                          allowshot=0;
         end;

     if (zzxammo==22) then 
     love.audio.play(ammotobadtargetsnd);
             printat (gamey(y2),gamex(x2),ext_objs_param (zzxammo,9));
                          allowshot=0;
         end;

     if (zzxammo==124) then 
       love.audio.play(bombsnd);
        by=gamey(y2);bx=gamex(x2); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       if (speedtimer>0) then explodebomb (by,bx,"damage"); end; -- просто сука не работает одна из бомб начинает наносить бесконечный вред ВСЕМ танкам кто вьедет в определенную клетку.
        if (speedtimer<1) then explodebomb (by,bx,""); end;
		--explodebomb (by,bx,"");
       allowshot=0;
       end;

     if ((zzxammo==58)and(chances>35)or(zzxammo==59)) then 
       love.audio.play(bombsnd);
        by=gamey(y2);bx=gamex(x2); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodebomb (by,bx,"");
       allowshot=0;
       end;
if ((zzxammo==61)and(chances>35)) then 
     playsoundifvisible (explodeicesnd,x,y); 
        by=gamey(y2);bx=gamex(x2); --для выстрела 1 и 2 и наступания назначаются bx i by - коорд бомбы.
       explodeice (by,bx,"freezebomb");
       allowshot=0;
       end;

 if (zzxammo==76) then 
    love.audio.play(ammotobadtargetsnd);
      if (protect<1) then  hp=hp-1; if (tank<1) then hp=hp-3; end; end; 
        allowshot=0;
         end;
  if (zzxammo==133)or(zzxammo==134) then 
    love.audio.play(ammotobadtargetsnd);
      hp=hp-1; if (tank<1) then hp=hp-3; end;
        allowshot=0;
         end;

         

 if (zzxammo==77) then 
     love.audio.play(ammotobadtargetsnd); 
       hp=hp-1;
                       allowshot=0;
         end;
 if (zzxammo==78) then 
     love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;

  if (zzxammo==75) then 
     playrandombrokensound (70);
      printat (gamey(y2),gamex(x2),"96");
                  allowshot=0;
         end;
  if (zzxammo==96) then 
     love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;


  if (zzxammo==63) then 
     --love.audio.play(ammotobadtargetsnd);
                  allowshot=0;
         end;

 if (zzxammo==135) then 
     playrandombrokensound (50);
             printat (gamey(y2),gamex(x2),"132");
                          allowshot=0;  
         end;

 if (zzxammo==140) then 
     playrandombrokensound (50);
             printat (gamey(y2),gamex(x2),"132");
                          allowshot=0;
         end;




    if (zzxammo==123) then 

      zzblock=string.byte (screens (gamey(y2)+plusx,gamex(x2)+plusy));
                if (zzblock==56) then 
                    printat (gamey(y2),gamex(x2),"56");
                    printat (gamey(y2)+plusx,gamex(x2)+plusy,zzxammo);
                end
                if (zzblock~=56)and(zzxammo==123) then 
                  love.audio.play(ammobrokeitemortargetsnd); 
                  targetremains=targetremains-1;
                  score=score+10;
                    printat (gamey(y2),gamex(x2),"27");
                   allowshot=0;
                end
    end
    

     if (zzxammo==122) then 
    love.audio.play(ammobrokeitemortargetsnd); targetremains=targetremains-1;
            score=score+10;
             printat (gamey(y2),gamex(x2),"27");
             allowshot=0;
         end;

    if (zzxammo==120) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y2),gamex(x2),"118");
                        allowshot=0;
    end 
 if (zzxammo==131) then
     love.audio.play(switchmsnd);
                allowmove=0; 
           printat (gamey(y2),gamex(x2),"118");
                        allowshot=0;
    end 
return allowshot,rikoszet;
end
-- окончание обработки выстрелов игрок 2

ossys=love.system.getOS()

   randommove_word=math.ceil(math.random(4));
    if (randommove_word==4) then randommove_word="up"; end 
    if (randommove_word==3) then randommove_word="down"; end 
    if (randommove_word==2) then randommove_word="left"; end 
    if (randommove_word==1) then randommove_word="right"; end 

-- слой для переопределения клавиш для разных ОС. и возможности их легкого переопределения.
if (ossys=="Linux")or(ossys=="Windows") then 
    movePL1="";
    if (player2AI==0)or(editor==1) then movePL2=""; end
    if (renderer==1) then ammoKEYPL1=""; end  -- пытаюсь устранить баг в Андроид - не выбираются пункты меню!!!1655 добавил IF
    if (player2AI==0)or(editor==1) then ammoKEYPL2=""; end; 
   if love.keyboard.isDown("right") then movePL1="right";lastmovePL1=movePL1; end;
   if love.keyboard.isDown("left") then movePL1="left";lastmovePL1=movePL1; end;
   if love.keyboard.isDown("up") then movePL1="up";lastmovePL1=movePL1; end;
   if love.keyboard.isDown("down") then movePL1="down";lastmovePL1=movePL1; end;
    if (feartimerPL1>0)and(editor==0) then movePL1=randommove_word; end 
    if (new_x_block_fix~="") then movePL1=new_x_block_fix; end
    if (hardened_ammo_get~="") then movePL1=hardened_ammo_get; end

  if love.keyboard.isDown("lshift") then ammoKEYPL1="ammo" end;
   if love.keyboard.isDown("p") then ammoKEYPL1="p"; camerakey="p"; end; --camera move keys
   if love.keyboard.isDown("[") then ammoKEYPL1="["; camerakey="["; end;
   if love.keyboard.isDown("]") then ammoKEYPL1="]"; camerakey="]"; end;
   if love.keyboard.isDown(";") then ammoKEYPL1=";"; camerakey=";"; end;
   if ((love.keyboard.isDown("lgui"))or (love.keyboard.isDown("capslock"))) then ammoKEYPL1="ice" end;
   if love.keyboard.isDown("z") then ammoKEYPL1="bomb" end;
   if love.keyboard.isDown("u") then ammoKEYPL1="unpack" end;
   if love.keyboard.isDown("x") then ammoKEYPL1="placeitem" end;
   if love.keyboard.isDown("c") then ammoKEYPL1="selectitem" end;
   if love.keyboard.isDown("v") then ammoKEYPL1="prifle" end;
   if love.keyboard.isDown("b") then ammoKEYPL1="antitankmissileuse" end; -- Используется для отработки мультиинстансных танков. Требует Prifle
   if love.keyboard.isDown(",") then ammoKEYPL1="placeenemy" end;  -- Используется для отработки мультиинстансных танков.
   if love.keyboard.isDown("f5") then ammoKEYPL1="savegame" end;
   if love.keyboard.isDown("kp0") then ammoKEYPL2="ammo" end;
   if love.keyboard.isDown("kp6") then movePL2="right";lastmovePL2=movePL2;  end;
   if love.keyboard.isDown("kp4") then movePL2="left";lastmovePL2=movePL2;  end;
   if love.keyboard.isDown("kp8") then movePL2="up";lastmovePL2=movePL2;  end;
   if love.keyboard.isDown("kp5") then movePL2="down";lastmovePL2=movePL2;  end;
   
    end

if (ossys=="Android") then 
 --Look  touchmoved section
   if love.keyboard.isDown("kp0") then ammoKEYPL2="ammo" end;
end


if (ossys=="ios") then 
    print ("");
end
-- перемещение Player 1  , если не стреляет.s
    --move_the_man(dt);
    x,y,man_x,man_y,man_is_moving,man_speed=move_the_man(dt,x,y, man_x, man_y ,man_is_moving,man_speed);
    allowmove=1;


    if (freezetimerPL1>0)and(editor==0) then allowmove=0;
                if (freezetimerPL1<1) then freezetimerPL1=0; end
                end;

   if (damagetimerPL1>0)and(editor==0) then 
    if (protect<1) then hp=hp-1; end; 
    if (poziom>0) then hp=hp-1; end; 
    if (hardlevel>0) then hp=hp-1;end ;
      end;

  --test

    

    
-- Бонус уровни при смерти перебрасывают в следующий уровень.
    if ((hardlevel==2)and(hp<1)and(lives<1)) then 
     levelnumber=levelnumber+1; -- никаких бонусных очков за смерть в бонус уровне!
    love.load ();
  end



 if (pause==1) then allowmove=0;end;
   redirectmove=0;
    accelmove=1;
    move="undefined";
    plusx=0; plusy=0;
    xnow=x;ynow=y;
    
    if not man_is_moving then
      objectpodnogami=string.byte (screens (gamey (y),gamex (x)));  -- реализация автоходьбы по стрелкам.
      if (editor==0) then if (objectpodnogami==0) then movePL1="left"; end;
                        if (objectpodnogami==1) then movePL1="right"; end;
                        if (objectpodnogami==2) then movePL1="up"; end;
                        if (objectpodnogami==3) then movePL1="down"; end;
                        end
        -- обрабатываем кнопки только, если чувак не двигается уже
         if ((movePL1=="right")and(ammoKEYPL1=="")and (gamex(x)<mapsize_horizontal-1)) then
        if (tank>0) then playertank=tankright;end;
         move="right";plusx=1;
         zzz=(screens (gamey (y),gamex (x)+1));-- определяем куда движется чувак
                if (express==1) then zzzdown=string.byte(screens (gamey (y)+1,gamex (x)+1));-- определяем куда движется чувак
                if (zzzdown<125) then allowmove=0; end;

                end
                
             if (zzz) then
                zzx=string.byte (zzz);
                --if (editor==0) then if (objectpodnogami==0)or(objectpodnogami==2)or(objectpodnogami==3) then allowmove=0;plusx=0;end; end;
                   if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
             end
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, man_step*accelmove, 0,x,y);end;
        end

        if ((movePL1=="left")and(ammoKEYPL1=="")and (gamex(x)>0)) then
        if (tank>0) then playertank=tankleft;end;
         move="left";plusx=-1;
         zzz=(screens (gamey (y),gamex (x)-1)); 
                if (express==1) then zzzdown=string.byte (screens (gamey (y)+1,gamex (x)-1)); 
                if (zzzdown<125) then allowmove=0; end;
                end
        
              if (zzz) then 
                   zzx=string.byte (zzz);
                  --if (editor==0) then if (objectpodnogami==1)or(objectpodnogami==2)or(objectpodnogami==3) then allowmove=0;plusx=0;end; end;
                   if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
              end     
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, -man_step*accelmove, 0,x,y);end;
        end

     if (((movePL1=="down"))and(ammoKEYPL1=="")and (gamey(y)<mapsize_vertical+21*editor)) then
        if (express==1) then allowmove=0; end;
        if (tank>0) then playertank=tankdown;end
         move="down";plusy=1;
         zzz=(screens (gamey (y)+1,gamex (x))); 
         
              if (zzz) then 
                   zzx=string.byte (zzz);
                  -- if (zzx==0)or(zzx==1)or(zzx==2) then allowmove=0;end;
                   if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
              end   
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, 0, man_step*accelmove,x,y) ;end;
        end
        if ((movePL1=="up")and(ammoKEYPL1=="")and (gamey(y)>1)) then
        if (express==1) then allowmove=0;end;
        if (tank>0) then playertank=tankup;end;
         move="up";plusy=-1;
         zzz=(screens (gamey (y)-1,gamex (x))); 
         
              if (zzz) then 
                   zzx=string.byte (zzz);
                  -- if (zzx==0)or(zzx==1)or(zzx==3) then allowmove=0;end;
                    if  (hp>0) then reactmove (zzx) else if (editor==0) then allowmove=0; end end;
              end   
        if (allowmove==1) then man_is_moving,man_x,man_y=do_a_step(dt, 0, -man_step*accelmove,x,y);end;
        end

 
        

    end
 --Конец управления первым персонажем.


--начало управления вторым персонажем  
   -- для танка добавить кнопочку разрешающую брать или не брать вещи. ыыы
--move_the_manpla2(dt); 
xpla2,ypla2,man_xpla2,man_ypla2,man_is_movingpla2,man_speedpla2=move_the_man(dt,xpla2,ypla2, man_xpla2, man_ypla2 ,man_is_movingpla2,man_speedpla2)

 allowmovepla2=1; 
 if (freezetimerPL2>0)and(editor==0) then allowmovepla2=0; 
        if (freezetimerPL2<1) then freezetimerPL2=0; --freeze=0;
         end
        end;
  
if (freezetimerPL2>0)and(editor==0) then allowmovepla2=0; end; 
if ((ammoKEYPL2=="ammo")and(editor==0)) then allowmovepla2=0;end;
  --   если это поствавить то почему то у танка только один выстрел какого то. ..  НЕ СДЕЛАНО 
   if (pause==1) then allowmovepla2=0;end;
   redirectmovepla2=0;
    accelmovepla2=1;
    move="undefined";
    plusxpla2=0; plusypla2=0;
    xnowpla2=xpla2;ynowpla2=ypla2;
    
    if ((not man_is_movingpla2)and(allowmovepla2>0)) then
        -- обрабатываем кнопки только, если чувак не двигается уже
         if (((movePL2=="right"))and(not (ammoKEYPL2=="ammo"))and(gamex(xpla2)<mapsize_horizontal-1)) then
        if (enemytank>0) then player2tank=tankright; player2tank=180 ; end;
         movepla2="right";plusxpla2=1;
          zz_id_teraz=(screens (gamey (ypla2),gamex (xpla2)));-- определяем од ног
         zzz2=(screens (gamey (ypla2),gamex (xpla2)+1));-- определяем куда движется чувак
                           if (zzz2) then
                zzx2=string.byte (zzz2);
                   allowmovepla2,hptank,freezetimerPL2,speedtimerpla2,protecttank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezetimerPL2,man_speedpla2,speedtimerpla2,protecttank,0,"btank", zz_id_teraz);
             end
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, man_step*accelmovepla2, 0,xpla2,ypla2);end;
        end

        if (((movePL2=="left"))and(not (ammoKEYPL2=="ammo"))and(gamey(xpla2)>0)) then
        if (enemytank>0) then player2tank=tankleft; player2tank=0; end;
         movepla2="left";plusxpla2=-1;
         zzz2=(screens (gamey (ypla2),gamex (xpla2)-1)); 
                              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                   allowmovepla2,hptank,freezetimerPL2,speedtimerpla2,protecttank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezetimerPL2,man_speedpla2,speedtimerpla2,protecttank,0,"btank", zz_id_teraz);
              end     
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, -man_step*accelmovepla2, 0,xpla2,ypla2);end;
        end

     if (((movePL2=="down"))and(not (ammoKEYPL2=="ammo"))and(gamey(ypla2)<mapsize_vertical+20*editor)) then
        if (enemytank>0) then player2tank=tankdown;player2tank=270; end
         movepla2="down";plusypla2=1;
         zzz2=(screens (gamey (ypla2)+1,gamex (xpla2))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                    allowmovepla2,hptank,freezetimerPL2,speedtimerpla2,protecttank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezetimerPL2,man_speedpla2,speedtimerpla2,protecttank,0,"btank", zz_id_teraz);
              end   
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, 0, man_step*accelmovepla2,xpla2,ypla2) ;end;
        end
        if (((movePL2=="up"))and(not (ammoKEYPL2=="ammo"))and(gamey(ypla2)>1)) then
        if (enemytank>0) then player2tank=tankup;player2tank=90; end;
         movepla2="up";plusypla2=-1;
         zzz2=(screens (gamey (ypla2)-1,gamex (xpla2))); 
              if (zzz2) then 
                   zzx2=string.byte (zzz2);
                     allowmovepla2,hptank,freezetimerPL2,speedtimerpla2,protecttank=reactmove2 (zzx2,xpla2,ypla2,hptank,allowmovepla2,plusxpla2,plusypla2,freezetimerPL2,man_speedpla2,speedtimerpla2,protecttank,0,"btank", zz_id_teraz);
              end   
        if (allowmovepla2==1) then man_is_movingpla2,man_xpla2,man_ypla2=do_a_step(dt, 0, -man_step*accelmovepla2,xpla2,ypla2);end;
        end

      
            if (editor==1) then  --управление рисованием в редакторе
                  
                
                end

    end
 --конец управления вторым персонажем.


   function getpath () 
    return arg[1]:gsub('\\', '/'):match'(.-/)'
  end

  function standardowecoordfix (x_f,y_f) 
	  gluckcheckY=gamey (y_f); gluckcheckYYY=math.ceil(gluckcheckY);
      gluckcheckX=gamex (x_f)-1; gluckcheckXXX=math.ceil(gluckcheckX);
      if (gluckcheckX~=gluckcheckXXX)or(gluckcheckY~=gluckcheckYYY) then 
      x_f,y_f= xgametorealpositionbezbyte (gluckcheckYYY,gluckcheckXXX); 
      --smsg1="G x:"..gluckcheckX.." () Y="..gluckcheckY.."";
      return x_f,y_f ;
  end
end
 --работа в редакторе 
if (editor==1) then

    if (ammoKEYPL2=="ammo") then   --ИГНОРИРУЕТ НАЖАТие!!!!!ыы
          printat (gamey (ypla2),gamex (xpla2), selectedobject);
          end
                    if love.keyboard.isDown("rshift") then 
                    printat (gamey (ypla2),gamex (xpla2), selectedobject);
                    
                    end
                    if love.keyboard.isDown("kp9") then  -- базовые функции редактора
                       ypla2=(1)*rozmiarznak;xpla2=240+(1)*rozmiarznak; 
                    
                    end

  if love.mouse.isDown("1")then 
  	mysz_x, mysz_y = love.mouse.getPosition( );
  	my=math.ceil (gamey (mysz_y)-1); mx=math.ceil (gamex (mysz_x)-1);
  	paintmou=0;camerakey="";
  	if (mx-cameraleftpos_x_hor<visual_mapsize_horizontal) and (mx+cameraleftpos_x_hor>-1) then paintmou=1; end 
  	if (my-camerauppos_y_vert<visual_mapsize_vertical) and (my+camerauppos_y_vert>-1) then paintmou=1; end 
  	if (mx-cameraleftpos_x_hor<0) then camerakey="["; end; 
  	if (mx-cameraleftpos_x_hor+1>visual_mapsize_horizontal) then camerakey="]"; end; 
  	if (my-camerauppos_y_vert<1) then camerakey="p"; end; 
  	if (my-camerauppos_y_vert>visual_mapsize_vertical) then camerakey=";"; end; 
  	--smsg1= ("mouse paint mx="..mx.." c"..cameraleftpos_x_hor.."(ma="..visual_mapsize_horizontal..") my="..my.." c"..camerauppos_y_vert.."(ma="..visual_mapsize_vertical..") Object 1 taken");
    if (paintmou==1)and(camerakey=="") then  printat (my,mx, selectedobject);  paintmou=0;end;
      end

 if love.mouse.isDown("4")then 
  	mysz_x, mysz_y = love.mouse.getPosition( );
  	my=mysz_y; mx=mysz_x;
    printat (math.ceil (gamey (my)-1),math.ceil (gamex (mx)-1), selectedobject2);
      end


if love.mouse.isDown("2") then
  mysz_x, mysz_y = love.mouse.getPosition( );
   my=mysz_y; mx=mysz_x;
    selectedobject=string.byte (screens (math.ceil (gamey (my)-1),math.ceil (gamex (mx)-1)));
        smsg1= ("Object 1 taken");
end
     

if love.mouse.isDown("3") then --Поправка координаты для сетки. Образец. Использование. fix coord error
  mysz_x, mysz_y = love.mouse.getPosition( );
    x,y=standardowecoordfix (mysz_x,mysz_y) 
end




    if love.keyboard.isDown("2")or(ammoKEYPL1=="bomb") then 
    	huded=2;
        selectedobject=string.byte (screens (gamey (y),gamex (x)));
        --printat (24+maximumvertical,30,(selectedobject));
        smsg1= ("Object 1 taken");
    end

    if love.keyboard.isDown("3")or(ammoKEYPL1=="walk") then 
        selectedobject2=string.byte (screens (gamey (y),gamex (x)));
        --printat (24+maximumvertical,31,selectedobject2);
        smsg1= ("Object 2 taken");
    end


    if love.keyboard.isDown("f6")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl")) then 
       xdata_copy={};
       xdata_copy=clone (xdata);
        xdataarchived=1;
    end

    if (xdataarchived==1)and(love.keyboard.isDown("f7")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl"))) then
        xdata=clone (xdata_copy);
    end

       
    if love.keyboard.isDown("end") then 
         if (levelnumber<200) then levelnumber=levelnumber+1; end;
      levelname="Levels/LEVEL"..levelnumber..".$C";  
     end;     

      if love.keyboard.isDown("e")then 
      ammokeyPL1="loadexternallevel";
    end

     if love.keyboard.isDown("f8")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl")) or(ammokeyPL1=="loadexternallevel") then
        love.load()
        smsg1= ("Loading selected level.");
    end 

   

  --эту функцию потом вернуть в редактор!!!   чуток ниже.
   if love.keyboard.isDown("f5")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl"))   then 
      pathtosavemap=love.filesystem.getSourceBaseDirectory().."/Levels/LEVEL"..levelnumber..".$C";
      -- в этом месте в уровень надо передать коды уровня + всех параметров в формате RESKUE включая новые.
      -- важно всего 4 места для загрузки и передачи параметров, но для сохранения и карты они немного различаются
      -- и не могут быть просто скопированы целиком.
    xdata[55623]=string.char (greenshitdelay);
    xdata[55624]=string.char (darkzone);
    xdata[55625]=string.char (gamey(y)+1);
    xdata[55626]=string.char (gamex(x)); 
    xdata[55631]=string.char (bombs);
    xdata[55632]=string.char (ice);
    xdata[55633]=string.char (lives); 
    xdata[55634]=string.char (0);-- количество уничтоженных танков, в карте прописыватся не должно и не должно загружатся НЕ из сохранения
    xdata[55635]=string.char (ammo);
    xdata[55637]=string.char (keys);-- keys вместо бонуса за уровень
    xdata[55638]=string.char (targetremains); 
    if (gamex(xpla2)<mapsize_horizontal)and(gamey(ypla2)<mapsize_horizontal) then xdata[55640]=string.char (math.ceil(gamex(xpla2))); 
      xdata[55639]=string.char (math.ceil(1+gamey(ypla2))); end
    xdata[55646]=string.char (powerstate);--БУГ  sost lazerow
    xdata[55647]=string.char (0);  -- не для карты ! инвентарь 5 tx координаты телепортов сохранять ненадо. есть маркер. билд 4000. 
    xdata[55648]=string.char (0);  -- не для карты ! инвентарь 6 ty
    xdata[55649]=string.char (water); 
     xdata[55653]=string.char (tank);
     xdata[55654]=string.char (protect);
     xdata[55655]=string.char (reservedaids);
     xdata[55656]=string.char (puszkistate);
      --SAVE GAME  дополнительные параметры - повторно использовать всё для F5
       xdata[55622]=string.char (greenshithastetime);
       xdata[55621]=string.char (seed);
       xdata[55620]=string.char (paralysatorrifle);
       xdata[55610]=string.char (enemytank);
       xdata[55611]=string.char (starttanks);
      xdata[55612]=string.char (hardlevel);
        xdata[55614]=string.char (minimumtanks);
        xdata[55619]=string.char (paralysatorammo);
   --inventorybelt 55613 НЕ записывается в код карты. 

      writeMAP(pathtosavemap,xdata); 
        smsg1="Map "..levelnumber.." saved to "..pathtosavemap; 
    end 
-- конец функции 

     if love.keyboard.isDown("f10") then
        menu=3;renderer=0;
              

     end 

   

     if (love.keyboard.isDown("escape")and (menu==3)and(timerz>5))then
        menu=0; renderer=1
     end

    if love.keyboard.isDown("f11")and not (love.keyboard.isDown("lshift")) and not (love.keyboard.isDown("lctrl")) then  -- remove all class of enemies
       enemies={};
       totalenemies=0;
       wsego_tank_teleporterow=0;
       livedtanks=0;
       selectedtankid=nil;
       huded=0;
    end


    if love.keyboard.isDown("home") then   
        if (levelnumber>2) then levelnumber=levelnumber-1; end;
      levelname="Levels/LEVEL"..levelnumber..".$C";  
     smsg1= ("Loading...");
    end

               --управление рисованием в редакторе
                    if love.keyboard.isDown("1")or(ammoKEYPL1=="paint")and(editorcallselectobject==0) then  -- базовые функции редактора
                    printat (gamey (y),gamex (x), selectedobject);
                      if (selectedobject==135) then -- Редактор:: Многоклеточные обьекты как стальные двери теперь печатаются сразу целиком (все 3 обьекта разом)
                        printat (gamey (y)+1,gamex (x), 133);
                        printat (gamey (y)+2,gamex (x), 134);
                      end
                       if (selectedobject==141) then -- Редактор:: Многоклеточные обьекты как стальные двери теперь печатаются сразу целиком (все 3 обьекта разом)
                        printat (gamey (y),gamex (x)+1, 28);
                        printat (gamey (y),gamex (x)+2, 142);
                      end
                    end
       

                if (ammoKEYPL1=="ice")and(editorcallselectobject==0) then  
                    printat (gamey (y),gamex (x), selectedobject2);
                    end
                if (ammoKEYPL1=="ammo")and(editorcallselectobject==0) then  
                    printat (gamey (y),gamex (x), selectedobject);
                    end

         if love.keyboard.isDown("5")and(xdataarchived==1) then  -- 
         	 selectedobject=string.byte (screensq (gamey (y),gamex (x)));
                    printat (gamey (y),gamex (x), selectedobject);
                end
        if love.keyboard.isDown("6")then  -- 
         	 qe=selectedobject2;
               selectedobject2=selectedobject
               selectedobject=qe;
                end

 --управление рисованием в редакторе
                    if love.keyboard.isDown("4") then  -- базовые функции редактора
                    printat (gamey (ypla2),gamex (xpla2), selectedobject);
                    
                    end
     --управление рисованием в редакторе
                    if love.keyboard.isDown("q")then  -- базовые функции редактора
                    printat (gamey (y),gamex (x), selectedobject2);
                    
                    end            
         --закраска

    if love.keyboard.isDown("f3") and love.keyboard.isDown("lctrl")then  
    	huded=0;
    end
        if love.keyboard.isDown("f4") and love.keyboard.isDown("lctrl")then  
    	huded=1;
    end
        if love.keyboard.isDown("f5") and love.keyboard.isDown("lctrl")and (selectedtankid>0) then  
    	huded=3;
    end
         if love.keyboard.isDown("f6") and love.keyboard.isDown("lctrl") then  
    	huded=2;
    end

    if love.keyboard.isDown("f2") and love.keyboard.isDown("lshift")then  
        for b=gamey(y),gamey(ypla2),1 do 
         for a=gamex(x),gamex(xpla2),1 do
               printat (b,a,(selectedobject));
           end
       end
       smsg1= ("Fill completed");
   end
      --закраска2
    if love.keyboard.isDown("f3") and love.keyboard.isDown("lshift") then 
        for b=gamey(y),gamey(ypla2),1 do 
         for a=gamex(x),gamex(xpla2),1 do
               printat (b,a,(selectedobject2));
           end
       end
       smsg1= ("Fill completed");
   end

       --замена
    if love.keyboard.isDown("7") then  
        for b=gamey(y),gamey(ypla2),1 do 
         for a=gamex(x),gamex(xpla2),1 do
              c=string.byte(screens (b,a));
              if ((c==selectedobject2)) then printat (b,a,(selectedobject)); end
           end
       end
       smsg1= ("Exchange completed");
    end
        --замена2
    if love.keyboard.isDown("8") then 
        for b=gamey(y),gamey(ypla2),1 do 
         for a=gamex(x),gamex(xpla2),1 do
              c=string.byte(screens (b,a));
              if ((c==selectedobject)) then printat (b,a,(selectedobject2)); end
           end
       end
       smsg1= ("Exchange completed");
    end
    
    if love.keyboard.isDown("9") then 
    skanx,skany=scanobject (selectedobject,-1) ;
     smsg1= ("Object Found: X="..skanx.." Y="..skany);-- skanx="..skanx.."skany=="..skany);
    if (skanx~=-1) then 
     -- декодирование без string byte! 
         x=240+(skanx)*rozmiarznak+rozmiarznak; 
    y=(skany)*rozmiarznak;--учтено смешение 258 и -rozmiarznak УДАЛЁН Т.К. НАЙДЕННЫЙ ОБЬЕКТ ПОКАЗЫВАЛСЯ НА 1 КЛ.ВЫШЕ
        end;
    end

   if love.keyboard.isDown("0") then 
    scanobject (selectedobject,-2) ;
     smsg1= ("Object Found, Total:"..wsego);-- skanx="..skanx.."skany=="..skany);
        end


        if love.keyboard.isDown("=") then   --CLS
      for b=gamey(1),gamey(31),1 do 
         for a=gamex(1),gamex(24),1 do
              --c=string.byte(screens (b,a));
              --if ((c==selectedobject2)) then
               printat (b,a,(selectedobject)); 
           end
       end
       smsg1= ("Exchange completed");
    end




end

if (tank==1) then hpmax=500; 
 if (poziom==1) then hpmax=hpmax/2; end; end
if (tank==0) then hpmax=200; 
 if (poziom==1) then hpmax=hpmax/2; end; 
 end

-- Пушки включаются и выключаются через таймер -- and (puszkistate==1) 
  cannonchances=(math.random(100));

    if (timerz<5)and(pause<1)and(editor<1)and(freezetimerPL3<1)and(puszkistate>0)  then timerz=timerz+0.2;
    cannleftx=0;  cannrightx=0; canny=0;
   cannrightx,cannRIGHTy=scanobject (10,gamey(y));  -- пушка стреляющая  слева вправо опять ищет не там  пришлось поменять gamex(x) на y 
   cannleftx,cannLEFTy=scanobject (11,gamey(y)); -- пушка стреляющая справа влево.  --  Y должен быть одинаков. для простоты.
   smsg1="cannrightx="..cannrightx.."y="..canny.."cannleftx="..cannleftx.."y="..canny..""; 
    if (otladka==1) then end
   if (cannonchances<50) then 
          startshootcoordinatex=cannleftx;
          startshootcoordinatey=cannLEFTy;
   end -- справа влево.  
   if (cannonchances>50) then --y3pla2am,x3pla2am=xgametorealposition (cannrightx,canny);
    startshootcoordinatex=cannrightx;
    startshootcoordinatey=cannRIGHTy;
   end -- пушка стреляющая  слева вправо
     
end
    
   if (renderammoshot==2)and(man_is_moving2==true)and(puszkistate>0) then --
        if (otladka==1) then smsg2="FREEZExpuszki="..startshootcoordinatex.."==x2ice="..gamex(x2).."and(ypuszki="..startshootcoordinatey.."==y2ice="..gamey(y2).."";
        print ("FREEZExpuszki="..startshootcoordinatex.."==x2ice="..gamex(x2).."and(ypuszki="..startshootcoordinatey.."==y2ice="..gamey(y2)..""); end; 
    if (isnear2(startshootcoordinatex,gamex(x2))and(isnear2(startshootcoordinatey,gamey(y2)))) then 
      freezetimerPL3=freezetimerPL3+2;  end;
end
     --выяснилось   x по вертикали у первого игрока и второго всегда совпадает если они на одной линии  - ширина
  if ((not cannon_shoot3)) then -- обрабатываем кнопки только, если чувак и пуля не двигается уже
  if (((startshootcoordinatex>-1)and(puszkistate>0)and(editor<1)and(pause<1)and(hp>0))and(freezetimerPL3<1)) then 
            zzx3ammo=0;allowshotpla3=1;steps=0;
            renderammoshotpla3=1;  
            -- просчет числа шагов анимации и  пролёт анимации  
            x3now2am=startshootcoordinatex; -- x3pla - это конечная координата цели, может быть использована для анимации.
            x3pla2am=startshootcoordinatex;
            y3pla2am=startshootcoordinatey ;
              if (cannonchances<15)and(startshootcoordinatex~=-1) then  --left  -- пушка стреляющая справа влево.  --  
            while ((allowshotpla3==1)and(x3pla2am>0)) do 
            love.audio.play(wystrelsnd);
            x3pla2am=x3pla2am-1;  --вычитаем из реальной координаты по 1 знакоместу (х20)
            steps=steps+1; -- считаем шаги пролетевшей пули в знакоместах.
         zzz3ammo=(screens (startshootcoordinatey,x3pla2am));-- определяем куда движется пуля  (горизонталь влево по -1) 
         
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                        if (allowshotpla3==1) then  
                         allowshotpla3=reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3);
                          if (allowshotpla3==0) then 
                             --cannondrawy,cannondrawx=xgametorealpositionbezbyte (x3pla2am,y3pla2am);
                             cannondrawx,cannondrawy= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
                             cannondrawx=cannondrawx+rozmiarznak;
                             cannondrawy=cannondrawy+rozmiarznak;
                          --cannondrawy=(y3pla2am+camerauppos_y_vert)*rozmiarznak+gamescreenfixvertical+10+(math.random(10));
                          --cannondrawx=240+((startshootcoordinatex+cameraleftpos_x_hor)*rozmiarznak)+(gamescreenfixhorizontal*rozmiarznak)+2*rozmiarznak;--+rozmiarznak*2; 
                          cannondrawstartshot=(steps-1)*rozmiarznak;
                          --выстрел пушки справа налево
                        if (otladka==1) then 
                          smsg1="love.gr(fill, "..cannondrawx.." ,"..cannondrawy..","..cannondrawstartshot..",10);"; 
                          smsg2="steps="..steps.."x3now2am="..x3now2am.."  x3pla2am="..x3pla2am.." startshootcoordinatex="..startshootcoordinatex; end;
                              end
                        playersdamagecheck (); end
                    end
                        end
            -- от  startshootcoordinatex  до x3pla2am по оси startshootcoordinatey должна лететь анимация выстрела  
            end; 
            --===========================s
            if (cannonchances>85)and(startshootcoordinatex~=-1) then --right  -- пушка стреляющая  слева вправо
            
             while ((allowshotpla3==1)and(x3pla2am<visual_mapsize_horizontal)) do 
              love.audio.play(wystrelsnd);
            x3pla2am=x3pla2am+1;
            steps=steps+1;
         zzz3ammo=(screens (startshootcoordinatey,x3pla2am));-- определяем куда движется пуля  (горизонталь влево по -1) 
         if (otladka==1) then smsg2="reactammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";" ;
         print ("reactammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";");end; 
                    if (zzz3ammo) then
                        zzx3ammo=string.byte (zzz3ammo);
                if (otladka==1) then smsg2="FOUNDammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";";
                        print ("FOUNDammo3 (zzx3ammo="..zzx3ammo..",x3pla2am="..x3pla2am..",y3pla2am="..y3pla2am..") steps="..steps..";"); end; 
                      if (allowshotpla3==1) then  
                       allowshotpla3=reactammo3 (zzx3ammo,x3pla2am,y3pla2am,allowshotpla3);
                         if (allowshotpla3==0) then 
                           cannondrawx2,cannondrawy2= xgametorealpositionbezbyte (y3pla2am,x3pla2am);
                           cannondrawy2=cannondrawy2+rozmiarznak;
                          --выстрел пушки слева направо
                          cannondrawstartshot2=-(steps-1)*rozmiarznak;
                         -- smsg1="love.gr(fill, "..cannondrawx2.." ,"..cannondrawy2..","..cannondrawstartshot2..",10);";                          -- smsg2="steps="..steps.."x3now2am="..x3now2am.."  x3pla2am="..x3pla2am.." startshootcoordinatex="..startshootcoordinatex; end;
                              end
                       playersdamagecheck (); end -- gtht переставил end ыы
                    end
                        end
            end; 
            --=====================================
            end
        end




function playergetdamage ()
    chances=(math.random(52+7*tank+1*protect));
    if (acidprotect==1)and (chances<15) then acidprotect=0 ; end;
    if (protect==1)and (chances<2) then protect=0 ; end;
   end

function playersdamagecheck ()
-- это функция обстрела от пушек.
if (freezetimerPL3>0) then allowshotpla3=0; return ; end;
-- выстрелы пушек обрабатываются тут  
-- если координаты 1 игрока совпадают с координатой пули 3 (cannon) - отнимаются HP у Р1 
 if (otladka==1) then print ("if ((isnear(x="..x3pla2am..",x="..gamex(x)..")and(y="..y3pla2am.."==y="..gamey(y)..""); end;
if ((x3pla2am==gamex(x))and(y3pla2am==gamey(y))and(allowshotpla3==1)and(puszkistate==1)and(editor==0)) then
    if (protect<1) then
    if (tank==0) then hp=hp-15; end;
    if (tank==1) then hp=hp-5; end;
    if (hardlevel==1) then hp=hp-25; end; 
    if (poziom==1) then hp=hp-10; end; 
    playergetdamage (); 
    end
    allowshotpla3=0;-- пушки не вредят совсем при защите. 
    love.audio.play(patronysnd) ;
end
-- если координаты 2 игрока совпадают с координатой пули 3 (cannon) - отнимаются HP у Р2
--print ("if ((isnear(x2="..x3pla2am..",x2="..gamex(xpla2)..")and(y2="..y3pla2am.."==y2="..gamey(ypla2).."");
if ((x3pla2am==gamex(xpla2))and(y3pla2am==gamey(ypla2))and(allowshotpla3==1)and(puszkistate==1))and(enemytank==1)and(hptank>0) then
    hptank=hptank-50;
    allowshotpla3=0;
    if (hardlevel==0) then hptank=hptank-20; end; 
    if (poziom==0) then hptank=hptank-20; end; 
    love.audio.play(patronysnd) ;
end

    if (totalenemies>0)and(livedtanks>0) then 
      xx2,yy2= xgametorealpositionbezbyte (y3pla2am,x3pla2am) ;
       tanksgetdamage (xx2,yy2);
      end



end


function tanksgetdamage (x2_TGD,y2,command)  --  в случае icebomb  тут бывает ошибка. tankfuck
 if (command==nil) then command=""; end; 
  y2_TGD=y2+rozmiarznak;
   if (totalenemies>0) then 
   for enemynum=1,totalenemies,1 do 
   	nowenemy=enemynum;
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[nowenemy]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
         --smsg1="AAAAAAAAA xx2="..xx2.." xtn="..xt.." yy2=".. yy2.." yt="..yt;
   if (hpt<1)and(typt~="tankdead")then score=score+70;hpt=0; typt="tankdead"; 
    tanksdestroyed=tanksdestroyed+1;
        love.audio.play (tankdeadsnd);
          end;
  --smsg1="xt"..xt.."=x2"..x2_TGD..";; yt"..yt.."=y2"..y2_TGD.."  ";
 if ((isnear (xt,x2_TGD))and(isnear (yt,y2_TGD))and(hpt>0)) then   -- man_is_moving2  --and(tanks_mov)
    allowshotpla3=0;-- это выключение выстрела именно пушек !
      hpt=hpt-10; 
      potrafil=true;
       			if (command=="") then 
       				 if (protecttanks<1) then hpt=hpt-100; end; 
      				if (poziom<1) then hpt=hpt-20; end; 
      				if (hardlevel<1) then hpt=hpt-20; end; 
      				end; 
      if (command=="freeze")and(protecttanks<1)  then freezetanks=freezetanks+1055; end 
      if (command=="slow")and(protecttanks<1)  then slowdowntimertanks=slowdowntimertanks+455; end 
      if (command=="fear")and(protecttanks<1)  then feartanks=feartanks+405; end 
     if (command=="damage")and(protecttanks<1)  then damagetimertanks=damagetimertanks+500;  end 

    --smsg1="tank HP="..hpt.." c:"..command.." "; --TGD
   love.audio.play(patronysnd) ;			
   enemies[nowenemy]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2); -- NIL  kak tak? 
   -- удаление этой строки удаляет вред танкам от взрывов бомб и ловушек но убирает и телепортацию.  проблема двойной записи в таблицу с танками.

      return potrafil;
end
  
  
     
end; end;
end


function scientistsgetdamage (x2,y2)
  -- тут выполняется просто перебор противников. 
  y2=y2+rozmiarznak;
  killscientists=0;
   if (totalenemies>0) then 
   for Xenemynum=1,totalenemies,1 do 
         Xtypt,Xxt,Xyt,xa,xa,xa,xa,xa,Xfreezetanks,xa,xa,Xx_tanks,Xy_tanks=enemies[Xenemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
         --smsg1="AAAAAAAAA xx2="..xx2.." xtn="..xt.." yy2=".. yy2.." yt="..yt;
   
  if ((isnearED (Xxt,x2))and(isnearED (Xyt,y2))and(Xtypt~="tankdead")) then   -- man_is_moving2  --and(tanks_mov)
--    allowshotpla3=0;-- это выключение выстрела именно пушек !
    killscientists=1; 
    hpt=hpt-500; 
 end
  
  if ((isnearED (Xx_tanks,x2))and(isnearED (Xy_tanks,y2))and(Xtypt~="tankdead")) then   -- man_is_moving2  --and(tanks_mov)
  --  allowshotpla3=0;-- это выключение выстрела именно пушек !
    killscientists=1; 
    hpt=hpt-500; 
   end
  if (hpt<1)and(typt=="scientist")then hpt=0; typt="tankdead";         love.audio.play (tankdeadsnd);        end;
    return killscientists; 
end; end;
end



--обрабатываем команды контрольного центра
if (incontrolcentre==1) then
   if (mushroom>0) then score=score+mushroom*145; smsg1="You autosell mushrooms for "..mushroom*75;
    mushroom=0;
  end

    if (love.keyboard.isDown("space")or(ammoKEYPL1=="space")) then  --выход
       incontrolcentre=0;
    end

   if love.keyboard.isDown("e")or(ammoKEYPL1=="e") then  --выход
      if(repairroad==0) then  repairroad=1; score=score-100; end
     --    if love.keyboard.isDown("5") then  
     esx,esy=xgametorealpositionbezbyte (sx,sy);   -- вычисляем рамки железной дороги.
     esx2,esy2=xgametorealpositionbezbyte (sx,ey);
        for b=gamey(esy),gamey(esy2),1 do   --чиним дорогу. 
         for a=gamex(esx),gamex(esx2),1 do
               printat (b,a,125);
           end
       end
       printat (sx-1,ey,"130");
       printat (sx-1,sy,"129"); 
       printat (sx-2,exp,"128");--печатаем экспресс,
       --smsg1= ("Fill completed"); однако ремонт экспресса таким образом будет работать только если прописан в конфигах
       -- а это неверно , надо определять кординаты разрешенного перемещения при загрузке уровня.
       -- и надо ли?  может потом будет работать несколько экспрессов.
   --end
 end

   if love.keyboard.isDown("x")or(ammoKEYPL1=="x") then  --выход
      if(tank>0) then   tank=0; score=score+1000; end
 end
   if love.keyboard.isDown("c")or(ammoKEYPL1=="c") then  --выход
     if (protect>0)  then  protect=0; score=score+700;  end
 end
   if love.keyboard.isDown("l")or(ammoKEYPL1=="l") then  --выход
    if (score>0) then    lives=lives+1; score=score-100;end;
    end

    if love.keyboard.isDown("k")or(ammoKEYPL1=="k") then  --выход
    if (score>0) then   keys=keys+1; score=score-40;end;
    end

    if love.keyboard.isDown("b")or(ammoKEYPL1=="b") then  --выход
    if (score>0) then   bombs=bombs+3; score=score-40;end;
    end

    if love.keyboard.isDown("a")or(ammoKEYPL1=="a") then  --выход 
    if (score>0) then   ammo=ammo+5; score=score-20;end;
    end

    if love.keyboard.isDown("i")or(ammoKEYPL1=="i") then  --выход
    if (score>0) then   ice=ice+5; score=score-20;end;
    end



    if love.keyboard.isDown(";")or(ammoKEYPL1==";") then  --выход
       if (lives>2) then lives=lives-1; score=score+100; end;
    end

    if love.keyboard.isDown("z")or(ammoKEYPL1=="z") then  --выход
       if (reservedaids>2) then reservedaids=reservedaids-1; score=score+50;end;
    end

end

--камера может перемещатся где угодно кроме контрольного центра (одинаковые кнопки) 
--nen тут надо прекратить перемещения и действия танка противника (not man_is_movingpla2)and(not man_is_movingpla2am)
    if (incontrolcentre==0)and(renderer==1)and(not man_is_moving2)and(not man_is_moving)  then 
  
  if (editor==0) then 
    windowsczujnosc=4;
  if (gamex(x)-cameraleftpos_x_hor>visual_mapsize_horizontal-windowsczujnosc)and (cameraleftpos_x_hor<mapsize_horizontal-visual_mapsize_horizontal) then camerakey="]"; end; 
  if (gamex(x)-cameraleftpos_x_hor<windowsczujnosc)and (cameraleftpos_x_hor>0) then camerakey="[";end; -- tut mamy problem
  if (gamey(y)-camerauppos_y_vert>visual_mapsize_vertical-windowsczujnosc)and (camerauppos_y_vert<mapsize_vertical-visual_mapsize_vertical)then camerakey=";"; end; -- tut mamy problem
  if (gamey(y)-camerauppos_y_vert<windowsczujnosc)and  (camerauppos_y_vert>0)  then camerakey="p"; end;
end
xpla3fix=0 ;ypla3fix=0;
--smsg1="if ("..gamey(y).."-"..camerauppos_y_vert..">"..visual_mapsize_vertical.."-4)and ("..camerauppos_y_vert.."<"..mapsize_vertical-visual_mapsize_vertical..") then "..ammoKEYPL1.."=;" ; 
 if (camera_time_move>9)and (ossys=="Android") then ammoKEYPL1=""; camerakey="";end; 
 --if (camera_time_move>100) then camerakey=""; end;

  if (camerakey=="p")or(camerakey==";")or(camerakey=="[")or(camerakey=="]")  --(ammoKEYPL1=="p")or(ammoKEYPL1==";")or(ammoKEYPL1=="[")or(ammoKEYPL1=="]")or 
     then camera_time_move=camera_time_move+1; 
        allowshotpla2=0;allowmovepla2=0;
 		 freezetimerPL2=1; 
        if(map_changed==0) then map_changed=1;   end; 
        --xpla2q,ypla2q=standardowecoordfix (xpla2,ypla2);
       -- if (xpla2q~=nil) then xpla2=xpla2q   ; ypla2=ypla2q;end;
        ammoKEYPL2=""; movePL2="";renderammoshotpla3=0;
        end;

        --smsg2="ibane camerakey:"..camerakey.." camera_time_move="..camera_time_move.." ammoKEYPL1:"..ammoKEYPL1;
--if (ammoKEYPL1~="p")and(ammoKEYPL1~=";")and(ammoKEYPL1~="[")and(ammoKEYPL1~="]") then camera_time_move=0;end;
if (camerakey=="") then camera_time_move=0;end;
    if (camerakey=="p")and(camera_time_move>3) then  
       if (camerauppos_y_vert>0) then camerauppos_y_vert=camerauppos_y_vert-1;
      if (editor==0) then y=y+rozmiarznak;end ; 
       y2=y2+rozmiarznak; 
      ypla2=ypla2+rozmiarznak; y2pla2am=y2pla2am+rozmiarznak; y3pla2am=y3pla2am+rozmiarznak;
              
               ypla3fix=rozmiarznak; 
       
        end;
    end
    if (camerakey==";")and(camera_time_move>3) then  
       if (camerauppos_y_vert<(mapsize_vertical-visual_mapsize_vertical)) then camerauppos_y_vert=camerauppos_y_vert+1;
        if (editor==0) then y=y-rozmiarznak; end ; 
         y2=y2-rozmiarznak;
          ypla2=ypla2-rozmiarznak; y2pla2am=y2pla2am-rozmiarznak; y3pla2am=y3pla2am-rozmiarznak;
           ypla3fix=-rozmiarznak; 
        
        end;
    end
    if (camerakey=="[")and(camera_time_move>3) then  
       if (cameraleftpos_x_hor>0) then cameraleftpos_x_hor=cameraleftpos_x_hor-1;
         if (ossys=="Android") then raznica=cameraleftpos_x_hor-0;  else raznica=0; end;
        if (raznica>7) then cameraleftpos_x_hor=cameraleftpos_x_hor-7; end; 
        if (editor==0) then x=x+rozmiarznak; if (raznica>7) then x=x+rozmiarznak*7; end ; end ; 
         x2=x2+rozmiarznak;
        xpla2=xpla2+rozmiarznak; if (raznica>7) then xpla2=xpla2+rozmiarznak*7; end ;
        x2pla2am=x2pla2am+rozmiarznak;if (raznica>7) then x2pla2am=x2pla2am+rozmiarznak*7; end ;
         x3pla2am=x3pla2am+rozmiarznak;if (raznica>7) then x3pla2am=x3pla2am+rozmiarznak*7; end ;
        xpla3fix=rozmiarznak; if (raznica>7) then xpla3fix=rozmiarznak*8; end ;
          
        end;
    end
    if (camerakey=="]")and(camera_time_move>3)then  
       if (cameraleftpos_x_hor<(mapsize_horizontal-visual_mapsize_horizontal)) then cameraleftpos_x_hor=cameraleftpos_x_hor+1;
        if (ossys=="Android") then raznica=mapsize_horizontal-visual_mapsize_horizontal-cameraleftpos_x_hor else raznica=0; end;
         if (raznica>7) then cameraleftpos_x_hor=cameraleftpos_x_hor+7; end; 
        if (editor==0) then x=x-rozmiarznak;if (raznica>7) then x=x-rozmiarznak*7; end ; end ;
         x2=x2-rozmiarznak;if (raznica>7) then x2=x2-rozmiarznak*7; end ;
          xpla2=xpla2-rozmiarznak; if (raznica>7) then xpla2=xpla2-rozmiarznak*7; end ;
          x2pla2am=x2pla2am-rozmiarznak;if (raznica>7) then x2pla2am=x2pla2am-rozmiarznak*7; end ;
           x3pla2am=x3pla2am-rozmiarznak;if (raznica>7) then x3pla2am=x3pla2am-rozmiarznak*7; end ;
          xpla3fix=-rozmiarznak; if (raznica>7) then xpla3fix=-rozmiarznak*8; end ;
          
        end;
    end
    -- ]
     if ((totalenemies>0)) then  --and(wsego_tank_teleporterow>0) 
   for enemynum=1,totalenemies,1 do 
         typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
          xt=xt+xpla3fix;  man_xpla3=man_xpla3+xpla3fix;
          yt=yt+ypla3fix; man_ypla3=man_ypla3+ypla3fix;
          x_tanks=x_tanks+xpla3fix;  m_x_tanks=m_x_tanks+xpla3fix;  -- для выстрелов 
          y_tanks=y_tanks+ypla3fix; m_y_tanks=m_y_tanks+ypla3fix;
        enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks); -- NIL  kak tak? 
     --smsg4=" enemies[enemynum]:set(typt,"..xt..","..yt..","..hpt..",rotate,"..man_xpla3..","..man_ypla3.."); ";
    end; end; 
       --enemynum--
  end

camerakey="";
if (getkeyforpause~=0) then ammoKEYPL1=getkeyforpause; getkeyforpause=0; end;
   
    if (countinventory==1) then if (ammoKEYPL1=="unpack")then 
       ammoKEYPL1="";
       codeitem=inventoryitemtable[1];  unpackedobject=ext_objs_param (codeitem,15);
       if (unpackedobject~=nil) then removeinventoryitem(1);
            for a=0,7,1 do 
              addinventoryitem (unpackedobject);
              end
              end;
       end
  end


  if (paralysatorrifle==1)and(paralysatorammo>0) then if (ammoKEYPL1=="prifle")then 
      paralysatorammo=paralysatorammo-1;
      love.audio.play(iceeffectsnd);
      
      freezetimerPL2=freezetimerPL2+3500;
      freezetimerPL3=freezetimerPL3+1500;
         if (totalenemies>0)and(ammoKEYPL1=="prifle") then 
   for enemynum=1,totalenemies,1 do 
         
        typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[enemynum]:get();
        freezetanks=freezetanks+500; 
        
        enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2); -- NIL  kak tak? 
        end;
        ammoKEYPL1=""; end; 
       end
  end

    if (antitankm==1) then if (ammoKEYPL1=="antitankmissileuse")then 
      antitankm=0;
      hptank=0;enemytank=0;
      love.audio.play(tankdeadsnd);
         if (totalenemies>0) then 
   for enemynum=1,totalenemies,1 do 
         
        typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am=enemies[enemynum]:get();
        hpt=0; 

        enemies[enemynum]:set(typt, xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am); -- NIL  kak tak? 
        end;
        ammoKEYPL1=""; end; 
       end
  end


        

   if love.keyboard.isDown("h")or (ammoKEYPL1=="h") then 
     if ((reservedaids>0)and(hp<hpmax)and(lives>0)and(hp>0)) then
                    hp=hpmax; reservedaids=reservedaids-1;
                love.audio.play(aptekasnd);
                    end;
        end

   if love.keyboard.isDown("r")or (ammoKEYPL1=="r") then 
     if ((lives>0)and(hp<1)) then
        damagetimerPL1=0;slowdowntimer=0; freezetimerPL1=0;
        feartimerPL1=0;
                    hp=hpmax; lives=lives-1;
        anikadr=0;anitimer=0;anicycles=0;
        express=0; -- игрок вылезет из экспресса
        man_speed=default_man_speed; 
        incontrolcentre=0; -- игрок вылезет из центра управления. ыы
                love.audio.play(aptekasnd);
                    end;
        end

    if (incontrolcentre==0)and(love.keyboard.isDown("l"))and(gamex(x)~=startX)and(gamey(y)~=startY)or(incontrolcentre==0)and(ammoKEYPL1=="l")and(gamex(x)~=startX)and(gamey(y)~=startY) then 
    x,y=xgametorealposition (startX,startY)
    checkx,checky=scanobject (18,-1);--check player 1 start position
    if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
    hp=1;
  end

 
if (editor==1)and(love.keyboard.isDown("l"))or(editor==1)and(ammoKEYPL1=="l") then 
    x,y=xgametorealposition (startX,startY)
    checkx,checky=scanobject (18,-1);--check player 1 start position
    if (checkx>-1) then x,y=xgametorealpositionbezbyte (1+checky,checkx) ; end
    --xpla2,ypla2=xgametorealposition (startX2,startY2);
    checkx,checky=scanobject (17,-1);--check player 1 start position
    if (checkx>-1) then xpla2,ypla2=xgametorealpositionbezbyte (1+checky,checkx) ; end
    
  end

   --if (hptank==0) then enemytank=0;    end


        if love.keyboard.isDown("f2") and not (love.keyboard.isDown("lshift")) then 
          showandroidbar=not_numeric (showandroidbar);
        end
        if love.keyboard.isDown("f3")and(editor==1)and not (love.keyboard.isDown("lshift"))and not (love.keyboard.isDown("lctrl")) then 
          codename=smsg_string (objs[((selectedobject+1))][13]); 
          love.window.showMessageBox("Info",objs[((selectedobject+1))][12].."."..codename , {"OK"}, 'error');
        end
        if love.keyboard.isDown("f3")and(editor==0)and not (love.keyboard.isDown("lshift"))or(ammoKEYPL1=="wopros") then 
          codename=smsg_string (objs[((zzx+1))][13]); 
          love.window.showMessageBox("Info",objs[((zzx+1))][12].."."..codename , {"OK"}, 'error');
          ammoKEYPL1="";
        end

 --уровень можно пропустить за 2000 очков.
  if  love.keyboard.isDown("s")and(editor==0) then
     stattitle=1;
    end


    if love.keyboard.isDown("d")and(editor==0)and(tank==1) then 
       tank=0;
       printat (gamey(y)+plusy,gamex(x)+plusx,"121");
     end

  
     if love.keyboard.isDown("f12") then 
       otladka=1; -- score=-100000; debug mode on
    end


     if (editor==0) then if love.keyboard.isDown("f1")or(ammoKEYPL1=="usermenu") then 
       menu=4; -- score=-100000; debug mode on
       selectedoptionmenu=1;
       renderer=0;pause=1;timerz=0;
    end
    end
if (execute==true) then  smsg2="execute="..execute; end; 
 

  -- Menu 6 pagesSAVES реализация выбора сохранений игр.

    if (execute=="quicksave") then ammoKEYPL1="savegame"; selectedoptionmenu=0;menu=0;end
    if (execute=="savegame") then ammoKEYPL1="savegame";  selectedoptionmenu=0;menu=0;end --savegamename

   if ((love.keyboard.isDown("f5"))and(editor==0))or(ammoKEYPL1=="savegame")and(editor==0) then  --SAVE GAME 
     if (execute=="savegame") then  
      if (idcopy~=nil) then idcopyprint=idcopy; else idcopyprint="NIIIIIIIIIL" ; end; 
      --smsg2="id="..id.." idcopy= "..idcopyprint.." savegame="..savegamename; 
      end; 
    ammoKEYPL1="";
    smsg1="Game saved"; 
    xdatapreparetowrite ();

   -- в этом месте должны быть переданы наигранные параметры для сохранения игры. 
         datatowrite=table.concat(xdata);
     if (saveslot==0) then levelname ='RESKUEsavex'; end ;   -- есть только 1 слот для сохранения пока что.
    if (saveslot==1) then levelname ='RESKUEsavexx'; end ;   -- есть только 1 слот для сохранения пока что.
    if (execute=="savegame") then levelname=savegamename ;
          execute=""; 
            end;        --love.filesystem.setIdentity('RESKUE');
    if ((execute=="quicksave")) then execute="";  end;  -- новый способ save уровня через IO LUA  
    realfilename=sourcewrite(datatowrite,levelname); 
    	--realfilename - is correct path from savegame operator.
      ImageData = GAMEWINDOWCANVAS:newImageData();
      filedata = ImageData:encode( "png" );
      realfilename=realfilename..".png"; 
      if (ossys~="Android") then 
       local filepng = io.open(realfilename, 'wb'); 
            if (filepng~=nil) then filepng:write(filedata); --STRING EXPECTED GOT USERDATA!!!!!!!!!!!!!!!!!!!!
                 filepng:close();
                end; 
          end
      if (ossys=="Android") then 
          love.filesystem.write(realfilename, filedata) -- for android  
            end; 
      smsg1="realfilenam="..realfilename..""; 
      --love.filesystem.setIdentity('RESKUE');
		--GAMEWINDOWCANVAS:newImageData():encode('png', realfilename..levelname.. 'x2.png');  -- сохранение скриншота экрана. ERROR!! attempt to call a nil value
		--local screenshot = love.graphics.newScreenshot();
        --screenshot:encode('png',levelname..'.png');


        renderer=1; selectedoptionmenu=0;pause=0;


      end
-- не забыть проверить косые для разных ОС.



--=============
    if (menu==0)and(renderer==0)and(timerz>3) then -- STARTGAME здесь начинается игра. 
   if love.keyboard.isDown("escape")or love.keyboard.isDown("1")or((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_startgame") then 
       if (gameover==0) then 
        renderer=1; -- START GAME OPTION  or(timerz>150)   меню на Android должно автоматически убиратся
       pause=0;-- timerz=0; 
       menuoption=1; -- это флаг запуска игрового процесса как минимум один раз. 
       if (firstload==0) then firstload=1 ; music:play(2)  ;  love.audio.play(levelnextsnd); end; 
        end
    end


   if (((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_loadgame")) then 
        renderer=0; pause=1
        menu=7;
        timerz=0;
        selectedoptionmenu=1;

     end

  if (((selectedoptionmenu==3)and(love.keyboard.isDown("space")))and(execute=="")or(ammoKEYPL1=="menu_savegame")) then 
        renderer=0; pause=1
        menu=6;
        selectedoptionmenu=1;
        timerz=0;
     end
  -- Menu 6 pagesSAVES реализация выбора сохранений игр.
     --if (execute=="quickload") then ammoKEYPL1="menu_load"; end
    --if (execute=="loadgame") then ammoKEYPL1="menu_load";  end --savegamename
    
    --это обычное сохранение игры, не сохранение карты в редакторе.
     -- сохранение - подсчет свободных байтов в save файле - --всё поле - 863 клетки   +128 =991  
 
     function split2bytes (byte)
  byte1= math.abs(byte/256)   -- 513/256=2
  byte2= byte-byte1*256;     --513-2*256 = 513-512=1   
     return byte1,byte2; 
    end

if ((selectedoptionmenu==4)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_authors") then  
      menu=2;
    end

     --уровень можно пропустить за 2000 очков.
  if ((selectedoptionmenu==5)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_restart") then 
     levelnumber=1; score=0;reservedaids=0; tank=0;protect=0; enemytank=0; --чистим инвентарь и с чистой душой с нуля.
            renderer=1; -- START GAME OPTION  or(timerz>150) 
       pause=0;
       gameover=0; 
       menuoption=1;
       tanksdestroyed=0;
       countinventory=0;
       inventoryitemtable={};
    love.load ();
  end

   if ((selectedoptionmenu==6)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_settings") then 
       menu=1;selectedoptionmenu=1;timerz=0;

    end


if ((selectedoptionmenu==7)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_editor") then  
      editor=1; renderer=1;
                 pause=0;

       
    end

if ((selectedoptionmenu==8)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="menu_exit")or(ammoKEYPL1=="turboexitgame") then  
      love.event.quit();
    end
    
ammoKEYPL1="";

end

-- запасной выход, всегда должен быть активен в любой момент игры. 
if (ammoKEYPL1=="turboexitgame") then  
      love.event.quit();
    end

if love.keyboard.isDown("escape")or(ammoKEYPL1=="openmainmenu") then 
       renderer=0; -- START GAME OPTION
       menu=0;selectedoptionmenu=1;
       pause=1;
    end

-- Это меню Settings 
 if (menu==1)and(renderer==0)and(timerz>3) then


    if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;selectedoptionmenu=1;
    end
    if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="poziom") then 
       poziom= not_numeric (poziom);timerz=0; -- you cannot disable it 
    end
    if ((selectedoptionmenu==3)and(love.keyboard.isDown("space")))and(hardlevel<1)or(ammoKEYPL1=="hardlevel")and(hardlevel<1) then 
     hardlevel=1;timerz=0; -- you cannot disable it 
    end
    if ((selectedoptionmenu==4)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="nomusic") then 
     nomusic= not_numeric (nomusic); timerz=0;
     if (nomusic==1) then changemusic (mtrack) ; end
     if (nomusic==0) then music:stop(mtrack); end
    end
     
 
  
      
    if (1>0) then  --(ostypt~="Android") 
       if ((selectedoptionmenu==5)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="player2AI") then 
       player2AI=not_numeric (player2AI) ;timerz=0; -- ENABLE AI TANK
        end
    if ((selectedoptionmenu==9)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="resolutionPC") then 
         reschange (resolutionPC);
        end ;-- end; 

           keyword=pages2[selectedoptionmenu+1][2];typenumeric=pages2[selectedoptionmenu+1][5];
   if ((typenumeric=="n")and(love.keyboard.isDown("right")))or(typenumeric=="n")and(movePL1=="right") then 
       timerz=8; _G[keyword]=_G[keyword]+1;
    end
    if ((typenumeric=="n")and(love.keyboard.isDown("left")))or(typenumeric=="n")and(movePL1=="left") then 
       timerz=8; _G[keyword]=_G[keyword]-1;
    end
      if ((typenumeric=="n")and(love.keyboard.isDown("0"))) then 
       timerz=15; _G[keyword]=0;
    end
   
   if (resolutionPC>9) then resolutionPC=9; end; 
   if (resolutionPC<0) then resolutionPC=0; end; 
   if (mastervolume>10) then mastervolume=10; end; 
   if (mastervolume<0) then mastervolume=0; end; 
   if (musicvolume>10) then musicvolume=10; end; 
   if (musicvolume<0) then musicvolume=0; end; 
   if (effectvolume>10) then effectvolume=10; end; 
   if (effectvolume<0) then effectvolume=0; end; 
   love.audio.setVolume( mastervolume/10 );


  if ((selectedoptionmenu==12)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="none") then 
       gamescreenfixvertical=0; gamescreenfixhorizontal=0; timerz=0;  
   end;

   if ((selectedoptionmenu==15)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="editor_dont_show_broken_items") then 
       editor_dont_show_broken_items=not_numeric (editor_dont_show_broken_items) ;timerz=0;  
   end;

   if ((selectedoptionmenu==16)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="classic_zx_spectrum_sprite_move") then 
       classic_zx_spectrum_sprite_move=not_numeric (classic_zx_spectrum_sprite_move) ;timerz=0;  
   end;

       if ((selectedoptionmenu==17)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="saveslot") then 
       saveslot=not_numeric (saveslot) ;timerz=0;  end ;  
       if ((selectedoptionmenu==20)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="vsyncc") then 
       vsyncc=not_numeric (vsyncc) ;timerz=0; 
       if (vsyncc==nil) then vsyncc=0; end 
       --if (vsyncc==1) then t.window.vsync=true ;end;
       --if (vsyncc==0) then t.window.vsync=false ;end;
        end ; 
     if ((selectedoptionmenu==8)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="language") then 
       language=language+1 ;timerz=7;  end ;  
   end;

    if ((selectedoptionmenu==18)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="otladka") then 
       otladka=not_numeric (otladka) ;timerz=0; 
    end
      
      if ((selectedoptionmenu==19)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="lastmove") then 
       lastmove=not_numeric (lastmove) ;timerz=0;  end ;  
   

   if (language>2) then language=2; end; 
   if (language<0) then language=0; end; 
    ammoKEYPL1="";
end

 
  if (menu==2)and(renderer==0)and(timerz>3) then

   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;renderer=1; selectedoptionmenu=1;
    end
    ammoKEYPL1="";
    --print_r (inventoryitemtable);

end

  if (menu==9)and(renderer==0)and(timerz>3) then

   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;renderer=1; selectedoptionmenu=1;
    end
    ammoKEYPL1="";
    --print_r (inventoryitemtable);

end

  if (menu==10)and(renderer==0)and(timerz>3) then

   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;renderer=1; selectedoptionmenu=1;
    end
    ammoKEYPL1="";
    --print_r (inventoryitemtable);

end

-- setting level i think
 if (menu==3)and(renderer==0)and(timerz>3) then
   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="zero") then 
       menu=0;renderer=1; selectedoptionmenu=1;
    end
    keyword=pages4[selectedoptionmenu+1][2];
   if ((selectedoptionmenu>1)and(love.keyboard.isDown("right")))or(movePL1=="right") then 
       timerz=9; _G[keyword]=_G[keyword]+1;
    end
    if ((selectedoptionmenu>1)and(love.keyboard.isDown("left")))or(movePL1=="left") then 
       timerz=9; if (_G[keyword]>0) then _G[keyword]=_G[keyword]-1; end;
    end
            if (love.keyboard.isDown("0")) then 
       timerz=15; _G[keyword]=0;
    end
    ammoKEYPL1="";
end

-- shipping center menu - пример обработки меню с андроида и ПК.
if (menu==5)and(timerz>3) then
  if (etatimer>0) then smsg1="You cannot order new ship until it returns." ; end; 
 if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="1") then 
       menu=0;pause=0 ;  selectedoptionmenu=1;
           renderer=1;incontrolcentre=0; ammoKEYPL1="";

           if (#itemshippinglist>5) then etatimer=5+poziom+hardlevel+countinventory_i; smsg1="Ship started."; end ;
         end

    if ((selectedoptionmenu==0)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="0") then 
       menu=0;pause=0 ;  selectedoptionmenu=1;
           renderer=1;incontrolcentre=0; ammoKEYPL1="";
           smsg1="Exit without ship ordering."; 
         end

      for i=2, #pagesSC,1 do
        id=pagesSC[i][1];--это просто номер ключа в таблице
    iditem=pagesSC[i][2]; --это просто номер id item
    nameitem=pagesSC[i][3]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    costitem=tonumber (pagesSC[i][4]);     --keypresspages=pagesSC[i][1];
    if (costitem==nil) then costitem=0; end; 
    --if (id==nil) then id=0; end; 

                         if (#itemshippinglist<maximumshipcapacity)and(timerz>2)and (etatimer<1)and ((score+2500)>costitem) then  --or(ammoKEYPL1=="pause3-9")  kak?   -- (selectedoptionmenu>2)and(selectedoptionmenu<10)and
                          if (love.keyboard.isDown("space"))and(selectedoptionmenu>1)or(ammoKEYPL1==(id))   then --  selectedoption работает только с компьютера,  с андроида идет ammoKEYPL1
                           
                               if (ammoKEYPL1==(id)and(id~="128")) then selectedoptionmenu=id;  -- ADDED LAST ONLY and (id>1))   and(id~="1")  and (id~="0") 
                            --smsg1="A:i="..i.." id="..id..", iditem="..iditem.." nameitem="..nameitem.." selectedoptionmenu="..selectedoptionmenu;       
                                end; 
                              love.audio.play(swapitem);
                  
                                iditem=pagesSC[selectedoptionmenu+1][2]; --это просто номер id item
                                costitem=tonumber (pagesSC[selectedoptionmenu+1][4]);
                              additemshippinglist (iditem);
                              score=score-costitem;
                              timerz=0;
                              ammoKEYPL1="";
                          
                          
                        end; end; 
                         
                end
      
end

-- END  shipping center menu - пример обработки меню с андроида и ПК.


-- menu 6 Saving game select slot
if (menu==6)and(timerz>15) then
  
 if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="2") then 
       menu=0;pause=0 ;  selectedoptionmenu=1;
           renderer=1; 
           execute="quicksave"; 
           smsg1="Quicksave done."; 
           timerz=0;
         end

    if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="1") then 
       menu=0;pause=0 ;  selectedoptionmenu=1;
           renderer=1;incontrolcentre=0; ammoKEYPL1="";
           smsg1="Exit without save."; 
           timerz=0;
         end

      for i=3, #pagesSAVES,1 do
          id=pagesSAVES[i][1]; 
        sa=0;   --PC ::  id 2 idcopy 2 quicksave f5 sa= exit without save (what? ) selected option menu =2  
                         if (#pagesSAVES)and(timerz>4)then  
                          if (love.keyboard.isDown("space"))and(selectedoptionmenu>1)or(ammoKEYPL1==(id))   then --selectedoption работает только с компьютера,  с андроида идет ammoKEYPL1
                           
                               if (ammoKEYPL1==(id)and(id~="128")) then selectedoptionmenu=id;  
                            if (otladka==1) then smsg1="A:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;      end;
                                end; 
                                id=pagesSAVES[selectedoptionmenu+1][1]; 
                                savegamename=pagesSAVES[selectedoptionmenu+1][2]; 
                                idcopy=id; menu=0;
                              timerz=0;
                              execute="savegame"; 
                          if (otladka==1) then smsg1="PC:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;       end;
                          
                        end; end; 
                         
                end
      
end

-- menu 7 Loading game select slot
if (menu==7)and(timerz>15) then
  
 if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="2") then 
       menu=0;pause=0 ;  selectedoptionmenu=0;
           renderer=1; 
           execute=""; 
           smsg1="Quickload done."; 
           timerz=0;
             loadsavegame="yes";
          renderer=1;
         timerz=0;
              pause=0;
       menuoption=1;
       selectedoptionmenu=0; menu=0;
         love.load();
         end

    if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="1") then 
       menu=0;pause=0 ;  selectedoptionmenu=0;
           renderer=1;incontrolcentre=0; ammoKEYPL1="";
           execute=""; 
           smsg1="Exit."; 
           timerz=0;
         end

      for i=3, #pagesSAVES,1 do
        id=pagesSAVES[i][1]; 
        sa=0;   --PC ::  id 2 idcopy 2 quicksave f5 sa= exit without save (what? ) selected option menu =2  
                         if (#pagesSAVES)and(timerz>4)then  
                          if (love.keyboard.isDown("space"))and(selectedoptionmenu>1)or(ammoKEYPL1==(id))   then --selectedoption работает только с компьютера,  с андроида идет ammoKEYPL1
                           
                               if (ammoKEYPL1==(id)and(id~="128")) then selectedoptionmenu=id;  
                            smsg1="A:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;       
                                end; 
                                id=pagesSAVES[selectedoptionmenu+1][1]; 
                                savegamename=pagesSAVES[selectedoptionmenu+1][2]; 
                                savetest=pagesSAVES[selectedoptionmenu+1][4]; 
                                --if(savetest~="-1")and(savetest~="0")and(savetest~="1") then savetest="1"; end; --  фиксим баг 5963 с UTF-8  , значит sourceread ПРОИГНОРИРОВАЛ map_flag 2 и прислал файл вместо 1
                                idcopy=id; 
                              timerz=0;
                              if (savetest=="0") then
                                  love.audio.play(badsnd); 
                                 if (otladka==1) then    smsg1="File "..savegamename.." ["..id.."] not found. Try rerun game if save really exists." end; 
                                 end;
                              if (savetest=="1") then execute="loadgame";menu=0; renderer=1;pause=0;  
                                 loadsavegame="yes";
                                          renderer=1;
                                         timerz=0;
                                              pause=0;
                                       menuoption=1;
                                       selectedoptionmenu=0; menu=0;
                                         love.load();
                                          end;
                          if (otladka==1) then  smsg1="PC:i="..i.." id="..id..", savegamename="..savegamename.." sa="..sa.." selectedoptionmenu="..selectedoptionmenu;       end;
                           
                        end; end; 
                         
                end
      
end



-- Меню Пауза, вызывается по F1 
 if (menu==4)and(timerz>3) then
--              keypresspages
   if ((selectedoptionmenu==1)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause1") then 
       menu=0;pause=0 ;  selectedoptionmenu=1;
           renderer=1;
         end

    if ((selectedoptionmenu==2)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause2") then 
       menu=0;  pause= 1; timerz=0; renderer=1;
    end
    

     for i=2, #pages5-1,1 do
    pagemenuitemkey=pages5[i][1]; --это просто номер ключа в таблице
    keyword=pages5[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    keypresspages=pages5[i][5];
    
    if (love.keyboard.isDown("space")) then smsg2="keyword="..keyword..", keypress="..keypresspages.." selectedoptionmenu="..selectedoptionmenu.." pagemenuitemkey="..pagemenuitemkey;        end
               if (selectedoptionmenu>2)and(selectedoptionmenu<14) then  --or(ammoKEYPL1=="pause3-9")  kak?   -- (selectedoptionmenu>2)and(selectedoptionmenu<10)and
                if (love.keyboard.isDown("space")) then
               
                  keypresspages=pages5[selectedoptionmenu+1][5];
                 menu=0;ammoKEYPL1=keypresspages; timerz=0;
                     renderer=1;getkeyforpause=keypresspages;                        pause=0;
              end; end; 
               
              if (ammoKEYPL1==keyword) then  --or  kak?   на Android сделанная менюшка работает. а на ПК - нет.
                 menu=0;ammoKEYPL1=keypresspages; timerz=0;
                     renderer=1;getkeyforpause=keypresspages;                        pause=0;
              end; 
      end

if ((selectedoptionmenu==14)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause14") then 
       menu=1;ammoKEYPL1="space"; timerz=0;
           renderer=0;getkeyforpause="space";
              pause=1;selectedoptionmenu=1;
    end
    if ((selectedoptionmenu==15)and(love.keyboard.isDown("space")))or(ammoKEYPL1=="pause15") then 
       menu=0;ammoKEYPL1="space"; timerz=0;
           renderer=0;getkeyforpause="space";
              pause=1;selectedoptionmenu=1;
    end
   -- ammoKEYPL1="";
end


    if love.keyboard.isDown("escape")or(ammoKEYPL1=="openmainmenu") then 
       renderer=0; -- START GAME OPTION
       menu=0;selectedoptionmenu=1;
       pause=1;
    end

    if love.keyboard.isDown("pause")and(timerz>20)or love.keyboard.isDown("f13") or love.keyboard.isDown("f14")or love.keyboard.isDown("f15")  or love.keyboard.isDown("eject") then 
        
        if (pause==1) then pause=0; timerz=0;return ;end;
        if (pause==0) then pause=1; timerz=0;return ;end;
end

    if love.keyboard.isDown("`")and(timerz>2) or (ammoKEYPL1=="`")and(timerz>3) then 
      hardened_ammo_get="";
      timerz=0;
      music:stop(mtrack);
     man_speed=default_man_speed+400; 
     express=0; 
      xeditordata={}; --(22*editor) 54518 objectlist
        --при загрузке редактора массив каждый раз формируется автоматически на основе таблицы objects.ini 
        if (editor==1) then editor=0; 
    if (editorcallselectobject==1) then x=ed_return_x; y=ed_return_y;editorcallselectobject=0;
    cameraleftpos_x_hor=ed_camera_x;camerauppos_y_vert=ed_camera_y;
     end 
    return ;end;
               
       editor=1; -- score=-100000;
    end

--If you want to help project you can draw better textures for game.  redaktor generating редактор генерация иконок 
if (editor==1)then 
    if (editorprepared>-1) then 
               xshift=54518-250-250;
                
                xdata[54518-250-240-250]=string.char (56); -- это уже новый массив данных специально для модуля редактора
                bb=1;cc=math.ceil (bb/visual_mapsize_horizontal);
                for aa=1+xshift,200+xshift,1 do 
                editorobjects=string.char (aa-1-xshift);
                 if ( objs[aa-0-xshift][14]=="noeditor"and (editor_dont_show_broken_items==1)) then editorobjects="skip"; end;
                if ( objs[aa-0-xshift][3]~="1empty.png")and (editorobjects~="skip") then 
                  dd=bb+xshift+(cc*(mapsize_horizontal-visual_mapsize_horizontal))-mapsize_horizontal+visual_mapsize_horizontal-1;
                       
                          xdata[dd]=(editorobjects);
                        bb=bb+1;
                        cc=math.ceil (bb/visual_mapsize_horizontal);
                        --if(bb>visual_mapsize_horizontal) then cc=cc+1;mapsize_horizontal-visual_mapsize_horizontal; end;
                        end;
                end ;--1empty.png
                editorprepared=2;
    end


  if (love.keyboard.isDown("tab") and (editorcallselectobject==0)and(timerz>3) ) then 
    map_changed=1; 
      ed_return_x=x; ed_return_y=y;editorcallselectobject=1;
      ed_camera_x=cameraleftpos_x_hor;  ed_camera_y=camerauppos_y_vert;
        if (visual_mapsize_vertical<21) then editorfix=5 else editorfix=0; end;
  camerauppos_y_vert=mapsize_vertical+0+editorfix; cameraleftpos_x_hor=0; 
         x,y=xgametorealpositionbezbyte (mapsize_vertical+18,14);--+editorfix
                    
    timerz=0;
  end
  if (love.keyboard.isDown("tab") and (editorcallselectobject==1)and(timerz>3) ) then 
    map_changed=1; 
    x=ed_return_x; y=ed_return_y;editorcallselectobject=0;
    cameraleftpos_x_hor=ed_camera_x;camerauppos_y_vert=ed_camera_y;
    timerz=0;
  end
end
    if (express==1) then if (love.keyboard.isDown("space")or(ammoKEYPL1=="space")) then express=0;
       man_speed=default_man_speed; 
        printat (gamey(ynow),gamex(xnow),"128") ; end;  end; 

end

function clone (t) -- deep-copy a table
    if type(t) ~= "table" then return t end
    local meta = getmetatable(t)
    local target = {}
    for k, v in pairs(t) do
        if type(v) == "table" then
            target[k] = clone(v)
        else
            target[k] = v
        end
    end
    setmetatable(target, meta)
    return target
end

t_id=-1;t_ax=0;t_ay=0;t_adx=0;t_ady=0;

function love.touchpressed( id, ax, ay, adx, ady, pressure )
touchpress=true
touchreleased=nil
--Основное Андроид Меню в игровом режиме.  + движение   Кнопки работают как переключатели постоянно зажатые.
   if (t_id==-1) then
     t_id=id; 
      if (incontrolcentre==0)and(renderer>0) then                
               -- ЭТО НЕ МЕНЮ -- androidgui
         --androidcursorrightposition=maxwidth-((100*sc)*4);cursormaxwidth=androidcursorrightposition; cursormaxheight=maxheight/2; 
        --cursorsizeuserandroid=100*sc; -- для элементов меню реакция на тачпаде.

      csa=cursorsizeuserandroid; --    ax>1400-400=1000     ax<1400-300 =1100         ay<300-100=200  ay> 300-200=100 standartsizeusermenu=100;
        --if ((ax>cursormaxwidth) and (ax<cursormaxwidth+csa*1)  and (ay<cursormaxheight+csa) and (ay>cursormaxheight-1*csa)) then ammoKEYPL1="ammo"; end; --4 
        if ((ax>cursormaxwidth+csa*1) and (ax<cursormaxwidth+csa*2)  and (ay<cursormaxheight+csa*1) and (ay>cursormaxheight-1*csa)) then movePL1="up"; end; -- 2 ay-вертикаль.
        if ((ax>cursormaxwidth+csa*0) and (ax<cursormaxwidth+csa*1)  and (ay<cursormaxheight+csa*3) and (ay>cursormaxheight+1*csa)) then movePL1="left"; end; --4 
        if ((ax>cursormaxwidth+csa*1) and (ax<cursormaxwidth+csa*2)  and (ay<cursormaxheight+csa*3) and (ay>cursormaxheight+1*csa)) then movePL1="down"; end; --5 
        if ((ax>cursormaxwidth+csa*2) and (ax<cursormaxwidth+csa*3)  and (ay<cursormaxheight+csa*3) and (ay>cursormaxheight+1*csa)) then movePL1="right"; end; --6 
        if (feartimerPL1>0)and(editor==0) then movePL1=randommove_word; end 
        if (new_x_block_fix~="") then movePL1=new_x_block_fix; end
       if (hardened_ammo_get~="") then movePL1=hardened_ammo_get; end
        --ax=1020 ay=313

        --ax=920  ay=414
        --ax=1020  ay=414
        --ax=1120  ay=414
       end 
    end
end

function love.touchmoved( id, ax, ay, adx, ady, pressure )
--touchmoved=true  Движение перемещением - важно для стрельбы.
touchreleased=nil
    function isnear (par1,par2) --suka заставил
        mn=man_step/2;
        for a=par1-mn,par1+mn,1 do
            if ((math.ceil (a))==par2) then return true end  --2271 возможно это улучшит или восстановит стрельбу? 
            end
    return false;
    end

   if (t_id==id) then 
    isy=isnear (ady,1);
    isx=isnear (adx,1);
        if (incontrolcentre==0)and(renderer>0)and(restoreoldcontrol==1)  then
               if ((adx>0) and (isy) and (movePL1=="")) then movePL1="right" end;
               if ((adx<0) and (isy) and (movePL1=="")) then movePL1="left" end;
               if ((ady>0) and (isx) and (movePL1=="")) then movePL1="down" end;
               if ((ady<0) and (isx) and (movePL1=="")) then movePL1="up" end;
                end
    end
end

function love.touchreleased( id, ax, ay, adx, ady, pressure )
touchreleased=true  
--touchmoved=nil   кнопки для планшета обработчик.
touchpress=nil
    printedmenu=1;
if (renderer==0) then movePL1=""; end

if ((ax>(maxwidth-90)) and (ay>(maxheight-90))) then ammoKEYPL1="turboexitgame"; end;  
if ((ax>(maxwidth-90)) and (ay>0) and (ay<100)) then ammoKEYPL1="openmainmenu"; end; 
 --if ((ax<(maxwidth-90))and (ax>(maxwidth-180)) and (ay>(maxheight-90))) then ammoKEYPL1="menuup"; end; --write  
 --if ((ax<(maxwidth-180))and (ax>(maxwidth-270))  and (ay>(maxheight-90))) then ammoKEYPL1="menudown"; end; --write
    --основное игровое меню для Android ONLY  c тестовым рендерингом иконок   ANDROID GUI "player.ini") do
    --menu Pages0 (основное меню игрока в режиме игры (слева)) ЭТО НЕ ГЛАВНОЕ МЕНЮ 
      if (t_id~=-1)and(incontrolcentre==0)and(renderer>0)and(editor==0) then
       wysotamenu=standartsizeusermenu_android_0_cc;
        for i=2,10,1 do
          keyword=pages0[i-1][2]; 
         if (otladka==1) then  smsg1="k="..keyword.." i="..i.." ay="..math.floor(ay).."<"..math.floor((wysotamenu)*(i-1)).." ay>"..math.floor((wysotamenu)*(i-2)).."ax="..math.floor(ax); end; 
          --player.ini 
        --эти закоментированные пункты работают в подвыводе Androidgui в другом конце программы. --androidmenup = love.graphics.newImage("Textures/androiduserguiicon"..i..".png");        --STALO love.graphics.draw(androidmenup, 0,((wysotamenu*scaling)*(i-2)),0,scalingmenu,scalingmenu);     
      if  (ay<(wysotamenu)*(i-1)) and (ay>(wysotamenu)*(i-2)) and (ax<wysotamenu) then
         ammoKEYPL1=keyword; 
      end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end
    --окончание меню пагес0 (основное меню игрока в режиме игры (слева))
   --меню пагес1 (основное меню игрока в режиме игры (слева))  Меню игрока андроид - контрольный центр --   controlcentre.ini") 
 if (t_id~=-1)and(incontrolcentre==1)and(renderer>0)and(editor==0) then
      wysotamenu=standartsizeusermenu_android_0_cc;
        for i=2,12,1 do
          keywordname=pagesсс[i-1][2];-- получается это название
          keyword=pagesсс[i-1][3];   -- а это поле что игнорируем на телефоне? 
          smsg1="k="..keyword.." i="..i.." ay="..math.ceil(ay).."<"..math.ceil((wysotamenu)*(i-1)).." ay>"..math.ceil((wysotamenu)*(i-2)).."ax="..math.ceil(ax);
          --player.ini 
        --эти закоментированные пункты работают в подвыводе Androidgui в другом конце программы. --androidmenup = love.graphics.newImage("Textures/androiduserguiicon"..i..".png");        --STALO love.graphics.draw(androidmenup, 0,((wysotamenu*scaling)*(i-2)),0,scalingmenu,scalingmenu);     
      if  (ay<(wysotamenu)*(i-1)) and (ay>(wysotamenu)*(i-2)) and (ax<wysotamenu) then
         ammoKEYPL1=keyword; 
      end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end
    --окончание меню пагес1 (основное меню игрока в режиме игры (слева))
        -- Основное игровое меню (меню 0) Главное меню (0) pages.ini")  MAINMENU 
    if (t_id~=-1)and(menu==0)and(renderer==0) then
    wysotamenu=mainmenusize+1; 
      h=80;
      
      for i=2, #pages-1,1 do
         keyword=pages[i][2]; 
          skip=pages[i][6]; 
    --smsg1="i="..i..", skip="..skip.."if ((ay="..math.ceil (ay).."<h="..h.."+wysotamenu"..wysotamenu.."*(printedmenu"..printedmenu..")) and ("..math.ceil (ay)..".>"..h.."+"..wysotamenu.."*("..printedmenu.."-1))) then)";
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))) then
       if (skip=="x") then ammoKEYPL1=""; 
        i=i+1; --это не работает на андроид. 
         else  ammoKEYPL1=keyword; end ;

       end;
        
    --#menu_printed 
     end

     
    movePL1="";
    t_id=-1;

    end

 --окончание меню pagesea (основное меню игрока в режиме игры (слева))
        -- Основное игровое меню (меню 0) Главное меню (0) editor_android.ini")  MAINMENU 
    if (t_id~=-1)and(editor==1)and(renderer==1) then
    wysotamenu=standartsizeusermenu_android_0_cc; 
      h=80;
      
      for i=2, #pagesea-1,1 do
         keyword=pagesea[i][2]; 
         key=pagesea[i][3]; 
          skip=pagesea[i][6]; 
    --smsg1="i="..i..", skip="..skip.."if ((ay="..math.ceil (ay).."<h="..h.."+wysotamenu"..wysotamenu.."*(printedmenu"..printedmenu..")) and ("..math.ceil (ay)..".>"..h.."+"..wysotamenu.."*("..printedmenu.."-1))) then)";
      if  (ay<(h+wysotamenu*(i-1))) and (ay>(h+wysotamenu*(i-2))and(ax<100)) then
        if (ossys=="Android") then  ammoKEYPL1=key; end;
       

       end;
        
    --#menu_printed 
     end

     
    movePL1="";
    t_id=-1;

    end

    -- Меню параметры (меню 1) -- Меню настроек и параметров (1) pages_settings.ini")
   if (t_id~=-1)and(incontrolcentre==0)and(menu==1)and(renderer==0) then
    wysotamenu=standartwysotatextmenu; 
      h=80;
         for i=2, #pages2-1,1 do
         keyword=pages2[i][2]; 
          skip=pages2[i][6]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end

-- Меню авторы!!!   На Андроид ненужно правок.
   if (t_id~=-1)and(incontrolcentre==0)and(menu==2)and(renderer==0) then
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
          if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 end

 -- Меню авторы!!!   На Андроид ненужно правок.
   if (t_id~=-1)and(incontrolcentre==0)and(menu==9)and(renderer==0) then
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
          if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 end
 -- Меню авторы!!!   На Андроид ненужно правок.
   if (t_id~=-1)and(incontrolcentre==0)and(menu==10)and(renderer==0) then
          if ((ax<10000) and (ay<10000)) then ammoKEYPL1="openmainmenu"; end;
          if ((ax<90) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; 
 end
     -- Меню паузы (меню 3)
     -- будет обслуживатся по принципу меню 1 и 4  -- меню редактора (3) На Андроид ненужно правок . editor_settings.ini"
    
     if (t_id~=-1)and(incontrolcentre==0)and(menu==3) then
       wysotamenu=standartwysotatextmenu;
       --if (maxwidth>1500) then wysotamenu=wysotamenu-12*scaling; end; 
      h=80; 
     for i=2, #pages4-1,1 do
         keyword=pages4[i][2]; 
          skip=pages4[i][6]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end

    -- Меню паузы (меню 4)   ("actions.ini"
    
     if (t_id~=-1)and(incontrolcentre==0)and(menu==4) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #pages5-1,1 do
         keyword=pages5[i][2]; 
         keypresspages=pages5[i][5]; 
          skip=pages5[i][6]; 
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       if (skip=="x") then ammoKEYPL1=""; else  ammoKEYPL1=keyword; end ;

       end;
    --#menu_printed ысшоукпшо  щл ысш
      end
    movePL1="";
    t_id=-1;

    end

 -- Меню заказа товаров из корабля (меню 5)  shipping menu center
    
     if (t_id~=-1)and(menu==5) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #pagesSC,1 do
         id=pagesSC[i][1]; 
        -- keypresspages=pagesSC[i][5]; 
          
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end


 -- Меню savegame (меню 6)
    
     if (t_id~=-1)and(menu==6) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #pagesSAVES,1 do
         id=pagesSAVES[i][1]; 
        -- keypresspages=pagesSC[i][5]; 
          
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end

 -- Меню loadgame (меню 7)
    
     if (t_id~=-1)and(menu==7) then
       wysotamenu=standartwysotatextmenu;
      h=80;
       for i=2, #pagesSAVES,1 do
         id=pagesSAVES[i][1]; 
        -- keypresspages=pagesSC[i][5]; 
          
      if  (ay<(h+wysotamenu*(i-0))) and (ay>(h+wysotamenu*(i-1))) then
       ammoKEYPL1=id; 

       end;
    --#menu_printed 
     end
    movePL1="";
    t_id=-1;

    end
--scalingmenu=standartwysotagraphicmenu/70;
 --usermenu --заменяет H R L N PAUSE   Меню игрока андроид, основное, кнопки работают как нажатие
    if (t_id~=-1) then
     if ((ax<120) and (ay<maxheight) and (ay>maxheight-80)) then ammoKEYPL1="openmainmenu"; end; --write  paint  НЕ РАБОТАЕТ ЗАКРАСКА. НЕ СДЕЛАНО 
     if ((ax>(maxwidth-90)) and (ay>(maxheight-90))) then ammoKEYPL1="turboexitgame"; end; --write  paint  НЕ РАБОТАЕТ ЗАКРАСКА. НЕ СДЕЛАНО 
   
    movePL1="";
    t_id=-1;

    end

   
end

-- Android interface ( стрельба- заморозка- ездить - воскрешение - читы - редактор уровней)
function love.draw()

love.graphics.setFont(font);

if (ossys=="Android") then 
    screen.w, screen.h = love.graphics.getDimensions()

if screen.w > screen.h then
--landscape
resize.w, resize.h = screen.w/800 , screen.h/480
else
--portrait
resize.w, resize.h = screen.w/480 , screen.h/800
end
--пока оставить вдруг пригодится.


for i, id in ipairs(love.touch.getTouches()) do
touch.ax, touch.ay = love.touch.getPosition(id)
end



end


timerz=timerz+0.2; -- потом вернуть в рендерер! как налажу андроид!!ы
    if (renderer==1) then
 


     render2d (1); renderplayer (1); end;

-- рендеринг персонажей и игроков
function renderplayer ()

    if (ammoicon=="left") then rotateammo= math.rad(180); y2fix=rozmiarznak; else y2fix=0;end;
    if (ammoicon=="right") then rotateammo=0; end;
    if (ammoicon=="up") then rotateammo=math.rad(-90);end; 
    if (ammoicon=="down") then rotateammo=math.rad(90);x2fix=rozmiarznak; else x2fix=0;end;

    if (ammoiconpla2=="left") then rotateammopla2= math.rad(180); y2pfix=rozmiarznak; else y2pfix=0;end;
    if (ammoiconpla2=="right") then rotateammopla2=0;end;
    if (ammoiconpla2=="up") then rotateammopla2=math.rad(-90);end;
    if (ammoiconpla2=="down") then rotateammopla2=math.rad(90);x2pfix=rozmiarznak; else x2pfix=0;end;
-- добавлен фикс визуального отображения пули, формула почему то некорректно считала влево и внизfff
     if (renderammoshot==1)and(man_is_moving2==true) then love.graphics.draw(ammoproj, x2+x2fix, y2+y2fix,rotateammo,scaling,scaling);end; -- потом поменять текстурку на пулю и условие вызова. ыыы
     if (renderammoshot==11111)and(rman_is_moving2==true) then love.graphics.draw(ammoproj, rx2+x2fix, ry2+y2fix,rotateammo,scaling,scaling);end; -- потом поменять текстурку на пулю и условие вызова. ыыы
    if (renderammoshot==2)and(man_is_moving2==true) then love.graphics.draw(iceproj, x2+x2fix, y2+y2fix,rotateammo,scaling,scaling);end; 
    if (renderammoshotpla2==1)and(man_is_movingpla2am==true) then love.graphics.draw(ammoproj, x2pla2am+x2pfix, y2pla2am+y2pfix,rotateammopla2,scaling,scaling);end; -- потом поменять текстурку на пулю и условие вызова. ыыы
-- тут рендерятся выстрелы пушек, обработка ротации им в принципе не нужна.
-- почему пушки после окончания стрельбы не выключают прицел - непонятно. видимо было стёрто.
  if (puszkistate==1)and(renderammoshotpla3==1) then 
  randomcolorbw ();
 love.graphics.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0); --выстрел пушки справа налево
 love.graphics.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0);
 love.graphics.rectangle("fill", cannondrawx , cannondrawy+rozmiarznak/2+math.random(4), cannondrawstartshot, 1,0,0);
 red ();
 love.graphics.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0); --выстрел пушки слева направо
 love.graphics.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0);
 love.graphics.rectangle("fill", cannondrawx2 , cannondrawy2+rozmiarznak/2+math.random(4), cannondrawstartshot2, 1,0,0);
 white ();
 end

 if (editor==0) then 
    if (tank==0) then love.graphics.draw(player, x, y,0,scaling,scaling);end;
    -- if (tank==0) then love.graphics.draw(player, x,y,0,1,1,64,32);end;  --test angle  zakraska
    if (protect==1) then love.graphics.draw(playerprotect, x, y,0,scaling,scaling);end;
        --только Player использует старые иконки, танк2 уже их не использует. 
    if (movePL1=="left") then rotateplayer= 0; xpla1fix=0; ypla1fix=0; end;
    if (movePL1=="up") then rotateplayer=90; xpla1fix=rozmiarznak; ypla1fix=0; end; 
    if (movePL1=="right") then rotateplayer=180; xpla1fix=rozmiarznak; ypla1fix=rozmiarznak; end;  --tank0.png , playertank , tankright  --player1tank
    if (movePL1=="down") then rotateplayer=270; xpla1fix=0; ypla1fix=rozmiarznak; end; 

    if (tank==1) then love.graphics.draw(tankplayerleft, x+xpla1fix, y+ypla1fix,math.rad(rotateplayer),scaling,scaling);end;
    if (express==1) then love.graphics.draw(express0, x, y,0,scaling,scaling);end;
            if (hp<1) then  love.graphics.draw(destrplayer,x,y,0,scaling,scaling); --dead
           
                anitimer=math.random(1000); --делаем анимацию смерти по спрайтам . 7 спрайтов.
                if (anicycles>3) then anitimer=0;end;
                if (anitimer>700) then anikadr=anikadr+1; end;
                a=anikadr;    
                if (a==1) then love.graphics.draw(destrplayer1,x,y,0,scaling,scaling); end
                if (a==2) then love.graphics.draw(destrplayer2,x,y,0,scaling,scaling); end
                if (a==3) then love.graphics.draw(destrplayer3,x,y,0,scaling,scaling); end
                if (a==4) then love.graphics.draw(destrplayer4,x,y,0,scaling,scaling); end
                if (a==5) then love.graphics.draw(destrplayer3,x,y,0,scaling,scaling); end
                if (a==6) then love.graphics.draw(destrplayer2,x,y,0,scaling,scaling); end
                if (a==7) then love.graphics.draw(destrplayer1,x,y,0,scaling,scaling); end
                if (anikadr==8) then anikadr=0; anicycles=anicycles+1; end;
               

            end;   
            if (hptank<1) then  love.graphics.draw(destrplayer,xpla2,ypla2,0,scaling,scaling); --dead
           
                anitimer=math.random(1000); --делаем анимацию смерти по спрайтам . 7 спрайтов.
                if (anicycles>3) then anitimer=0;end;
                if (anitimer>700) then anikadr=anikadr+1; end;
                a=anikadr;    
                if (a==1) then love.graphics.draw(destrplayer1,xpla2,ypla2,0,scaling,scaling); end
                if (a==2) then love.graphics.draw(destrplayer2,xpla2,ypla2,0,scaling,scaling); end
                if (a==3) then love.graphics.draw(destrplayer3,xpla2,ypla2,0,scaling,scaling); end
                if (a==4) then love.graphics.draw(destrplayer4,xpla2,ypla2,0,scaling,scaling); end
                if (a==5) then love.graphics.draw(destrplayer3,xpla2,ypla2,0,scaling,scaling); end
                if (a==6) then love.graphics.draw(destrplayer2,xpla2,ypla2,0,scaling,scaling); end
                if (a==7) then love.graphics.draw(destrplayer1,xpla2,ypla2,0,scaling,scaling); end
                if (anikadr==8) then anikadr=0; anicycles=anicycles+1; end;
               

            end;   

end

if (editor==1) then love.graphics.draw(editor0, x, y,0,scaling,scaling);end;
  if(player2tank==0) then xpla2fix=0; ypla2fix=0; end;
  if(player2tank==90) then xpla2fix=rozmiarznak; ypla2fix=0; end; 
  if(player2tank==180) then xpla2fix=rozmiarznak; ypla2fix=rozmiarznak; end; 
  if(player2tank==270) then xpla2fix=0; ypla2fix=rozmiarznak; end; 
  visiblity_tank2=isvisible (xpla2,ypla2);
 if ((enemytank==1)and(editor<1))and(visiblity_tank2==1) then 
        if(protecttank>0) then yellow (); end;
          if(speedtimerpla2>0) then red ();end; 
          if (freezetimerPL2>0) then cyan ();end;
            love.graphics.draw(whitetank, xpla2+xpla2fix, ypla2+ypla2fix, math.rad(player2tank),scaling,scaling);
            white ();
            end;
if (editor==1) then love.graphics.draw(editor0, xpla2, ypla2,0,scaling,scaling);end;

-- обработка класса монстров , рендеринг -- draw TANKS
-- по идее я должен был перевести хотя бы эту часть в класс. но не перевёл хотя это сделать легко и запрос на изменение
-- в таблице и классе синглтона не требуется.

    function class_enemy:draw() 
       for k, v in pairs(self.list) do
          if v.draw then v:draw()
       end
     end
     end

-- draw ammoX
     function class_ammo:draw() 
       for k, v in pairs(self.list) do
          if v.draw then v:draw()
       end
     end
     end

 if (totalammo>0) then  --ammofuck
   for ammonum=1,totalammo,1 do 
     typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos,rikoszets=ammoX[ammonum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
        rxpla2fix=0; rypla2fix=0; 
     if(rotate_tt==90) then rxpla2fix=rozmiarznak; rypla2fix=0; end; 
     if(rotate_tt==180) then rxpla2fix=rozmiarznak; rypla2fix=rozmiarznak; end; 
     if(rotate_tt==270) then rxpla2fix=0; rypla2fix=rozmiarznak; end; 
     visiblity_ammo=isvisible (x_ammo,y_ammo);
   
     visiblity_ammo=1;
     if (otladka==1) then smsg2="x_ammo="..x_ammo.."y_ammo="..y_ammo; end; 
     if (rotate_tt==nil) then rotate_tt=0; 	smsg1="rotate_tt СОДЕРЖИТ NIL какого то хрена!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1111"; 
     end; -- -- ЗАТЫЧКА ОТ NIL   что за хрень как этот параметр может не прийти, или прийти от танков!!!????
     --if (ammo_moving==nil) then ammo_moving=false; end;  -- ЗАТЫЧКА ОТ NIL  and(renderammoshot_ammos==1)
     if (typta=="") then ammo_moving=false; end; 
     if (x_ammo>0)and(visiblity_ammo==1)and(typta~="")and(ammo_moving==true)and(rotate_tt>-1)  then  
            --randomcolorbw ();
            if (rikoszets>0) then projectile_ammo=dymokproj; else  projectile_ammo=ammoproj; end; 
            love.graphics.draw(projectile_ammo, x_ammo+rxpla2fix, y_ammo+rypla2fix,math.rad(rotate_tt),scaling,scaling); 
            if (selectedammoid==ammonum) then  love.graphics.draw(editor0, x_ammo+rxpla2fix, y_ammo+rypla2fix,math.rad(rotate_tt),scaling,scaling); end
            white () ; 
              end 

    end
  end

--class_enemy:set(typt,x3,y3,hp,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am)
  if (totalenemies>0) then 
   for enemynum=1,totalenemies,1 do 
     typt,xt,yt,hpt,rotate,a,a,a,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,ta,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[enemynum]:get(); --,rotate[a]    attempt to index global rotate  (a nil value) 
     if (hpt<1) then rotate=0; rotate_t=0; end; 
     --xtt,ytt=xgametorealpositionbezbyte (yt+1,xt);   renderammoshot_tanks - а это что за параметр??? 
     xtt=xt;ytt=yt; 
     visiblity_tank=isvisible (xt,yt);
     visiblity_ammo=isvisible (x_tanks,y_tanks);
     if(rotate==0) then xpla2fix=0; ypla2fix=0; end;
     if(rotate==90) then xpla2fix=rozmiarznak; ypla2fix=0; end; 
     if(rotate==180) then xpla2fix=rozmiarznak; ypla2fix=rozmiarznak; end; 
     if(rotate==270) then xpla2fix=0; ypla2fix=rozmiarznak; end; 
      rxpla2fix=0; rypla2fix=0; 
     if(rotate_t==90) then rxpla2fix=rozmiarznak; rypla2fix=0; end; 
     if(rotate_t==180) then rxpla2fix=rozmiarznak; rypla2fix=rozmiarznak; end; 
     if(rotate_t==270) then rxpla2fix=0; rypla2fix=rozmiarznak; end; 
     
     if (hpt>0) then
      if (freezetanks>0) then cyan (); end;
      if (protecttanks>0) then yellow (); end;
       if (slowdowntimertanks>0) then magenta (); end;
       if (damagetimertanks>0) then gray (); end;
      if (feartanks~=nil)and(feartanks>0) then green (); end;
      if (speedtanks>0) then red (); end;
       if (visiblity_tank==1)and(typt=="tank") then  love.graphics.draw(tankleft, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
       if (visiblity_tank==1)and(typt=="gwozd") then  love.graphics.draw(gwozdleft, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
       if (visiblity_tank==1)and(typt=="scientist") then  love.graphics.draw(humanleft, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
       if (visiblity_tank==1)and(selectedtankid==enemynum) then love.graphics.draw(editor0, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling);  end;
        if (x_tanks>0)and(ta==1)and(renderammoshot_tanks>0)and(visiblity_ammo==1) then love.graphics.draw(ammoproj, x_tanks+rxpla2fix, y_tanks+rypla2fix,math.rad(rotate_t),scaling,scaling); end 
      white (); 
       end
     if (hpt<1)and(visiblity_tank==1)and(typt~="tankdead") then love.graphics.draw(destrplayer4, xtt+xpla2fix, ytt+ypla2fix,math.rad(rotate),scaling,scaling); end
     --if (otladka==1) then smsg1="draw[1]="..typt.." xt="..xt.."yt="..yt.." hpt="..hpt.." rotate="..rotate.." totalenemies="..totalenemies;  --attempt to index global "enemies" (a nil value) хотя я сначала его задал!!!!!!
       -- end
    end
  end

end  
--end of renderplayer

-- проверка видимости , требует РЕАЛЬНЫЕ x i y координаты, не обработанные gamex () 
-- возвращает 0 если невидим,  1 если видим.
function playsoundifvisible (sound,xt,yt)
    if ((isvisible(xt,yt))==1)  then love.audio.play(sound) end;
  end
function isvisible (xt,yt)
    ix=gamex(xt); iy=gamey(yt); 
  --  smsg1=""..ix.."-"..cameraleftpos_x_hor.."<"..visual_mapsize_horizontal.." and >0;;;  iy="..iy.."-"..camerauppos_y_vert.."<"..visual_mapsize_vertical.." and>0)"; 
      if (ix-cameraleftpos_x_hor>0)and(ix-cameraleftpos_x_hor<visual_mapsize_horizontal)and(iy-camerauppos_y_vert>0)and (iy-camerauppos_y_vert<visual_mapsize_vertical) then return 1; end; 
    
return 0;
end
--MAINMENU

if (renderer<1) then
-- ограничитель количества пунктов меню (для перемещения на ПК)
if (menu==-1) then  maximummenulevel=#pages-2; end
if (menu==0) then  maximummenulevel=#pages-2; end
if (menu==1) then maximummenulevel=#pages2-2  ; end
if (menu==2) then maximummenulevel=#pages3-2  ; end
if (menu==3) then maximummenulevel=#pages4-2  ; end
if (menu==4) then maximummenulevel=#pages5-2  ; end
if (menu==5) then maximummenulevel=#pagesSC-1  ; end
if (menu==6) then maximummenulevel=#pagesSAVES-1  ; end
if (menu==7) then maximummenulevel=#pagesSAVES-1  ; end
--  общие кнопки для всех меню - вверх и вниз.
 if (timerz>5)and(ossys~="Android") then   -- пытаюсь исправить баг с меню на андроид, этот селектор на нем не нужен.
if (movePL1=="down")or(ammoKEYPL1=="menudown") then
  selectedoptionmenu=selectedoptionmenu+1;timerz=0; 
     if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="d") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==1) then  if (pages2[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==2) then  if (pages3[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==3) then  if (pages4[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
     if (menu==4) then  if (pages5[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu+1; end; end; 
  if (selectedoptionmenu>maximummenulevel) then selectedoptionmenu=1; end;
end
if (movePL1=="up")or(ammoKEYPL1=="menuup") then
  selectedoptionmenu=selectedoptionmenu-1;timerz=0; 
  if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==0) then  if (pages[selectedoptionmenu+1][6]=="d") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==1) then  if (pages2[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==2) then  if (pages3[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==3) then  if (pages4[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (menu==4) then  if (pages5[selectedoptionmenu+1][6]=="x") then selectedoptionmenu=selectedoptionmenu-1; end; end; 
  if (selectedoptionmenu<0)and(menu==5) then selectedoptionmenu=maximummenulevel; end;
  if (selectedoptionmenu<1)and(menu~=5) then selectedoptionmenu=maximummenulevel; end;
end
end
end


-- Здесь находится картинка показываемая при запуске игры. Стартовый экран. 
if (renderer<1)and(menu==-1)and(startscreenmode==0) then
 
love.graphics.setFont(fontVERYBIG);


   scalingwallpaperwidth= maxwidth/800*2;
   scalingwallpaperheight= maxheight/533*2 ;
   coordflag= maxwidth/6;
  love.graphics.draw(firstscreen, 0,0,0,scalingwallpaperwidth,scalingwallpaperheight); 
--if (ossys=="Android") then selectedoptionmenu=0 ; end;  
  
  if (timerz>5)and(1==0) then love.graphics.draw(EN_FLAG,coordflag*1 ,maxheight/2,0,scalingmenu,scalingmenu); 
  love.graphics.draw(RU_FLAG,coordflag*3,maxheight/2,0,scalingmenu,scalingmenu); 
  end
  love.graphics.print("RESKUE", 150, 40);


  windowsplus=0;
  if (ossys=="Windows") then  windowsplus=90;
  	 love.graphics.print("Microsoft Windows detected", 50, 140);
  	 love.graphics.setFont(fontSMALL);
  	 love.graphics.print("You can always install Linux with safe and cool Mate desktop enviroment", 20, maxheight-80);
     love.graphics.draw(MATE_LOGO,coordflag/2 ,maxheight/2,0,scalingmenu,scalingmenu); 
 end
  if (ossys~="XAndroid")and (timerz>6+windowsplus) then 
    startscreenmode=1;menu=0; 
    end
end

     

if (renderer<1)and(menu==0) then

 


--if (ossys=="Android") then selectedoptionmenu=0 ; end;

love.graphics.setFont(fontVERYBIG);
love.graphics.print("RESKUE project by dj--alex -- MAIN MENU", 150, 40);

    wysotamenu=mainmenusize+1;
h=80;
menu_printed=0;
text=0;
    
   for i=2, #pages-1,1 do
if ((selectedoptionmenu+1)==i) then randomcolor () else white () end;
    pagemenuitemkey=pages[i][1]; --это просто номер ключа в таблице
    keyword=pages[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages[i][3]; --  человекочитабельное название
    if ((menuoption==1)and(i==2)) then name=pages[i][7]; end;
    namerus=pages[i][4]; -- название для русского перевода, резерв.
    if (language==2) then name=namerus; end;
    undefined=pages[i][5]; -- резерв
    skip=pages[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
    if (language==1) then name=skip; end;
    --if (menuoption==1) then skip=""; end --никогда не пропускать пункты после начала игры.
    
       if (pagemenuitemkey)and(skip~="x") then
                  a=_G[keyword]
                   love.graphics.draw(a, 90,h+wysotamenu*menu_printed,0,scalingmenu,scalingmenu); 
                   love.graphics.print(name, 190+100*scaling, 10+h+wysotamenu*menu_printed);
                   --DEBUG    love.graphics.print("i="..i.." key="..pagemenuitemkey.."keyword="..keyword.." name="..name.."", 190, h+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
white ();


love.graphics.setFont(font);
if (maxwidth<800) then red ();
  lprint ("TOO_LOW_RES",5,maxheight-rozmiarznak); 
  white ();
 
else 
 
  lprint ("DLA_TESTEROW",5,maxheight-rozmiarznak);
   white (); 
end


love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 2+math.random(3))
if (timerz>1000) then timerz=0;end;
timerline=timerline+2;
if (timerline>7000) then timerline=0; end; 
end
if (love.keyboard.isDown("right")) then timerline=timerline+10; end;  
if (love.keyboard.isDown("left")) then timerline=timerline-10; end;  

part1msg= smsg_string ("WELCOM_LINE");
part2msg= smsg_string ("WELCOM_WINDOWS");
  
    if (ossys=="Windows") then win=part2msg; else win=""; end; 
    if ((renderer==0)and(menu==0)) then  love.graphics.print(part1msg..win,maxwidth-timerline,maxheight-rozmiarznak*2.5); white (); end ; 
love.graphics.setFont(fontVERYSMALL);
  if(renderer==0) then love.graphics.print(SYSinfo, 	50, maxheight-rozmiarznak*1.2); end; 


if (finaltitle==1) then  -- FINALTITLE STATISTICS
   savedscientists=scanobject(33,-2);
   if (savedscientists<0) then savedscientists=0; end; 
   savedfuel=scanobject(42,-2)-2;
   renderer=0; 
  menu=9; selectedoptionmenu=1;
   pause=1;
   white ();
   love.graphics.setFont(font);
   lprint("WINTITLE",100, maxheight/3);
   love.graphics.print ((smsg_string ("WINSCORE"))..score,  0, maxheight/3+rozmiarznak*2);
   love.graphics.print ((smsg_string ("WINTANK"))..tanksdestroyed,  0, maxheight/3+rozmiarznak*3);
   love.graphics.print ((smsg_string ("WINSC"))..savedscientists,  0, maxheight/3+rozmiarznak*4);
   love.graphics.print ((smsg_string ("WINFUEL"))..savedfuel,  0, maxheight/3+rozmiarznak*5);
   gameover=1; 
   if (timerz>5)and(love.keyboard.isDown("space")or(ammoKEYPL1=="space"))and (timerz>5) then 
    menu=0;finaltitle=0;  pause=1; timerz=0;
   end
 end

 if (stattitle==1) then  -- ingame STATISTICS
   savedscientists=scanobject(33,-2);
   if (savedscientists<0) then savedscientists=0; end; 
   savedfuel=scanobject(42,-2)-2;
   renderer=0; 
  menu=9; selectedoptionmenu=1;
   pause=1;
   white ();
   love.graphics.setFont(font);
   lprint("STATTITLE",100, maxheight/3);
   eff="";
   if (protect==1) then eff=eff.."Protect,"; end
   if (speedtimer>0) then eff=eff.."Speed,Damage,"; end
   if (feartimerPL1>0) then eff=eff.."Fear,"; end
   if (freezetimerPL1>0) then eff=eff.."Frozen,"; end
   if (slowdowntimer>0) then eff=eff.."Slow,"; end
   if (damagetimerPL1>0) then eff=eff.."Wound,"; end
   
   --if (paralysatorrifle>0) then eff="Paralysator,"; end
   objectinfo=smsg_string (objs[((zzx+1))][13])..objs[((zzx+1))][12]; 
  
   love.graphics.print ((smsg_string ("OBJINF")),  0, maxheight/3+rozmiarznak*-5);
   love.graphics.print (""..objectinfo,  0, maxheight/3+rozmiarznak*-4);
   love.graphics.print ((smsg_string ("NOWDMG"))..standartdamage,  0, maxheight/3+rozmiarznak*2);
   love.graphics.print ((smsg_string ("EFF"))..eff,  0, maxheight/3+rozmiarznak*3);
   love.graphics.print ((smsg_string ("WINTANK"))..tanksdestroyed,  0, maxheight/3+rozmiarznak*5);
   love.graphics.print ((smsg_string ("WINSC"))..savedscientists,  0, maxheight/3+rozmiarznak*6);
  

   if (timerz>5)and(love.keyboard.isDown("space")or(ammoKEYPL1=="space"))and (timerz>5) then 
    menu=0;stattitle=0;  timerz=50;
   end
 end


if (renderer<1)and(menu==1) then
love.graphics.setFont(fontVERYBIG);
lprint ("MENU1SETT", 150, 20); 
love.graphics.setFont(font);
menu_printed=0;
wysotamenu=standartwysotatextmenu; 
h=80;
 for i=2, #pages2-1,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    pagemenuitemkey=pages2[i][1]; --это просто номер ключа в таблице
    keyword=pages2[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages2[i][3]; --  человекочитабельное название
    namerus=pages2[i][4]; -- название для русского перевода, резерв.
    if (language==2) then name=namerus; end;
    --smsg1="Language=="..language.." name="..name; 
    typenumeric=pages2[i][5];-- если N указывает что вместо переключателя опций будет смена чисел.
    skip=pages2[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
     if (language==1) then name=skip; end;
    if (pagemenuitemkey~=nil)and(skip~="x") then
                  if(keyword~="none") then a=_G[keyword];
                  if (i>2)and(typenumeric~="n") then  if (a>0) then love.graphics.draw(settings_switch_on, 90,h+wysotamenu*menu_printed); end;
                                if (a==0) then love.graphics.draw(settings_switch_off, 90,h+wysotamenu*menu_printed); end;
                  end
                  if (a~=nil)and(typenumeric=="n")  then  love.graphics.print(a, 90, h+15+wysotamenu*menu_printed); end;
                   end
                --   love.graphics.draw(a, 90,h+wysotamenu*menu_printed); 
                   love.graphics.print(name, 140+100*scaling, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
  

white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end



  if(renderer<1)and(menu==2) then
love.graphics.print("***Authors***", 450, 90);
love.graphics.print("Coding, Idea, Base graphic - dj--alex (dj-alex.ru) ", 50, 120);
love.graphics.print("The main goal is find a way to next level, collecting", 50, 120+wysotastroki*1);
love.graphics.print("items, destroy targets (trolley,mines).  ", 50, 120+wysotastroki*2);
love.graphics.print("On some level you can save scientists or must delivery fuel.", 50, 120+wysotastroki*3);
love.graphics.print("", 50, 120+wysotastroki*4);
 love.graphics.print("donate ETH 0xb156fe110b4781c0b237e2f5a4d052bc8174fd19",38+ggfix,startpositionuserPCmenuY+wysotastroki*1);
  love.graphics.print("BTC 1Di3AAVH7E9Lyghy6f4VYRLzwhkQj2T44X",38+ggfix,startpositionuserPCmenuY+wysotastroki*2);
love.graphics.print("ETC 0x302f798bf9cf284a2f64953a883f78915c9aba6b",38+ggfix,startpositionuserPCmenuY+wysotastroki*3);
love.graphics.print("Litecoin LWHZ1An1gpivzDGTpDdY5k46rEbdb6rJpQ (not checked)",38+ggfix,startpositionuserPCmenuY+wysotastroki*4);
love.graphics.print("Sberbank Russia  4276840223662071",38+ggfix,startpositionuserPCmenuY+wysotastroki*5);
love.graphics.print("Yandex Money 4100177805659  ; Webmoney R150759332270",38+ggfix,startpositionuserPCmenuY+wysotastroki*6);
love.graphics.print("(c) dj-alex.ru ::  youtube.com/c/linux4domvid  ",38+ggfix,startpositionuserPCmenuY+wysotastroki*7);
--love.graphics.print("You can help me by visit and mine for me http://.ru/l4d/miner.php",38+ggfix,startpositionuserPCmenuY+wysotastroki*8);

    love.graphics.print("Press [esc] to return",38+ggfix,startpositionuserPCmenuY+wysotastroki*12);       
  end


if (renderer<1)and(menu==3) then
love.graphics.setFont(fontVERYBIG);
lprint ("MENU_EDITOR", 150, 40);
love.graphics.setFont(font);
menu_printed=0;
wysotamenu=standartwysotatextmenu-2; 
  if (maxwidth>1500) then wysotamenu=wysotamenu-12*scaling; end; 
h=80;
 for i=2, #pages4-1,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    pagemenuitemkey=pages4[i][1]; --это просто номер ключа в таблице
    keyword=pages4[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages4[i][3]; --  человекочитабельное название
    namerus=pages4[i][4]; -- название для русского перевода, резерв.
    if (language==2) then name=namerus; end;
    skip=pages4[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
     if (language==1) then name=skip; end;
    if (pagemenuitemkey~=nil)and(skip~="x") then
                  a=_G[keyword];
                 -- if (i>2) then  if (a>0) then love.graphics.draw(settings_switch_on, 90,h+wysotamenu*menu_printed); end;
                 --               if (a==0) then love.graphics.draw(settings_switch_off, 90,h+wysotamenu*menu_printed); end;
                 -- end
                  if (a~=nil) then  love.graphics.print(a, 90, h+15+wysotamenu*menu_printed); end; 
                   love.graphics.print(name, 140, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end
  

white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end



if (menu==4) then
love.graphics.setFont(fontVERYBIG);
yellow ()  ;  
lprint("MENU_USER_PAUSE", 150, 40);
love.graphics.print ("smsg1:"..smsg1, 10, 840);
love.graphics.setFont(fontBIG);
menu_printed=0;

wysotamenu=standartwysotatextmenu; 
h=80;
 for i=2, #pages5-1,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else yellow () end;
    pagemenuitemkey=pages5[i][1]; --это просто номер ключа в таблице
    keyword=pages5[i][2]; -- название переменной содержащей картинку загруженную ранее в love.load. 
    name=pages5[i][3]; --  человекочитабельное название
    namerus=pages5[i][4]; -- название для русского перевода, резерв.
    if (language==2) then name=namerus; end;
    keypresspages=pages5[i][5]; -- эмуляция нажатия кнопки через файл описания
    skip=pages5[i][6];  -- пропускать пункт если записан "х". переключатель также игнорирует пропускаемые пункты.
     if (language==1) then name=skip; end;
    if (pagemenuitemkey~=nil)and(skip~="x") then
                   love.graphics.print(name, 140, h+15+wysotamenu*menu_printed);
                        menu_printed=menu_printed+1;
       end
    end


white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end

--  Меню Shipping menu center
if (menu==5) then
love.graphics.setFont(fontVERYBIG);

lprint("MENU_SHIP", 150, 40);


--love.graphics.print ("Types:"..countinventory_s.." ammoKEYPL1="..ammoKEYPL1, 10, 690);rightspaceonscreen-200
love.graphics.print ("Your order is "..countinventory_i.." of 20 items.", 800, downspaceonscreen);
love.graphics.print ("Score:"..score, 800, downspaceonscreen-h);
love.graphics.print ("Smsg1:"..smsg1, 800, downspaceonscreen+h);
love.graphics.setFont(fontBIG);
menu_printed=0;
love.graphics.setFont(fontVERYSMALL);
wysotamenu=standartwysotatextmenu; 
h=80;
 for i=1, #pagesSC,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    id=pagesSC[i][1]; --это просто номер ключа в таблице
    iditem=pagesSC[i][2];
    nameitem=pagesSC[i][3]; --  человекочитабельное название
    cost=pagesSC[i][4]; 
    imgf2 =  objs[iditem+1][3]; -- просто берет название файла.
    if (language==2) then nameitem=objs[iditem+1][12]; end;
    love.graphics.setFont(fontVERYSMALL);
   --keypresspages=pages5[i][5]; -- эмуляция нажатия кнопки через файл описания
    if (iditem~=nil) then --id"..id.."["..iditem.." ] 
              if (i>2) then love.graphics.print(""..nameitem.." ["..cost.."]", 170, h+15+wysotamenu*menu_printed);end;
              if (i==2) then lprint ("SH_ORDER", 170, h+15+wysotamenu*menu_printed);end;
              if (i==1) then lprint ("SH_EXIT", 170, h+15+wysotamenu*menu_printed);end;
              textures[imgf2] = love.graphics.newImage("Textures/"..imgf2);
               if (imgf2~=nil) then love.graphics.draw(textures[imgf2], 120, h+20+wysotamenu*menu_printed,0,scaling,scaling);   end;
              menu_printed=menu_printed+1;
       end
    end


white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end

-- тут начинается отрисовка блока shipping inventory (предметный)
if (menu==5) then 
    inventoryvisualcode=0;
    textures3={};
   countinventory_i=#itemshippinglist
   if (countinventory_i>0) then 
   for aiii=1,countinventory_i,1 do 
         inventoryvisualcode=itemshippinglist[aiii];
        IDobj=objs[inventoryvisualcode+1][1]; -- [1] ID обьекта [2] имя [3] файл [4] особые свойства.

         postobjectX=50+gamescreenfixhorizontal*rozmiarznak+(aiii*rozmiarznak*1.2);
         postobjectY=downspaceonscreen+160;
         increasesize=0.3;
         if (ossys=="Android") then  --vertical 
          increasesize=0;
          postobjectX=rightspaceonscreen+gamescreenfixhorizontal*rozmiarznak;
          postobjectY=100+(aiii*rozmiarznak);
         end
               if ((IDobj)) then
                -- название файла текстуры

                   imgf3 =  objs[inventoryvisualcode+1][3]; -- просто берет название файла.
    if (otladka==1) then smsg1="invencode="..inventoryvisualcode.." countinv="..countinventory_i.." itemshippinglist[0]="..itemshippinglist[1].." IDobj="..IDobj.." imgf2="..imgf3; end; 
                       -- если нужная текстура еще не загружена
               -- if( not textures[imgf2] ) then  -- удален т.к. мешает работе инвентаря и делает невозможным показ одинаковых обьектов.
                    -- подгружаем её и пихаем в массив текстур
                    textures3[imgf3] = love.graphics.newImage("Textures/"..imgf3);
                    if (imgf3~=nil) then love.graphics.draw(textures3[imgf3],postobjectX, postobjectY,0,scaling+increasesize,scaling+increasesize);   end;
                 --     end;
               end; 
     end
   end
 end
-- тут заканчивается отрисовка блока shipping inventory


-- Save game menu 


if (menu==6) then
love.graphics.setFont(fontVERYBIG);

lprint("SAVEMENU", 150, 40);
love.graphics.setFont(fontSMALL);
--love.graphics.print ("Types:"..countinventory_s.." ammoKEYPL1="..ammoKEYPL1, 10, 690);
--love.graphics.print ("Your order is "..countinventory_i.." of 20 items.", 10, downspaceonscreen);
--love.graphics.print (""..score, rightspaceonscreen-200, downspaceonscreen);
love.graphics.print ("Smsg1:"..smsg1, 500, downspaceonscreen);
love.graphics.setFont(fontBIG);
menu_printed=-1;

wysotamenu=standartwysotatextmenu; 
h=80;
 for i=1, #pagesSAVES,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    id=pagesSAVES[i][1]; --это просто номер ключа в таблице
    savegamename=pagesSAVES[i][2];
      savetest=pagesSAVES[i][4];
      --if(savetest~="-1")and(savetest~="0")and(savetest~="1") then savetest=1; end; --  фиксим баг 5963 с UTF-8  , значит sourceread ПРОИГНОРИРОВАЛ map_flag 2 и прислал файл вместо 1
       if (id~=nil) then --id"..id.."["..iditem.." ] 
              if (i>2) then love.graphics.print(""..savegamename.." "..savetest, 170, h+15+wysotamenu*menu_printed);end;
              if (i==2) then love.graphics.print(""..savegamename.." "..savetest, 170, h+15+wysotamenu*menu_printed);end;
              menu_printed=menu_printed+1;
       end
    end


white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end


-- load game menu 


if (menu==7) then
love.graphics.setFont(fontVERYBIG);

lprint("LOADMENU", 150, 40);
love.graphics.setFont(fontSMALL);
--love.graphics.print ("Types:"..countinventory_s.." ammoKEYPL1="..ammoKEYPL1, 10, 690);
--love.graphics.print ("Your order is "..countinventory_i.." of 20 items.", 10, downspaceonscreen);
love.graphics.print ("Score:"..score, rightspaceonscreen-200, downspaceonscreen);
love.graphics.print ("Smsg1:"..smsg1, 500, downspaceonscreen);
love.graphics.setFont(fontBIG);
menu_printed=-1;

wysotamenu=standartwysotatextmenu; 
h=80;
 for i=1, #pagesSAVES,1 do
if ((selectedoptionmenu+1)==i) then  randomcolor () else white () end;
    id=pagesSAVES[i][1]; --это просто номер ключа в таблице
    savegamename=pagesSAVES[i][2];
    savetest=pagesSAVES[i][4];
     if (id~=nil) then --id"..id.."["..iditem.." ] 
              if (i>3) then love.graphics.print(savegamename.." "..savetest, 170, h+15+wysotamenu*menu_printed);end;
              if (i==3) then love.graphics.print("Load quicksave ", 170, h+15+wysotamenu*menu_printed);end;
              if (i==2) then love.graphics.print("Exit to main menu [Esc] ", 170, h+15+wysotamenu*menu_printed);end;
              --textures[imgf2] = love.graphics.newImage("Textures/"..imgf2);
               --if (imgf2~=nil) then love.graphics.draw(textures[imgf2], 120, h+20+wysotamenu*menu_printed,0,scaling,scaling);   end;
              menu_printed=menu_printed+1;
       end
    end


white ();
love.graphics.print("***"..selectedoptionmenu.."***",(timerz), 9+math.random(3))
if (timerz>800) then timerz=0;end;

end



love.graphics.setFont(font);
--[[
Dmitriju Pawliczenko за разбор полётов как опрашивать тачпад с андроида и за то что я его 
раза 5 не меньше беспокоил по вопросам, сам которые же и решил через пару часов. 
]]--

-- =================Печать обьектов из старой кодировки уровней!====================
if (drawonceZZOLDLEVEL==0) then 

  if (typelevel=="ZX") then 

    printat (23,31,38); 
    end; -- метка докуда работать scanobject по умолчанию.
  drawonceZZOLDLEVEL=1;
  if (sy>0) then printat (sx-1,sy,"129"); 
    printat (sx-1,ey,"130");
    printat (sx-2,exp,"128");--печатаем экспресс,
    end
end

--===========================Печать обьектов из новой кодировки уровней, но только раз===========


-- Зелёное дерьмо (Зёленая слизь, кислота и т.п.) 
chancesg=30;--math.ceil( math.random (100));
if (ossys=="Android") then chancesg=50; end;
if (timerz>1)and(editor==0)and(pause==0)and(menu<1) then 
  greenshitactivity=greenshitactivity+0.25;
  if (greenshitactivity>20) then greenshitactivity=50;end
  if (greenshitdelay>0) then greenshitdelay=greenshitdelay-1;end;
 greenshittotal=scanobject (21,-2); --smsg1="Greenshit.."..greenshittotal;

  if (greenshitdelay<2)and(greenshittotal>1) then skanx,skany=scanobject (21,-3)  ; 
    for a=0,1,1 do  
    if (skanx<1) then  skanx,skany=scanobject (21,-3)  ; end; 
    if (skanx<1) then  skanx,skany=scanobject (21,-3)  ; end; 
   
  end
       greenshit (skany,skanx,21);
 end

 if (dasglukenfild>0)and(editor==0)and(pause==0)and(menu<1) then 
  --greenshitactivity=greenshitactivity+0.25;
  if (greenshitdelay>0) then greenshitdelay=greenshitdelay-1;end;
  

  if (greenshitdelay<2) then skanx,skany=scanobject (76,-3)  ; 
    --smsg1="greenshit (skany="..skany..",skanx="..skanx..")=";
   greenshit (skany,skanx,76);
 end
end


-- Мухоморы
if (timerz>1)and(editor==0)and(pause==0)and(menu<1) then 
 -- тут устанавливается скорость роста мухоморов.
  if(math.random(256)>1) then for m_a=0,1,1 do  skanx,skany=scanobject (79+(math.ceil(math.random(3))),-3); 
           mushroomupd (skany,skanx); end 
 end

end


end

-- Функция выполняющаяся 1 раз после загрузки уровня любого типа.    firstload real 
if (drawonce==0) then 
  flagchecknewteleportersenemy=1;
   greenshittotal=scanobject (21,-2);
   
  skan_y_max,skan_x_max=scanobject (38,-1) ;
    --7 левый штё  9 верхний штырёк.6 prawyj  8 niżnij 
    -- обработка штырьков с помощью scanobject который ищет обьект на карте и возвращает координаты.
    -- можно добавить по всей карте, только по вертикали и только по горизонтали. 
        if (hardlevel==1) then  --если танк задан в настройках уровня - поставить его. 
                if (zx>0)and(zy>0) then 
                    enemytank=1; hptank=3000;
                    --xpla2=gamex(zx); ypla2=gamey(zy);   Обычно этот параметр уже передан через загрузку
                    --но если нйдется через scanobject то перезаписать полученные кординаты новымиы
                    --главное после получения координат обьекты 17 и 18 должны быть УНИЧТОЖЕНЫ на 56.
                end
        end
      shippingzone_y,shippingzone_x=scanobject (29,-5,1);
      if (shippingzone_y>0) then  -- тут у нас отрабатывается составление списка ценных обьектов из которых будет формироваться меню Shipping center
          --echo "" ;
      end

    drawonce=1;
end


-- в играх типа rescue карта может состоять из нескольких полей между которыми можно переходить
-- тут находятся периодические проверки всего поля игры.
-- rescan
  


   
if (timerz>20)and (timerz<22) then 
  solarenergy=scanobject (102,-2) ;
   if (solarenergy==-1) then solarenergy=0; end;
   
--процедура поиска обьекта для телепортации. не известно по каким принципам организовывать.
   if (tx<1) then
        skanx,skany=scanobject (119,-1) ;
      if (skanx>0) then ty=skanx;tx=skany; end;  
    end
 --есть подозрение что в коде телепортации вообще не учтен screenfix и что она не использует  xgametorealpositionbezbyte

 
end
  
  --and(timerz>3)and (timerz<75)
  if (powerstate==1)and(allowpowerrescan==1)and(editor<1)or(nowait==1) then 
    p2,p1=scanobject (9,-3) ; -- сканируем верхний штырёк
    p4,p3=scanobject (7,-3) ; -- сканируем левый штырёк. 
    for ap=1,2,1 do 
      if (p1<1) then 
    p2,p1=scanobject (9,-3) ; -- сканируем верхний штырёк   повторно
   -- smsg1="p1="..p1.."p2="..p2.."p3="..p3.."p4="..p4;
    end
    if (p3<1) then 
     p4,p3=scanobject (7,-3) ; -- сканируем левый штырёк. повторно. т.к. у нас нет функции запросить следующий.
   -- smsg1="p1="..p1.."p2="..p2.."p3="..p3.."p4="..p4;
    end
    end
    if (p1>0) then p1=p1+1; end;
    if (p3>0) then p3=p3+1; end;
    -- allowpowerrescan=0   ltkf  делать оказалось необязательно. 
        p1x2=0;p4x2=0; -- пересчитает.
    nowait=0;
   end

if (removeteleportmarker==1)and(editor==0) then     -- было <1)  FUCK  
   -- if (tx>0)and (ty>0) then printat (tx,ty,"119"); end;  --build 4400
    
    end --конечная координата телепорта, только для редактора. Для игрока - невидима.

if (powerstate==0)and(editor<1) then
       powerclean ();
end



if ((powerstate==1)and(editor<1)) then
       if (p1>0) then
            -- з1з2 если штырьки заданы то включение только тех которые заданы.
          -- p1 - координата верхнего штырька по вертикали   p1x2  - вычисляемая координата нижнего штырька,только 1 раз. 
          -- p2 координата обоих штырьков по горизонтали.
          -- в случае возможности добавления многочисленных штырьков должен быть массив с такими же тремя переменными для каждой инстанции.
          -- p1,p2 - 9 werh,  p1x2,p2 - 8 niz,     p3,p4 - lewo  7  p3,p4x2 - prawo. 6
          -- при уничтожении штырька должна запускатся перепроверка линии электропередачи, чистка и её перезадача
         -- enxris=27 ;
          a,enxris=scanobject(8,-4,p2);  -- ищет нижний штырёк в указанной вертикали (ось Y)
          enxris=enxris-1;
           --smsg2="enxris=="..enxris.." a="..a.." 8 -4 p1="..p1.." p2="..p2.."";
         --if (enxris<1) then allowpowerrescan=1; end;
          --if (p1x2>0) then enxris=p1x2-1;end;  -- p1=8 p2=22  x=22 y=8 
            --printat (enxris+2,p2,45); printat (первая координата - это вертикаль, горизонталь)
          for aa=p1,enxris,1 do 
            zzz=screens (aa,p2); --текущая перепроверяемая координата
            zzzpower=string.byte(zzz);
            p1p2=string.byte(screens (p1-1,p2));--начальная координата штырька.
            if (p1p2~=9) then if (p1p2~=56)and(p1p2~=27)then allowpowerrescan=1; p1x2=0; aa=p1; break; end; end;
            if (zzzpower~=8)and(p1p2==9) then 
                       if (zzzpower~=45) then playsound=1; end; 
                        printat (aa,p2,45);
                        else  if (p1x2==0) then p1x2=aa;end; break ;end;
            if ((p1p2>10)and(zzzpower~=8))then 
                                  if (zzzpower==45) then printat (aa,p2,56);  end;

                                  end;
            if (string.byte (screens (p1x2,p2))~=8)then 
                              --удалил и вообще ничего не изменилось.  б.2041
                               -- if (zzzpower==45) then printat (aa,p2,56);  end;
                                allowpowerrescan=1; 
                                end;
            end
      end
   if (p3>0) then
            -- если штырьки заданы то включение только тех которые заданы.
            -- p4 - координата левого штырька по горизонталии   p4x2  - вычисляемая координата правого
            -- p3 - координата обоих штырьков по вертикали ыы
            --enxris=30; 
            enxris=scanobject(6,p3-1); -- ищет правый штырёк в указанной строке (ось Х)
            --if (enxris==-1) then allowpowerrescan=1; end;
        
            if (p4x2>0) then enxris=p4x2-1;end;
          for aa=p4+1,enxris,1 do 
            zzz=screens (p3-1,aa);--текущая перепроверяемая координата
            zzzpower=string.byte(zzz);
            p1p2=string.byte(screens (p3-1,p4));--начальная координата штырька.
            if (p1p2~=7) then if (p1p2~=56)and (p1p2~=27)then  allowpowerrescan=1; p4x2=0;enxris=0;  aa=p4; break; end; end;
            if (zzzpower~=6)and(p1p2==7) then 
                          if (zzzpower~=46) then playsound=1; end; 
                          printat (p3-1,aa,46) ;
                          else if (p4x2==0) then p4x2=aa;end; break ;end;
             if ((p1p2>10)and(zzzpower~=6))then
                                    if (zzzpower==46) then printat (p3-1,aa,56);  end;

                                      end;
            if (string.byte (screens (p3-1,p4x2))~=6)then
                                --забавно удалил и вообще ничего не изменилось.
                                 --    if (zzzpower==46) then printat (p3-1,aa,56);  end;
                                     allowpowerrescan=1; 
                                    end;
            end
      end
        if (playsound==1) then 
          love.audio.play(powerstaticon);
          playsound=0;
        end
      if (p1==0) then
        --процедура поиска штырьков и включения электричества на всех целых.НЕ СДЕЛАНО
        print("");
        end
end

if (tempshutdownpowerstate==1) then powerstate=0; end;

-- а тут нет никакого определения вообще конечной координаты докуда рисовать или не рисовать.. просто идёт стирание.
-- для чего эта функция?  выключу ка я её на всякий случай -  поставлено невыполнимое условие.
-- оказывается выполняет зачистку выключенного электричества. интересно а зачем точно такой же код в модуле наверху тогда?
if ((powerstate==0)and(editor<1)and(a==0.1)) then

       if (p1>0) then
            -- если штырьки заданы то включение только тех которые заданы.
          for aa=p1,25,1 do 
            zzz=screens (aa,p2);
            if (string.byte(zzz)~=8) then
                              if (string.byte(zzz)==45) then    printat (aa,p2,56) 
                                        else break ;end;
            end
      end
    end
   if (p3>0) then
            -- если штырьки заданы то включение только тех которые заданы.
          for aa=p4+1,30,1 do 
            zzz=screens (p3-1,aa);
            if (string.byte(zzz)~=6) then
                               if (string.byte(zzz)==46) then   printat (p3-1,aa,56)
                                         else break ;end;
            end
      end

    end
    if (tempshutdownpowerstate==1) then powerstate=1;tempshutdownpowerstate=0; end;
end

--function removeobjectfrommap 
--end
-- по powerstate=0  очистить только клетки с током до 56 
--=================================окончание==========================
  
end

function render2d() 
    objectcodenowID=0;
    timer=timer+1;
    --if (otladka==1) then 

function red ()
love.graphics.setColor(255, 0, 0, 255);
end

function magenta ()
love.graphics.setColor(255, 0, 255, 255);
end


function green ()
love.graphics.setColor(0, 255, 0, 255);
end

function cyan ()
love.graphics.setColor(0, 255, 255, 255);
end


function black ()
 love.graphics.setColor(0, 0, 0, 255);
end;

function white ()
 love.graphics.setColor(255, 255, 255, 255);
end;


function randomcolorbw ()
  --colorshift=colorshift+1;
  --if (colorshift>255) then colorshift=0; end; 
  colorshift=math.random(255)
 love.graphics.setColor(colorshift,colorshift ,colorshift, 255);
end;

function randomcolor2 ()
  colorshift=colorshift+0.5;
  if (colorshift>255) then colorshift=0; end; 
 love.graphics.setColor((colorshift), (255-colorshift), (255), 255);
end;


function randomcolor ()
  colorshift=colorshift+0.25;
  if (colorshift>255) then colorshift=0; end; 
 love.graphics.setColor(math.random(colorshift), (255-colorshift), (255), 255);
end;


function yellow ()
 love.graphics.setColor(255, 255, 0, 255);
end;

function gray ()
love.graphics.setColor(255, 200, 200);
end

function printparam (paramname,coordx,coordy,add)
    if (paramname>0) then love.graphics.print((paramname)..add, coordx, coordy); end
    if (paramname<1) then red (); love.graphics.print((paramname)..add, coordx, coordy); black (); end;
    if (paramname>0) then love.graphics.print((paramname)..add, coordx+1, coordy); end
    if (paramname<1) then red (); love.graphics.print((paramname)..add, coordx+1, coordy); black (); end;
    if (paramname>hpmax)and(paramname~=lives) then green (); love.graphics.print((paramname)..add, coordx, coordy); black (); end;
    if (paramname>hpmax)and(paramname~=lives) then green (); love.graphics.print((paramname)..add, coordx+1, coordy); black (); end;
end

function printp (paramname,coordx,coordy,add)
 
    love.graphics.print((paramname)..add, coordx, coordy); 
    love.graphics.print((paramname)..add, coordx+1, coordy); 
  
 end

if (timerz==40)or(timerz>95)then if(editor==0)and(enemytank==1) then
	
 if (speedtimerpla2>0) then speedtimerpla2=speedtimerpla2-10;  
    man_speedpla2=default_man_speed+150; 
     man_speedpla2am=default_ammo_speed+150;
      end
  if (slowdowntimerPL2>0) then slowdowntimerPL2=slowdowntimerPL2-1;  
    man_speedpla2=default_man_speed/4; 
     man_speedpla2am=default_ammo_speed/4;
      end

 if (freezetimerPL2>0) then freezetimerPL2=freezetimerPL2-1;end;
 if (protecttank>0) then protecttank=protecttank-6; end;
end
end

randomget=math.ceil (math.random(200));--and (randomget==1)
if (editor==0)and(timerz>20)and(timerz<84) then 
  hardened_ammo_get=""; 
  if (solarenergy>1)and(randomget>98) then 

          solarpower=solarpower+math.ceil ( solarenergy);
              if (solarpower>300) then solarpower=300;  end; 
       end

  if (etatimer>0) then etatimer=etatimer-1;end
  if (etatimer<4)and(etatimer>1) then 
    itemshipped=1;
    etatimer=0;  -- shippingzone_y,=0,0;
    love.audio.play (shippingsnd) ;
    shippingzone_y,shippingzone_x=scanobject (29,-5,1);
    b_sh=0;
    for a_sh=1,4,1 do  
      for b_sh=1,5,1 do 
      itemcode=itemshippinglist[itemshipped];
      if (itemcode==nil) then itemcode="56" ;end; 
    printat (shippingzone_x+a_sh,shippingzone_y+b_sh,itemcode);
    xdeliverycompare=isnear2 (shippingzone_x+a_sh,gamey (y)); ydeliverycompare=isnear2 (shippingzone_y+b_sh,gamex(x));
    --smsg1="isnear ( ("..shippingzone_x.."+"..a_sh.."),"..gamey (y)..") ydeliverycompare= isnear (("..shippingzone_y.."+"..b_sh.."),"..gamex (x);
    smsg1="You are smashed by a shipped baggage items."; 
    -- gamex - для преобразования больших реальных пиксельных координат в знакоместные,  не наоборот !!!!
     if (xdeliverycompare==true) and (ydeliverycompare==true) then hp=0;
        love.audio.play (deadsnd) ;
      end; 
    itemshipped=itemshipped+1;
    -- это не для танков!  а только для PL1 i PL 2  т.е. игрока и белого танка настройки параметров 1/!!
       end
     end
     itemshippinglist={};
     countinventory_i=0;
  end
  if (etatimer<1) then etatimer=0; end;
  if (speedtimer>0) then speedtimer=speedtimer-1; 
      man_speed= default_man_speed+300; 
      man_speed2= default_ammo_speed+200;
    end

  if (speedtimer<2) then   
    man_speed= default_man_speed; 
    man_speed2= default_ammo_speed;
      end;
  if (slowdowntimer>0)and(speedtimer<1) then slowdowntimer=slowdowntimer-1; 
      man_speed= default_man_speed/4; 
      man_speed2= default_ammo_speed/4;
    end
    if (slowdowntimer<1) then   slowdowntimer=0;
      man_speed= default_man_speed; 
      man_speed2= default_ammo_speed;
      end;
  
  if (slowdowntimerPL2>0)and(speedtimer<1) then slowdowntimerPL2=slowdowntimerPL2-1; 
      man_speedpla2= default_man_speed/4; 
      man_speed2pla2am= default_ammo_speed/4;
    end
    if (slowdowntimerPL2<1) then   slowdowntimerPL2=0;
      man_speedpla2= default_man_speed; 
      man_speed2pla2am= default_ammo_speed;
      end;

 if (freezetimerPL1>0) then freezetimerPL1=freezetimerPL1-1;end;
 if (damagetimerPL1>0) then damagetimerPL1=damagetimerPL1-1;end;
 if (damagetimerPL1<0) then damagetimerPL1=0;end;
 if (feartimerPL1>0) then feartimerPL1=feartimerPL1-1;end;
 if (feartimerPL1<0) then feartimerPL1=0;end;

 if (freezetimerPL3>0) then freezetimerPL3=freezetimerPL3-1;end;
 end; add="";
 ggfix=0;
 if (ossys=="Android")or(showandroidbar==1) then if(incontrolcentre==0) then     --love.graphics.draw(androidgui, 2,2); 
    wysotamenu=standartsizeusermenu_android_0_cc;
          for i=2,10,1 do  --h udalil
        androidmenup = love.graphics.newImage("Textures/androiduserguiicon"..i..".png");
        if (ammoKEYPL1=="ammo")and (i==2) then green () ; end;
        if (ammoKEYPL1=="ice")and (i==3) then green () ; end;
        if (ammoKEYPL1=="bomb")and (i==4) then green () ; end;
        if (ammoKEYPL1=="")and (i==5) then green () ; end;
        if (ammoKEYPL1=="h")and (i==6) then green () ; end;
        if (ammoKEYPL1=="usermenu")and (i==7) then green () ; end;
        if (ammoKEYPL1=="placeitem")and (i==8) then green () ; end;
        if (ammoKEYPL1=="wopros")and (i==9) then green () ; end;
        if (ammoKEYPL1=="unpack")and (i==10) then green () ; end;
        if (ammoKEYPL1=="prifle")and (i==11) then green () ; end;
       love.graphics.draw(androidmenup, 0,((wysotamenu)*(i-2)),0,scalingleftgui,scalingleftgui);     
       white ();
            end;
   ggfix=standartsizeusermenu_android_0_cc+1; end; end;

 if (ossys=="Android")or(showandroidbar==1) then if(incontrolcentre==1) then     --love.graphics.draw(androidgui, 2,2); 
        wysotamenu=standartsizeusermenu_android_0_cc;
          for i=2,12,1 do  --h udalil
        androidmenup = love.graphics.newImage("Textures/androidCC"..i..".png");
        if (ammoKEYPL1=="ammo")and (i==2) then green () ; end;
        if (ammoKEYPL1=="ice")and (i==3) then green () ; end;
        if (ammoKEYPL1=="bomb")and (i==4) then green () ; end;
        if (ammoKEYPL1=="keys")and (i==5) then green () ; end;
        if (ammoKEYPL1=="express")and (i==6) then green () ; end;
        if (ammoKEYPL1=="lives")and (i==7) then green () ; end;
        if (ammoKEYPL1=="exit")and (i==8) then green () ; end;
        if (ammoKEYPL1=="sell lives")and (i==9) then green () ; end;
        if (ammoKEYPL1=="sell protect")and (i==10) then green () ; end;
        if (ammoKEYPL1=="sell tank")and (i==11) then green () ; end;
        if (ammoKEYPL1=="sell healthpack")and (i==12) then green () ; end;
       love.graphics.draw(androidmenup, 0,((wysotamenu)*(i-2)),0,scalingleftgui,scalingleftgui);     
       white (); 
            end;
    ggfix=standartsizeusermenu_android_0_cc+1; end; end;

 if (ossys=="Android")or(showandroidbar==1) then if(editor==1) then     --love.graphics.draw(androidgui, 2,2); 
          for i=2,12,1 do  --h udalil
        androidmenup = love.graphics.newImage("Textures/androidEA"..i..".png");
       love.graphics.draw(androidmenup, 0,((wysotamenu)*(i-2)),0,scalingleftgui,scalingleftgui);     
          ggfix=standartsizeusermenu_android_0_cc+1;   end;
    end; end;

    if (ossys=="Android")or(showandroidbar==1) then  love.graphics.draw(menuicon, maxwidth-80,0);  -- system menu icon  
     love.graphics.draw(menu_exit, maxwidth-80,maxheight-80);  end; -- system exit game icon   -- turboexit;
    love.graphics.setFont(fontVERYSMALL);
      
  if (build) then 
        if (timerz==5) then green (); end
        local tim = love.timer
        tim.step();
    delta = tim.getDelta();
    local stats = love.graphics.getStats();
    love.graphics.print("RESKUE v0.7 b"..build.." "..ossys.." "..maxwidth.."x"..maxheight.." scaling: 1:"..scaling.." dj-alex.ru (c)"..os.date ().." Memory: Texture: "..string.format("%.2f MB", stats.texturememory / 1024 / 1024).." Lua : "..string.format("%.2f MB", collectgarbage("count") / 1024).." Objs:"..object_to_rendering.." Canvas: "..stats.canvases.."", 1, maxheight-wysotastroki+10);
     --  Drawcalls: "..stats.drawcalls.."  0    0 
     if (timerz==5) then white (); end
        end;
    love.graphics.print("", 8+ggfix, maxheight-wysotastroki*1);
    love.graphics.setFont(fontSMALL);
    love.graphics.print("FPS:"..love.timer.getFPS(), maxwidth-170, maxheight-wysotastroki*1);
    --  Запасной ненужный датчик /"..math.floor(1 / delta)
    
    love.graphics.setFont(fontSMALL);
   if (editor==0)or(huded==1) then  love.graphics.draw(ramkaobjinv, 2+ggfix,2,0,scaling,scaling);end; -- FUCK     нужно как то подправить это. 

    leftpos=rozmiarznak+ggfix;
    wysotamenu=wysotastroki+2;

--wysotamenu=30; 


menu_printed=0;
 if (editor==0)or (editor==1)and (huded==1) then 
 for i=1, #menuplayitems,1 do
    id=menuplayitems[i];-- pagesSC[i][1]; --это просто номер ключа в таблице
        imgf3 =  objs[id+1][3]; -- просто берет название файла.
    if (imgf3==nil) then imgf3="question.png";end; 
    if (imgf3~=nil) then --id"..id.."["..iditem.." ] 
      --if (i==1) then smsg1="ibane imgf3="..imgf3;  end;
            textures3[imgf3] = love.graphics.newImage("Textures/"..imgf3);

            if (imgf3~=nil) then love.graphics.draw(textures3[imgf3], leftpos-rozmiarznak, 3+wysotamenu*menu_printed,0,scaling,scaling);   end;
              menu_printed=menu_printed+1;
       end
    end
   --objectcodeformenu=objs[60+1][3]; 
    love.graphics.setColor(0, 0, 0, 255)
    --printparam (hp,leftpos,8,"/"..hpmax) ;
    --printp (ammo,leftpos,8+1*wysotamenu,"") ;
    printp (bombs,leftpos,8+0*wysotamenu,"") ;
    printp (ice,leftpos,8+1*wysotamenu,"") ;
    printparam (reservedaids,leftpos,8+2*wysotamenu,"[h]") ;
    printparam (lives,leftpos,8+3*wysotamenu,"[r]") ;
    printp (targetremains,leftpos,8+4*wysotamenu,"") ;
 end;   
    white (); 
    
    if (etatimer>0) then love.graphics.print("ETA:"..(etatimer), rightspaceonscreen-140,5+downspaceonscreen+wysotastroki*1);end;
    if (solarenergy>0) then printp ("Solarpower:"..solarpower.." ["..solarenergy.."]", rightspaceonscreen-360,5+downspaceonscreen+wysotastroki*1,"") ; end; 
    if (totalenemies>0) then printp ("Tanks:"..livedtanks, rightspaceonscreen-600,5+downspaceonscreen+wysotastroki*1,"") ; end; 
    if (scientists>0) then printp ("Tanks:"..livedtanks.." scientists="..scientists, rightspaceonscreen-600,5+downspaceonscreen+wysotastroki*1,"") ; end; 

black ();    
 --love.graphics.setColor(255, 255, 255, 255)
 -- менюшку сделать двигаемой или пересмотреть. --font = love.graphics.newFont(rozmiarznak);   отображение "баффов"

if (passthrurock>10000) then  love.graphics.print("!CHEATER!",(timerz), 5+math.random(3));end


green ()
debufftable=rightspaceonscreen-rozmiarznak*6;
 if (tank>0) then love.graphics.print("T",debufftable-20,5+downspaceonscreen+wysotastroki*2); end
 if (protect>0) then  love.graphics.print("P",debufftable-40,5+downspaceonscreen+wysotastroki*2);end
 if (paralysatorrifle>0) then  love.graphics.print("V",debufftable-60,5+downspaceonscreen+wysotastroki*2);end
 if (passthrurock>0) then  love.graphics.print("R",debufftable-80,5+downspaceonscreen+wysotastroki*2);end
 if (acidprotect>0) then  love.graphics.print("A",debufftable-120,5+downspaceonscreen+wysotastroki*2);end
 red () 
 if (freezetimerPL1>0) then  love.graphics.print("F",debufftable-100,5+downspaceonscreen+wysotastroki*2); end
 if (damagetimerPL1>0) then  love.graphics.print("W",debufftable-120,5+downspaceonscreen+wysotastroki*2); end
 if (feartimerPL1>0) then  love.graphics.print("*",debufftable-120,5+downspaceonscreen+wysotastroki*2); end
 if (slowdowntimer>0) then  love.graphics.print("S",debufftable-130,5+downspaceonscreen+wysotastroki*2); end
  if (darkzone>0) then  love.graphics.print("D",debufftable-140,5+downspaceonscreen+wysotastroki*2);end
white () 

white () 
 if (powerstate>0) then  love.graphics.print("Power",rightspaceonscreen-750,5+downspaceonscreen+wysotastroki*1);end
 if (puszkistate>0) then  love.graphics.print("Cannon",rightspaceonscreen-850,5+downspaceonscreen+wysotastroki*1); end
 --if (player2AI==1) then  love.graphics.print("PL2AI",rightspaceonscreen-950,5+downspaceonscreen+wysotastroki*1);end
 
if (hardlevel<1)or(hardlevel>2) then  love.graphics.setBackgroundColor(0, 0, 0); end ; -- фон игры. 

white ();

-- SE приходит неверный, он не может быть ни 17  ни 4 (!) 
if ((zzx<200)or (zzx==255)) then --selectedobject
        
       if (editor==1) then love.graphics.print("Obj1:"..selectedobject..","..objs[((selectedobject+1))][2], maxwidth-700, maxheight-20-wysotastroki*2);
       love.graphics.print("Obj2:"..selectedobject2..","..objs[((selectedobject2+1))][2], maxwidth-700, maxheight-20-wysotastroki);
       object1image =  objs[selectedobject+1][3]; 
         textures[object1image] = love.graphics.newImage("Textures/"..object1image);
               if (object1image~=nil) then love.graphics.draw(textures[object1image], maxwidth-800, maxheight-20-wysotastroki*2,0,scaling,scaling);   end;
        object2image =  objs[selectedobject2+1][3];  
         textures[object2image] = love.graphics.newImage("Textures/"..object2image);
               if (object2image~=nil) then love.graphics.draw(textures[object2image], maxwidth-800, maxheight-20-wysotastroki,0,scaling,scaling);   end;
        end;
                end;
 
 if (ossys=="rospoznawanie_taczpada") then -- disabled
    love.graphics.print("ax="..(ax), 8, 250);
    
    love.graphics.print("adx="..(ady), 8, 270);
    love.graphics.print("ady="..(ady), 8, 280);
    --love.graphics.print("t_id="..(t_id), 8, 290);
    love.graphics.print("id="..(id), 8, 300);
end

    if (otladka==1)and(editor==0)and(incontrolcentre==0) then 
       
    if (zzzammo) then love.graphics.print("zzzammo="..string.byte(zzzammo).."zzxammo="..(zzxammo), 8, 360+wysotastroki*7);end;
    if (zzz) then love.graphics.print("SCRN$(zzz)="..string.byte(zzz), 8, 370+wysotastroki*8); -- display check SCREEN$ function  zzx- afterprint
    love.graphics.print("таймер="..timerz, 8, 410); -- następna pozycja   
  
end 
   
            end;   -- текст названия обьекта берется только так!  иначе будет неверно!



  if ((incontrolcentre==1)and(editor<1))and(ossys~="Android") then  -- для андроид должна отображатся другая панель вместо основной для ходьбы.
  	love.graphics.setFont(fontSMALL);
         lprint("CC",38+ggfix,startpositionuserPCmenuY-wysotastroki*2);
        if (reservedaids>2) then  lprint("CC_1_",8+ggfix,startpositionuserPCmenuY);end;
        lprint("CC_2_",8+ggfix,startpositionuserPCmenuY+wysotastroki);
        if (tank>0) then lprint("CC_3_",8+ggfix,startpositionuserPCmenuY+wysotastroki*2);end;
        if (protect>0) then lprint("CC_4_",8+ggfix,startpositionuserPCmenuY+wysotastroki*3); end;
        if (hardlevel~=1) then
              lprint("CC_5_",8+ggfix,startpositionuserPCmenuY+wysotastroki*5);
              lprint("CC_6_",8+ggfix,startpositionuserPCmenuY+wysotastroki*6);
               end
              lprint("CC_7_",8+ggfix,startpositionuserPCmenuY+wysotastroki*7);
              lprint("CC_8_",8+ggfix,startpositionuserPCmenuY+wysotastroki*8);
              lprint("CC_9_",8+ggfix,startpositionuserPCmenuY+wysotastroki*9);
              if (countinventory>1) then lprint("CC_10_",8+ggfix,startpositionuserPCmenuY+wysotastroki*10); end;
        lprint("SP_EXIT",60+ggfix,startpositionuserPCmenuY+wysotastroki*13);

end

     love.graphics.setFont(fontSMALL);
      if (editor==1)  then  lprint("EDITOR",18+ggfix,0);  end ;--startpositionuserPCmenuY
        if ((huded==0)) then love.graphics.setFont(fontVERYSMALL);  wED=wysotastroki-13;end;
        
       if ((huded>0)) then  wED=wysotastroki-7; end;
       

  if (editor==1)and (huded==0) then 
        maximumeditorpoint=26;
    for e=1,maximumeditorpoint,1 do 
        if (e~=11) then lprint("ED_"..e.."_",8+ggfix,wED*e); end
        if(xdataarchived==1)and(e==11) then lprint("ED_11_",8+ggfix,wED*11); end; --12
    end              
       lprint("ED_PS_LEVEL",8+ggfix,wysotastroki*33);
       
   
end
if (editor==1) then
	love.graphics.print("X="..gamex (x).." realX="..x, 4*rozmiarznak,0 )
   love.graphics.print("Y="..gamey (y).." realY="..y, 8*rozmiarznak,0);
   love.graphics.print("PC1 xdata["..coord (gamey (y),gamex (x)).."]= objectcode="..string.byte (screens (gamey (y),gamex (x))), 18*rozmiarznak, 0);

end

if (editor==1)and (huded==1)  then
	love.graphics.setFont(fontSMALL);
	love.graphics.print("===YOUR=======", 0, wED*10);
    love.graphics.print("freeze="..freezetimerPL1, 0, wED*11);
      love.graphics.print("damage="..damagetimerPL1, 0, wED*12);
love.graphics.print("slow="..slowdowntimer, 0, wED*13);
love.graphics.print("protect="..protect, 0, wED*14);
love.graphics.print("speed="..speedtimer, 0, wED*15);
love.graphics.print("====WHITETANK========", 0, wED*16);
--love.graphics.print("====ENEMYTANK=====", 0, wED*20);
    love.graphics.print("slowdown="..slowdowntimerPL2, 0, wED*17);
      love.graphics.print("hptank="..hptank, 0, wED*18);
love.graphics.print("protect="..protecttank, 0, wED*19);
love.graphics.print("speed="..speedtimerpla2, 0, wED*20);
love.graphics.print("freeze="..freezetimerPL2, 0, wED*21);
--love.graphics.print("================", 0, wED*26);
         end

  if (editor==1)and (huded==3)and(totalenemies>0)  then
  	love.graphics.setFont(fontSMALL);
  	typt,xt,yt,hpt,rotate,man_xpla3,man_ypla3,tanks_mov,freezetanks,speedtanks,protecttanks,x_tanks,y_tanks,m_x_tanks,m_y_tanks,tanks_am,rotate_t,feartanks,aitype,slowdowntimertanks,damagetimertanks,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pax0,pax1,pax2=enemies[selectedtankid]:get(); --,rotate[a]  
  	        maximumeditorpoint=10;
    for e=1,maximumeditorpoint,1 do 
      varname=lprint("EDTANKI_"..e.."_",8+ggfix,wED*e); 

    end              
     love.graphics.print("Creature ID="..selectedtankid.."/"..totalenemies, 0, wED*14);
   love.graphics.print("Xtnk="..gamex (xt).." rX="..xt, 0, wED*15)
   love.graphics.print("Ytnk="..gamey (yt).." rY="..yt, 0, wED*16);
   love.graphics.print("PC1 x["..coord (gamey (yt),gamex (xt)).."]= obj="..string.byte (screens (gamey (yt),gamex (xt))), 0, wED*17);

         end

if (editor==1)and (huded==5)and(totalammo>0)  then
	love.graphics.setFont(fontSMALL);
	if (selectedammoid==nil) then selectedammoid=0; end;
  	typta,start_x,start_y,x_ammo,y_ammo,m_x_ammo,m_y_ammo,ammo_moving,rotate_tt,renderammoshot_ammos=ammoX[selectedammoid]:get();
  	if (typta=="") then ammo_moving=false; end; 
  	if (ammo_moving==true) then ammo_bukwy_move="true" else ammo_bukwy_move="false" end; 

  	        maximumeditorpoint=10;
    for e=1,maximumeditorpoint,1 do 
      varname=lprint("EDAMMO_"..e.."_",8+ggfix,wED*e); 

    end              
     love.graphics.print("A ID="..selectedammoid.."/"..totalammo, 0, wED*15);
   love.graphics.print("x_="..gamex (x_ammo).." rX="..x_ammo, 0, wED*17)
   love.graphics.print("y_="..gamey (y_ammo).." rY="..y_ammo, 0, wED*18);
   love.graphics.print("PC1 x["..coord (gamey (y_ammo),gamex (x_ammo)).."]= obj="..string.byte (screens (gamey (y_ammo),gamex (x_ammo))), 0, wED*19);

         end


if (editor==1)and (huded==2)  then
	  reactmove_code=ext_objs_param (selectedobject,6);
 	 reactmove_code_en=ext_objs_param (selectedobject,6);
 	damagestageid=ext_objs_param (selectedobject,6);
 	objectcode_bomb=ext_objs_param (selectedobject,7);
 	objectcode_ice=ext_objs_param (selectedobject,8);
	 objectcode_ammo=ext_objs_param (selectedobject,9);
 	objectcode_ammo_en=ext_objs_param (selectedobject,10);
 	 rikoszet=ext_objs_param (selectedobject,11);
 	 unpack=ext_objs_param (selectedobject,15);
 	 cena=ext_objs_param (selectedobject,16);

    for e=1,10,1 do 
      varname=lprint("EDPOBJ_"..e.."_",8+ggfix,wED*e); 

    end     
    love.graphics.print("Object ID="..selectedobject, 0, wED*16);
  
end

love.graphics.setFont(fontSMALL);	

--and(selectmusic==1)
  if (editor==0)and(incontrolcentre==0)and(otladka==0)and(ossys~="Android") then 
  	love.graphics.setFont(fontVERYSMALL);
     --   lprint("PLAYER",38+ggfix,startpositionuserPCmenuY);
        lprint("PL_1_",2+ggfix,startpositionuserPCmenuY+wysotastroki);
        lprint("PL_2_",2+ggfix,startpositionuserPCmenuY+wysotastroki*2);
        lprint("PL_3_",2+ggfix,startpositionuserPCmenuY+wysotastroki*3);
        lprint("PL_4_",2+ggfix,startpositionuserPCmenuY+wysotastroki*4);
        if (hardlevel<1) then lprint("PL_5_",8+ggfix,startpositionuserPCmenuY+wysotastroki*5); end;
         lprint("PL_6_",2+ggfix,startpositionuserPCmenuY+wysotastroki*6);
         lprint("PL_7_",2+ggfix,startpositionuserPCmenuY+wysotastroki*7);
         lprint("PL_8_",2+ggfix,startpositionuserPCmenuY+wysotastroki*8);
         if (enemytank==1) then
         love.graphics.print("Hptank="..(hptank).." (numpad0)",8+ggfix,startpositionuserPCmenuY+wysotastroki*9); end;
         

end


 function isnear3 (par1,par2)
                            mn=4*rozmiarznak;
                             if (hp<1) then mn=1;  end;
                            for a=par1-mn,par1+mn,1 do
                                if a==par2 then return true end
                                end    return false;
                        end

	quads= {};
	xxxx=visual_mapsize_horizontal*rozmiarznak;
   yyyy=visual_mapsize_vertical*rozmiarznak;
--RENDERER CODE 
     maximumlines=visual_mapsize_horizontal ;--  это код рендеринга т.е. то что будет визуально. отображать ВСЮ карту не требуется.
    -- maximumlines=mapsize_horizontal; --только для проверки при увеличении этой переменной можно при меньшем размере знака посмотреть всю карту. 
    a=18+cameraleftpos_x_hor+mapsize_horizontal*camerauppos_y_vert; -- пропускаем параметры уровня, они хранятся в xdata.
    virtobjecttable ={};  -- по xdata[a] получаем данные уровня и изначальные параметры.
    -- этот код показывает только видимую часть карты и наличие редактора не должно на него влиять. код редакторов ниже убдет.
  
gr = love.graphics;
--
randomget=math.ceil (math.random(1));--and (randomget==1)
if (map_changed>1) then map_changed=map_changed-1; end     --  map_changed==1;   
if (map_changed>0) then lock_render_on_last_image=0; else lock_render_on_last_image=1; end; 
--smsg1="map_changed="..map_changed.." lock_render_on_last_image="..lock_render_on_last_image; 
--if (pause==1) then lock_render_on_last_image=1 else lock_render_on_last_image=0; end; 
if (renderer==1)and (lock_render_on_last_image==0)and(pause==0) then 

GAMEWINDOWCANVAS = love.graphics.newCanvas(xxxx, yyyy) -- x,y, это создание пустой картинки для наполнения ее картой спрайтов.
nonetexture="1empty.png"; 
IMAGESX = {};
object_to_rendering=0;   -- всё работает ТОЛЬКО если visual_mapsize_horizontal=250 чего НИКОГДА не должно быть
 love.graphics.setCanvas(GAMEWINDOWCANVAS);
     for yy=1,0+visual_mapsize_vertical,1 do   -- этот цикл делает рендеринг, он же должен сделать активную копию карты.    --5*editor+maximumvertical
        for xx=1,0+visual_mapsize_horizontal,1  do           --mapsize_horizontal заменен и этот блок не нужен.   
          if (xx>visual_mapsize_horizontal) then xx=mapsize_horizontal; end; --ограничивает зону видимости правилом  xdata никуда не исчезнет, но видно будет только эту область
             if(a<55624) then objectcodenow=string.byte ((xdata[a]));else objectcodenow=0; end -- должно защитить от сбоев при увеличении visual_mapsize_horizontal
            if (xdata[a]) then objectcodenowID=xdata[a] else objectcodenowID=0; end;      
            IDobj=objs[objectcodenow+1][1]; -- [1] ID обьекта [2] имя [3] файл  [4]Reactmove- DamageID/255-blockmove!5-Reactmove2(enemy) DamageID/255-blockmove!!7-reactbomb (1=подрываемый)>1-DAMAGETAGE! 8-reactice 1-замор/как предмет,ID/255-blockmove) 6-DAMAGEID,255 no shot ammo or bomb(def)!!9-reactammo(255 - blockmove)!10-reactammo2(enemy)255 - blockmove!!! 11-rikoszet(1-enable) 12RUS!13KOD_OPIS!14noedit!15unpack!16cenatowara!17reactammosnd-UNUSED!18-tankważność!19takeable!20realrikoszet
            if ((IDobj)) then  --local imgf =  objs[objectcodenow+1][3];      -- название файла текстуры
            IMAGESX[object_to_rendering]=IMAGES[objectcodenow + 1];
            OBJECTPRINTNOW_IMAGESX=IMAGESX[object_to_rendering];
            postobjectX=xx*rozmiarznak;
            postobjectY=yy*rozmiarznak;
             if (defacescreen==1) then randomcolorbw () ;  if (timerz>3) then defacescreen=0; end; end;
             if (defacescreen==2) then randomcolor () ; if (timerz>3) then defacescreen=0; end; end; 
			 if (OBJECTPRINTNOW_IMAGESX==nil) then smsg1="imagesx==NIL!!!!111obj"..object_to_rendering;end; 
			if (OBJECTPRINTNOW_IMAGESX~=nil) then 
			love.graphics.draw(ATLAS,OBJECTPRINTNOW_IMAGESX,postobjectX, postobjectY,0,scaling,scaling);
    		object_to_rendering=object_to_rendering+1; --+(yy*(mapsize_horizontal-visual_mapsize_horizontal)); 
    		end;
           
          if (darkzone==1)and(editor==0)then -- радиус светлости вокруг задается тут и должен зависет от знакоместа
             xdarkcompare=isnear3 (postobjectX,x); ydarkcompare=isnear3 (postobjectY,y);           
              if (xdarkcompare~=true) or (ydarkcompare~=true) then  cc=math.random(6); love.graphics.setColor(cc, cc,cc, 255);else white (); end;
          end
            postCANVASobjectX=gamescreenfixhorizontal*rozmiarznak+240+0*xx*rozmiarznak;
            postCANVASobjectY=gamescreenfixvertical*rozmiarznak+0*yy*rozmiarznak;
           white (); 
            end;
            a=a+1;

        end;
        a=a+mapsize_horizontal-visual_mapsize_horizontal;
    end;
	end

  love.graphics.setCanvas()

    
  --end

if (renderer==1) then  
if (GAMEWINDOWCANVAS) then gr.draw(GAMEWINDOWCANVAS,postCANVASobjectX,postCANVASobjectY) ; end; -- canvas test  e
if(map_changed<2) then map_changed=0;end; 


		end; 

--end; --// of for c cyclef
-- тут заканчивается отрисовка игрового поля.
-- тут начинается отрисовка блока инвентаря (предметный)
  if (renderer==1) then  inventoryvisualcode=0;
    textures2={};
   countinventory=#inventoryitemtable
   if (countinventory>0) then 
   for aii=1,countinventory,1 do 
         inventoryvisualcode=inventoryitemtable[aii];
        IDobj=objs[inventoryvisualcode+1][1]; -- [1] ID обьекта [2] имя [3] файл [4] особые свойства.
         postobjectX=ggfix+rozmiarznak+aii*rozmiarznak;
         postobjectY=1*rozmiarznak;
               if ((IDobj)) then
                -- название файла текстуры

                   imgf2 =  objs[inventoryvisualcode+1][3]; -- просто берет название файла.
    if (otladka==1) then smsg1="invencode="..inventoryvisualcode.." countinv="..countinventory.." iitable[0]="..inventoryitemtable[1].." IDobj="..IDobj.." imgf2="..imgf2; end; 
                       -- если нужная текстура еще не загружена
               -- if( not textures[imgf2] ) then  -- удален т.к. мешает работе инвентаря и делает невозможным показ одинаковых обьектов.
                    -- подгружаем её и пихаем в массив текстур
                    textures[imgf2] = love.graphics.newImage("Textures/"..imgf2); -- build 4200 textures2 zamenen na textures1  bez posledstwij 
                    if (imgf2~=nil) then love.graphics.draw(textures[imgf2],postobjectX, postobjectY,0,scaling,scaling);   end;
                 --     end;
               end; 
     end
   end
 end
-- тут заканчивается отрисовка блока инвентаря
-- отрисовка  графического количества жизни и патрон.
 love.graphics.setFont(font);
  if (ossys=="Android")or(showandroidbar==1) then
  love.graphics.draw(androidguicursor, androidcursorrightposition ,cursormaxheight,0,scalingandroidcursor,scalingandroidcursor); end;

 smsgfix=0; if (scaling>1) then smsgfix=150*scaling; end;
    love.graphics.print("LEVEL "..levelnumber.."      Score:"..score, leftspaceonscreen, downspaceonscreen+wysotastroki*1);
   if (hp>0) then  if (hp>90) then  green (); end;
                    if (hp<91) then yellow () ; end; 
                    if (hp<30) then red () ; end; 
    
    for xxhp=0,rozmiarznak/2-3,1 do  
    love.graphics.rectangle("fill", leftspaceonscreen-smsgfix,xxhp, hp*1.6, 1,0,0);
    end
    
    white ();
      end

     
           if (ammo>0) then  if (ammo>100) then  green (); end;
                    if (ammo<101) then yellow () ; end; 
                    if (ammo<50) then red () ; end; 
                    
    if ((ammo>0)) then 
      for xxhp=rozmiarznak/2,rozmiarznak-3,1 do
    love.graphics.rectangle("fill", leftspaceonscreen-smsgfix,xxhp, ammo*1.6, 1,0,0);
      end
    end;
    white ();
      end

--selectedobject
        if (language==2) then love.graphics.print(""..objs[((zzx+1))][12], 480, 0); end; -- Печать обьекта к которому прикоснулись в последний раз.  
        if (language==1) then love.graphics.print(""..objs[((zzx+1))][12], 480, 0); end; -- Печать обьекта к которому прикоснулись в последний раз. 
        if (language==0) then love.graphics.print(""..objs[((zzx+1))][2], 480, 0); end; -- Печать обьекта к которому прикоснулись в последний раз. 

if (pause==1) then      love.graphics.setFont(fontVERYBIG);   randomcolor ()  ;  lprint("PAUZA",433,410+smsgfix);   love.graphics.setFont(font);white (); end;

   if (targetremains<1)and(editor==0) then 
      love.graphics.setFont(fontVERYBIG);green ();
       if (ossys=="Android") then lprint("ANDR_NEXT_LEVEL", 433,410+smsgfix+h); end;
       if (ossys~="Android") then lprint("WIN", 433,410+smsgfix+h); end;
       love.graphics.setFont(font) ; white ();
    end;
if ((hp<1)and(lives>0))and(editor==0) then 
      love.graphics.setFont(fontVERYBIG);  red () ; 
      
        if (ossys=="Android") then lprint("ANDR_DEAD", 433,410+smsgfix+h); end;
       if (ossys~="Android") then lprint("DEAD", 433,410+smsgfix+h); end;
      love.graphics.setFont(font); white ();
    end;
    if ((lives<1)and(hp<1))and(editor==0) then 
        randomcolorbw ();

      love.graphics.setFont(fontVERYBIG);     lprint("GAMEOVER", 433,410+smsgfix); love.graphics.setFont(font);
        white () ;
    end;

love.graphics.print("SMSG:"..smsg1, leftspaceonscreen*0 ,downspaceonscreen+wysotastroki*2); 

 if (menuoption>0) then 
if (ossys=="Android")or(otladka==1) then love.graphics.print("Mode:"..ammoKEYPL1, leftspaceonscreen+250,downspaceonscreen+wysotastroki*2);   end;

if (otladka==1) then
 love.graphics.print("SMSG2:"..smsg2, 0,downspaceonscreen+wysotastroki*1); 
 love.graphics.print("SMSG3:"..smsg3, 0,downspaceonscreen+wysotastroki*0);   
 love.graphics.print("SMSG4:"..smsg4, 0,downspaceonscreen+wysotastroki*-1);  
 love.graphics.print("movePL1:"..movePL1, leftspaceonscreen,499+smsgfix-11*wysotastroki); 
 
                   end;
      end

    return 1;
end;


function string:split( inSplitPattern, outResults )
   if not outResults then
      outResults = { }
   end
   local theStart = 1
   local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
   while theSplitStart do
      table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
      theStart = theSplitEnd + 1
      theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
   end
   table.insert( outResults, string.sub( self, theStart ) )
   return outResults
end

function love.resize (w,h)
  maxwidth=w; 
  maxheight=h;
  reschange (6) ;
 end

-- Автосохранение при выходе из игры. (любым способом , хоть Alt-F4) 
function autosave_execute ()
   if (score>10) then 
   execute="savegame";ammoKEYPL1="savegame";  selectedoptionmenu=0;menu=0;
   savegamename="autosave-2";
   ammoKEYPL1="";
    xdatapreparetowrite (); 
      -- в этом месте должны быть переданы наигранные параметры для сохранения игры. 
         datatowrite=table.concat(xdata);
   levelname="autosave-2" ;
   sourcewrite(datatowrite,levelname); -- новый способ save уровня через IO LUA  
   renderer=1; selectedoptionmenu=0;pause=0;
    end; 
end

-- Автосохранение при выходе из игры. (любым способом , хоть Alt-F4) 
function love.quit ()
   if (score>10) then 
   execute="savegame";ammoKEYPL1="savegame";  selectedoptionmenu=0;menu=0;
   savegamename="autosave-exit";
   ammoKEYPL1="";
   xdatapreparetowrite ();
      -- в этом месте должны быть переданы наигранные параметры для сохранения игры. 
         datatowrite=table.concat(xdata);
   levelname="quicksave-autoexit" ;
          
    sourcewrite(datatowrite,levelname); -- новый способ save уровня через IO LUA  
        renderer=1; selectedoptionmenu=0;pause=0;
  end; 
end

function love.run()
 
  if love.math then
    love.math.setRandomSeed(os.time())
  end
 
  if love.load then love.load(arg) end
 
  -- We don't want the first frame's dt to include time taken by love.load.
  if love.timer then love.timer.step() end
 
  local dt = 0
 
  -- Main loop time.
  while true do
    -- Process events.
    if love.event then
      love.event.pump()
      for name, a,b,c,d,e,f in love.event.poll() do
        if name == "quit" then
          if not love.quit or not love.quit() then
            return a
          end
        end
        love.handlers[name](a,b,c,d,e,f)
      end
    end
 
    -- Update dt, as we'll be passing it to update
    if love.timer then
      love.timer.step()
      dt = love.timer.getDelta()
    end
 
    -- Call update and draw
    if love.update then love.update(dt) end -- will pass 0 if love.timer is disabled
 
    if love.graphics and love.graphics.isActive() then
      love.graphics.clear(love.graphics.getBackgroundColor())
      love.graphics.origin()
      if love.draw then love.draw() end
      love.graphics.present()
    end
 
    if love.timer then love.timer.sleep(0.0005) end
  end
 
end

 
--This is beatiful example of blinded translation from ZX spectrum era basic to modern and nifty Love2D 
