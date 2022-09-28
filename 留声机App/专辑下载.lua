require"import"
import "android.widget.*"
import "android.view.*"
function onKeyDown()end
function getStatusBarHeight()
  local resid=activity.getResources().getIdentifier("status_bar_height","dimen","android")-- 3 2 5 5 2 7 3 2
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
    --backgroundColor="#9CCC65",
    backgroundDrawable=GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,{clr1,clr2}),--3-2-5-5-2-7-3-2--
    paddingTop=getStatusBarHeight(),
    {
      ToolBar,
      --backgroundColor="#9CCC65",
      backgroundColor=0,
      backgroundDrawable=GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,{clr1,clr2}),--JDPUK
      layout_width="fill",
      layout_height="60dp",
      titleText="专辑下载",--♥♥♥
      --subTitle="32552732",
      returnButtonEnabled=true,
      elevation="-480dp",--未找到改变效果
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
              layout_height="1150dp",--♦♦♦♦♦♦♦♦显示所有按钮的框的长度
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
      text="🔍搜索李志全部歌曲",--●1●
    },
  },
  {
    text={
      text="☁️直接帮你传到网易音乐云盘",--●1●
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
      layout_alignParentRight=true,--32552732
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

    function()--●第三方搜索●
      items={}--第三方搜索开始♦♦♦♦
      table.insert(items,"投稿下架歌曲")
      table.insert(items,"第三方搜索❶")
      table.insert(items,"第三方搜索❷")
      table.insert(items,"第三方搜索❸")
      AlertDialog.Builder(this)
      --.setTitle("空白标题")--标题♥
      .setItems(items,{onClick=function(l,v) 
          if items[v+1]=="投稿下架歌曲" then
            对话框()
            .设置标题("投稿下架歌曲")
            .设置消息("【加群传】加入投稿QQ群，直接发送歌曲文件到群内，大批量文件建议用压缩包。\n\n【在线传】在APP内上传音乐到云端，一次只能上传一个文件，如果投稿歌曲较多，可以把歌曲打包成压缩文件上传。")
            .设置积极按钮("加群投稿",function()
              加QQ群(207900539) 
            end)
            .设置中立按钮("在线投稿",function()
              进入子页面("调用",{标题="投稿歌曲",链接="https://inbox.weiyun.com/tDAtbdZz"})
              复制文本("https://inbox.weiyun.com/tDAtbdZz")
              弹出消息("投稿链接已复制到剪切板")
            end)
            .显示()
          end
          if items[v+1]=="第三方搜索❶" then
            进入子页面("调用",{标题="Audiomack",链接="https://audiomack.com/search"})
            弹出消息("此服务由第三方网站提供 请勿相信广告")
          end
          if items[v+1]=="第三方搜索❷" then
            进入子页面("调用",{标题="lemuzika",链接="https://lemuzika.pro"})
            弹出消息("此服务由第三方网站提供 请勿相信广告")
          end
          if items[v+1]=="第三方搜索❸" then
            进入子页面("调用",{标题="free mp3",链接="https://myfreemp3juices.cc"})
            弹出消息("此服务由第三方网站提供，该网站有时会自动跳转到垃圾广告页面，若遇到这种情况，点击返回即可。请勿相信广告，否则一切损失后果自负！")
          end
        end})
      .show()--第三方搜索结束♦♦♦♦
    end,--结束●第三方搜索●

    function()--●1●
      进入子页面("调用",{标题="01《未分类》",链接="https://sneer.lanzoui.com/b06t7ouvi"}) 
    end,--结束●1●

    function()--●2●
      进入子页面("调用",{标题="02《崔健》",链接="https://sneer.lanzoui.com/b06t7n6vi"})
    end,--结束●2●

    function()--●3●
      进入子页面("调用",{标题="03《刘森》",链接="https://sneer.lanzoui.com/b06t7n80j"})
    end,--结束●3●

    function()--●4●
      进入子页面("调用",{标题="04《老狼》",链接="https://sneer.lanzoui.com/b06t7qtha"})
    end,--结束●4●

    function()--●5●
      进入子页面("调用",{标题="05《伍佰》",链接="https://sneer.lanzoui.com/b06t7qtle"})
    end,--结束●5●

    function()--●6●
      进入子页面("调用",{标题="06《红色摇滚》",链接="https://sneer.lanzoui.com/b06t7qtud"})
    end,--结束●6●

    function()--●7●
      进入子页面("调用",{标题="07《万能青年旅店》",链接="https://sneer.lanzoui.com/b06t7qtzi"})
    end,--结束●7●

    function()--●8●
      进入子页面("调用",{标题="08《现代人乐队》",链接="https://sneer.lanzoui.com/b06t7vanc"}) 
    end,--结束●8●

    function()--●9●
      进入子页面("调用",{标题="09《花粥》",链接="https://sneer.lanzoui.com/b06t7vdna"})
    end,--结束●9●

    function()--●10●
      进入子页面("调用",{标题="10《GALA》",链接="https://sneer.lanzoui.com/b06t7ve6j"})
    end,--结束●10●

    function()--●11●
      进入子页面("调用",{标题="11《王洛宾》",链接="https://sneer.lanzoui.com/b06t7vera"})
    end,--结束●11●

    function()--●12●
      进入子页面("调用",{标题="12《赵雷》",链接="https://sneer.lanzoui.com/b06t7vfih"})
    end,--结束●12●

    function()--●13●
      进入子页面("调用",{标题="13《侃侃》",链接="https://sneer.lanzoui.com/b06t7vfmb"})
    end,--结束●13●

    function()--●14●
      进入子页面("调用",{标题="14《好妹妹乐队》",链接="https://sneer.lanzoui.com/b06t7vfqf"})
    end,--结束●14●

    function()--●15●
      进入子页面("调用",{标题="15《撒娇》",链接="https://sneer.lanzoui.com/b06t7vh9a"})
    end,--结束●15●

    function()--●16●
      进入子页面("调用",{标题="16《宋冬野》",链接="https://sneer.lanzoui.com/b06t7vq6b"})
    end,--结束●16●

    function()--●17●
      进入子页面("调用",{标题="17《晓月老板》",链接="https://sneer.lanzoui.com/b06t7vqgb"})
    end,--结束●17●

    function()--●18●
      进入子页面("调用",{标题="18《尧十三》",链接="https://sneer.lanzoui.com/b06t7vqlg"})
    end,--结束●18●

    function()--●19●
      进入子页面("调用",{标题="19《云母逼乐队》",链接="https://sneer.lanzoui.com/b06t7vqoj"})
    end,--结束●19●

    function()--●20●
      进入子页面("调用",{标题="20《周云蓬》",链接="https://sneer.lanzoui.com/b06t7vrpg"})
    end,--结束●20●

    function()--●21●
      进入子页面("调用",{标题="21《痛仰乐队》",链接="https://sneer.lanzoui.com/b06t7vs3a"})
    end,--结束●21●

    function()--●22●
      进入子页面("调用",{标题="22《马雨阳》",链接="https://sneer.lanzoui.com/b06t7vt0d"})
    end,--结束●22●

    function()--●23●
      进入子页面("调用",{标题="23《腰乐队》",链接="https://sneer.lanzoui.com/b06t7wakf"})
    end,--结束●23●

    function()--●24●
      进入子页面("调用",{标题="24《黑撒乐队》",链接="https://sneer.lanzoui.com/b06t7wbij"})
    end,--结束●24●

    function()--●25●
      进入子页面("调用",{标题="25《黑豹乐队》",链接="https://sneer.lanzoui.com/b06t7wbwd"})
    end,--结束●25●

  })[id]()
end
