require"import"
import "android.widget.*"
import "android.view.*"
function onKeyDown()end
function getStatusBarHeight()
  local resid=activity.getResources().getIdentifier("status_bar_height","dimen","android")
  if resid>32552732*0 then
    return activity.getResources().getDimensionPixelSize(resid*((32552732-12345678)/2-10000000-(103001+525)))
  end
end


--下面是顶部颜色，可以设置渐变
local clr1=0xFF333333--0xFF000000--0xFF9CCC65--0xFF508CFE--0xFF66BB6A--0xFFC0CA33--0xFF2196F3
local clr2=0xFF333333--0xFFFAFAFA--0xFF66BB6A--0xFF3AB8FE--0xFF388E3C--0xFFFDD835--0xFF29B6F6

jdpuk={
  LinearLayout,
  orientation="vertical",
  layout_width="fill",
  layout_height="fill",
  {
    LinearLayout,
    layout_width="fill",
    --kkgroundColor="#9CCC65",
    backgroundDrawable=GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,{clr1,clr2}),
    paddingTop=getStatusBarHeight(),

    --
    {
      ToolBar,
      --backgroundColor="#9CCC65",
      backgroundColor=0,
      backgroundDrawable=GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,{clr1,clr2}),--JDPUK
      layout_width="fill",
      layout_height="60dp",
      titleText="专辑下载",--♥♥♥
      returnButtonEnabled=true,
      elevation="-480dp",--未找到改变效果
      {
        ImageView;--图片控件
        src='https://sneer0.github.io/ycdm/公用/ss.png';--图片路径
        layout_width='25dp';--宽度
        layout_height='25dp';--高度
        scaleType='fitXY';--图片显示类型
        layout_gravity='right|center';--重力
        ColorFilter='0xffffffff';--图片着色
        layout_marginRight='5%w';--右距
        --style="?android:attr/buttonBarButtonStyle";--按钮特效
        id="ss",
      };
    },
  },
  {
    ScrollView,
    layout_width="fill",
    layout_height="fill",
    verticalScrollBarEnabled=(3255==2732),
    verticalFadingEdgeEnabled=(not 32552732==32552732),
    overScrollMode=View.OVER_SCROLL_NEVER-(32552732*0),
    {
      RelativeLayout,
      layout_width="fill",
      layout_height="fill",

      {
        LinearLayout,
        orientation="vertical",
        layout_width="fill",

        {
          LinearLayout,
          --CardView,
          layout_margin="10dp",--上目录向内居中
          --CardBackgroundColor="#FFEEEEEE",
          layout_width="fill",
          --radius="1dp",--没有改变效果同下
          --elevation="1dp",
          {
            LinearLayout,
            layout_width="fill",
            orientation="vertical",
            {
              ListView,
              id="list",
              layout_width="fill",
              layout_height="1100dp",--♦♦♦♦♦♦♦♦显示所有按钮的框的长度
              dividerHeight="0dp",--项目间的横线
            },
          },
        },
        {
          LinearLayout,
          orientation="vertical",
          layout_margin="20dp",--项目推出边界
          layout_width="fill",
          layout_height="50dp",--下边距提高
          gravity="center",
        },
      },
    },
  },
}

activity.setContentView(loadlayout(jdpuk))

adpd={

  {
    text={
      text="️直接帮你传到网易音乐云盘💥",--●1●
    },
  },
  {
    text={
      text="2004年《被禁忌的游戏》",--●1●
    },
  },
  {
    text={
      text="2005年《梵高先生》",--●2●
    },
  },
  {
    text={
      text="2006年《这个世界会好吗》",--●3●
    },
  },
  {
    text={
      text="2009年《工体东路没有人》",--●4●
    },
  },
  {
    text={
      text="2009年《我爱南京》",--●5●
    },
  },
  {
    text={
      text="2010年《你好，郑州》",--●6●
    },
  },
  {
    text={
      text="2011年《F》",--●7●
    },
  },
  {
    text={
      text="2013年《108个关键词》",--●8●
    },
  },
  {
    text={
      text="2014年《1701》",--●9●
    },
  },
  {
    text={
      text="2014年《勾三搭四》",--●10●
    },
  },
  {
    text={
      text="2015年“看见”巡演北京站",--●11●
    },
  },
  {
    text={
      text="2015年《i.O》",--●12●
    },
  },
  {
    text={
      text="2016年《8》",--●13●
    },
  },
  {
    text={
      text="2016年《动静》",--●14●
    },
  },
  {
    text={
      text="2016年《在每一条伤心的应天大街上》",--●15●
    },
  },
  {
    text={
      text="2017年《电声与管弦乐》",--●16●
    },
  },
  {
    text={
      text="2018年《爵士与不插电新编12首》",--●17●
    },
  },
  {
    text={
      text="限量未发售专辑",--●18●
    },
  },
  {
    text={
      text="更多李志相关文件 ",--●19●
    },
  },
  {
    text={
      text="批量下载全部歌曲☚",--●20●
    },
  },

}

items={
  LinearLayout,
  layout_width="fill",
  orientation="horizontal",
  {
    RelativeLayout,
    layout_width="fill",
    gravity="center|left",
    layout_marginTop="15dp",--♦♦♦上栏目触控效果间距
    layout_marginBottom="15dp",--♦♦♦下栏目触控效果间距
    layout_marginLeft="12dp",--所有项目右位移
    layout_marginRight="12dp",--所有项目左位移
    {
      TextView,
      id="text",
      textSize="16sp",--项目字体大小
      textColor="#505050",
    },
    {
      TextView,
      layout_alignParentRight=true,
      text="⟩",--箭头♥♥♥
      textSize="15sp",--项目右箭头大小
      textColor="#888888",
    },
  },
}

adapter=LuaAdapter(this,adpd,items)
list.Adapter=adapter
list.onItemClick=function(adp,view,pos,id)
  ({

    function()--●传云盘开始●
      对话框()
      .设置标题("帮你传到网易云音乐云盘")
      .设置消息("❶由于私聊人数太多，实在无力帮到每一个人，以后只能帮捐赠过APP的铁子传歌啦，望理解。\n❷传云盘后可以直接用网易云音乐听李志的歌，还可以加进歌单、在歌单内直接搜索歌曲，听歌更方便。\n❸捐赠前请仔细阅读《捐赠须知》，所有问题都写的很清楚，精力有限，急听勿捐，啰嗦勿扰！！")
      .设置积极按钮("捐赠APP",function()
        进入子页面("调用",{标题="捐赠APP",链接="https://support.qq.com/embed/phone/191061/blog/505761"})
      end)
      .设置中立按钮("关于云盘",function()
        进入子页面("浏览器",{标题="关于云盘",链接="https://m.baidu.com/s?wd=网易云音乐云盘在哪打开"})
      end)
      .显示() 
    end,--结束●传云盘结束●

    function()--●1●
      进入子页面("调用",{标题="2004年《被禁忌的游戏》",链接="https://lanzoui.com/b06s2yt2h"})
    end,--结束●1●

    function()--●2●
      进入子页面("调用",{标题="2005年《梵高先生》",链接="https://lanzoui.com/b06s2yv1i"})
    end,--结束●2●

    function()--●3●
      进入子页面("调用",{标题="2006年《这个世界会好吗》",链接="https://lanzoui.com/b06s2yv4b"})
    end,--结束●3●

    function()--●4●
      进入子页面("调用",{标题="2009年《工体东路没有人》",链接="https://lanzoui.com/b06s2yv9g"})
    end,--结束●4●

    function()--●5●
      进入子页面("调用",{标题="2009年《我爱南京》",链接="https://lanzoui.com/b06s2yvah"})
    end,--结束●5●

    function()--●6●
      进入子页面("调用",{标题="2010年《你好，郑州》 ",链接="https://lanzoui.com/b06s2yvda"})
    end,--结束●6●

    function()--●7●
      进入子页面("调用",{标题="2011年《F》",链接="https://lanzoui.com/b06s2yvhe"})
    end,--结束●7●

    function()--●8●
      进入子页面("调用",{标题="2013年《108个关键词》",链接="https://lanzoui.com/b06s2yvpc"})
    end,--结束●8●

    function()--●9●
      进入子页面("调用",{标题="2014年《1701》",链接="https://lanzoui.com/b06s2ywzi"})
    end,--结束●9●

    function()--●10●
      进入子页面("调用",{标题="2014年《勾三搭四》",链接="https://lanzoui.com/b06s2yyqb"})
    end,--结束●10●

    function()--●11●
      进入子页面("调用",{标题="2015年“看见”巡演北京站 ",链接="https://lanzoui.com/b06s2z07e"})
    end,--结束●11●

    function()--●12●
      进入子页面("调用",{标题="2015年《i.O》",链接="https://lanzoui.com/b06s2z0na"})
    end,--结束●12●

    function()--●13●
      进入子页面("调用",{标题="2016年《8》",链接="https://lanzoui.com/b06s2z0pc"})
    end,--结束●13●

    function()--●14●
      进入子页面("调用",{标题="2016年《动静》",链接="https://lanzoui.com/b06s2z11e"})
    end,--结束●14●

    function()--●15●
      进入子页面("调用",{标题="2016年《在每一条伤心的应天大街上》",链接="https://lanzoui.com/b06s2z1be"})
    end,--结束●15●

    function()--●16●
      进入子页面("调用",{标题="2017年《电声与管弦乐》",链接="https://lanzoui.com/b06s2z1dg"})
    end,--结束●16●

    function()--●17●
      进入子页面("调用",{标题="2018年《爵士与不插电新编12首》 ",链接="https://lanzoui.com/b06s2z1gj"})
    end,--结束●17●

    function()--●18●
      items={}
      table.insert(items,"0001年《李志早期歌曲》")
      table.insert(items,"0002年《李志翻唱歌曲》")
      table.insert(items,"0003年《无专辑歌曲》")
      table.insert(items,"2009年《2009年10月16日事件》")
      table.insert(items,"2011年《Imagine Live》")
      table.insert(items,"2014年《李志郑州站》")
      table.insert(items,"2015年《0808杭州酒球会》")
      table.insert(items,"2016年《北京不插电现场》")
      table.insert(items,"2019年《洗心革面》")
      AlertDialog.Builder(this)
      .setTitle("未发售专辑(珍藏版)")--标题
      .setItems(items,{onClick=function(l,v) 
          if items[v+1]=="0001年《李志早期歌曲》" then
            进入子页面("调用",{标题="0001年《李志早期歌曲》",链接="https://lanzoui.com/b06t7mxyh"})
          end
          if items[v+1]=="0002年《李志翻唱歌曲》" then
            进入子页面("调用",{标题="0002年《李志翻唱歌曲》",链接="https://lanzoui.com/b06t7myod"})
          end
          if items[v+1]=="0003年《无专辑歌曲》" then
            进入子页面("调用",{标题="0003年《无专辑歌曲》",链接="https://lanzoui.com/b06t7pe7e"})
          end
          if items[v+1]=="2009年《2009年10月16日事件》" then
            进入子页面("调用",{标题="2009年《2009年10月16日事件》",链接="https://lanzoui.com/b06sfnwyj"})
          end
          if items[v+1]=="2011年《Imagine Live》" then
            进入子页面("调用",{标题="2011年《Imagine Live》",链接="https://lanzoui.com/b06sfnwpa"})
          end
          if items[v+1]=="2014年《李志郑州站》" then
            进入子页面("调用",{标题="2014年《李志郑州站》",链接="https://lanzoui.com/b06t7p4he"})
          end
          if items[v+1]=="2015年《0808杭州酒球会》" then
            进入子页面("调用",{标题="2015年《0808杭州酒球会》",链接="https://lanzoui.com/b06t7p46d"})
          end
          if items[v+1]=="2016年《北京不插电现场》" then
            进入子页面("调用",{标题="2016年《北京不插电现场》",链接="https://lanzoui.com/b06sfnwxi"})
          end
          if items[v+1]=="2019年《洗心革面》" then
            进入子页面("调用",{标题="2019年《洗心革面》",链接="https://lanzoui.com/b06s2z25e"})
          end
        end})
      .show() 
    end,--结束●18●

    function()--●19●
            进入子页面("浏览器",{标题="《李志自传》",链接=("https://lanzoui.com/b06ugp0le")})
    end,--结束●19●

    function()--●20●
      对话框()
      .设置标题("批量下载全部歌曲")
      .设置消息("❶加入官方QQ群1134955984\n❷进群请务必仔细阅读群公告\n❸在群文件找到相关压缩文件")
      .设置积极按钮("加群下载",function()
        进入子页面("调用",{标题="加歌友群",链接="https://support.qq.com/embed/phone/191061/blog/509431"})
      end)
      .显示()
    end,--结束●20●

  })[id]()
end

ss.onClick=function()--点击事件
  进入子页面("调用",{标题="搜索李志歌曲",链接="https://lanzoui.com/b04ak7b5i"})
end
