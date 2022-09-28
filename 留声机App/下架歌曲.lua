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
      titleText="下架歌曲",--♥♥♥
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
              layout_height="3900dp",--♦♦♦显示所有按钮的框的长度
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
      text="🔍第三方搜索及投稿",--●1●
    },
  },
  {
    text={
      text="01《未分类歌曲》",--●1●
    },
  },
  {
    text={
      text="02《崔健》",--●2●
    },
  },
  {
    text={
      text="03《刘森》",--●3●
    },
  },
  {
    text={
      text="04《老狼》",--●4●
    },
  },
  {
    text={
      text="05《伍佰》",--●5●
    },
  },
  {
    text={
      text="06《红色摇滚》",--●6●
    },
  },
  {
    text={
      text="07《万能青年旅店》",--●7●
    },
  },
  {
    text={
      text="08《现代人乐队》",--●8●
    },
  },
  {
    text={
      text="09《花粥》",--●9●
    },
  },
  {
    text={
      text="10《GALA》",--●10●
    },
  },
  {
    text={
      text="11《王洛宾》",--●11●
    },
  },
  {
    text={
      text="12《赵雷》",--●12●
    },
  },
  {
    text={
      text="13《侃侃》",--●13●
    },
  },
  {
    text={
      text="14《好妹妹乐队》",--●14●
    },
  },
  {
    text={
      text="15《撒娇》",--●15●
    },
  },
  {
    text={
      text="16《宋冬野》",--●16●
    },
  },
  {
    text={
      text="17《晓月老板》",--●17●
    },
  },
  {
    text={
      text="18《尧十三》",--●18●
    },
  },
  {
    text={
      text="19《云母逼乐队》 ",--●19●
    },
  },
  {
    text={
      text="20《周云蓬》",--●20●
    },
  },
  {
    text={
      text=" 21《痛仰乐队》",--●21●
    },
  },
  {
    text={
      text="22《马雨阳》",--●22●
    },
  },
  {
    text={
      text="23《腰乐队》",--●23●
    },
  },
  {
    text={
      text="24《黑撒乐队》",--●24●
    },
  },
  {
    text={
      text="25《黑豹乐队》",--●25●
    },
  },
  {
    text={
      text="26《何教授》",--●26●
    },
  },
  {
    text={
      text="27《许巍》",--●27●
    },
  },
  {
    text={
      text="28《贰佰》",--●28●
    },
  },
  {
    text={
      text="29《驳倒乐队》",--●29●
    },
  },
  {
    text={
      text="30《谢天笑》",--●30●
    },
  },
  {
    text={
      text="31《万晓利》",--●31●
    },
  },
  {
    text={
      text="32《陈升》",--●32●
    },
  },
  {
    text={
      text="33《罗大佑》",--●33●
    },
  },
  {
    text={
      text="34《黄耀明》",--●34●
    },
  },
  {
    text={
      text="35《Beyond》",--●35●
    },
  },
  {
    text={
      text="36《周传雄》",--●36●
    },
  },
  {
    text={
      text="37《陈一发儿》",--●37●
    },
  },
  {
    text={
      text="38《许嵩》",--●38●
    },
  },
  {
    text={
      text="39《康姆士乐团》",--●39●
    },
  },
  {
    text={
      text="40《张楚》",--●40●
    },
  },
  {
    text={
      text="41《后海大鲨鱼》",--●41●
    },
  },
  {
    text={
      text="42.驳“舆论一律”",--●42●
    },
  },
  {
    text={
      text="43.《关于胡风反革命集团的材料》的序言和按语",--●43●
    },
  },
  {
    text={
      text="44.关于农业合作化问题",--●44●
    },
  },
  {
    text={
      text="45.农业合作化必须依靠党团员和贫农下中农",--●45●
    },
  },
  {
    text={
      text="46.农业合作化的一场辩论和当前的阶级斗争",--●46●
    },
  },
  {
    text={
      text="47.《中国农村的社会主义高潮》的序言",--●47●
    },
  },
  {
    text={
      text="48.《中国农村的社会主义高潮》的按语",--●48●
    },
  },
  {
    text={
      text="49.征询对农业十七条的意见",--●49●
    },
  },
  {
    text={
      text="50.加快手工业的社会主义改造",--●50●
    },
  },
  {
    text={
      text="51.论十大关系",--●51●
    },
  },
  {
    text={
      text="52.美帝国主义是纸老虎",--●52●
    },
  },
  {
    text={
      text="53.增强党的团结，继承党的传统",--●53●
    },
  },
  {
    text={
      text="54.我们党的—些历史经验",--●54●
    },
  },
  {
    text={
      text="55.纪念孙中山先生",--●55●
    },
  },
  {
    text={
      text="56.在中国共产党第八届中央委员会第二次全体会议上的讲话",--●56●
    },
  },
  {
    text={
      text="57.在省市自治区党委书记会议上的讲话",--●57●
    },
  },
  {
    text={
      text="58.1关于正确处理人民内部矛盾的问题",--●58●
    },
  },
  {
    text={
      text="58.2关于正确处理人民内部矛盾的问题（讲话稿）",--●58.2●
    },
  },
  {
    text={
      text="59.在中国共产党全国宣传工作会议上的讲话",--●59●
    },
  },
  {
    text={
      text="60.坚持艰苦奋斗，密切联系群众？",--●60●
    },
  },
  {
    text={
      text="61.事情正在起变化",--●61●
    },
  },
  {
    text={
      text="62.中国共产党是全中国人民的领导核心",--●62●
    },
  },
  {
    text={
      text="63.组织力量反击右派分子的猖狂进攻",--●63●
    },
  },
  {
    text={
      text="64.文汇报的资产阶级方向应当批判",--●64●
    },
  },
  {
    text={
      text="65.打退资产阶级右派的进攻",--●65●
    },
  },
  {
    text={
      text="66.一九五七年夏季的形势",--●66●
    },
  },
  {
    text={
      text="67.做革命的促进派",--●67●
    },
  },
  {
    text={
      text="68.坚定地相信群众的大多数",--●68●
    },
  },
  {
    text={
      text="69.党内团结的辩证方法",--●69●
    },
  },
  {
    text={
      text="70.一切反动派都是纸老虎",--●70●
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

    function()--●1●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19490921.htm"})
    end,--结束●1●

    function()--●2●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19490930.htm"})
    end,--结束●2●

    function()--●3●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19490930b.htm"})
    end,--结束●3●

    function()--●4●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19491026.htm"})
    end,--结束●4●

    function()--●5●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19500312.htm"})
    end,--结束●5●

    function()--●6●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19500606.htm"})
    end,--结束●6●

    function()--●7●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19500606b.htm"})
    end,--结束●7●

    function()--●8●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19500623.htm"})
    end,--结束●8●

    function()--●9●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19500925.htm"})
    end,--结束●9●

    function()--●10●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19501008.htm"})
    end,--结束●10●

    function()--●11●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19510119.htm"})
    end,--结束●11●

    function()--●12●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19510218.htm"})
    end,--结束●12●

    function()--●13●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19510515.htm"})
    end,--结束●13●

    function()--●14●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195012.htm"})
    end,--结束●14●

    function()--●15●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19510520.htm"})
    end,--结束●15●

    function()--●16●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19511023.htm"})
    end,--结束●16●

    function()--●17●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195111.htm"})
    end,--结束●17●

    function()--●18●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19511215.htm"})
    end,--结束●18●

    function()--●19●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19520101.htm"})
    end,--结束●19●

    function()--●20●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19520406.htm"})
    end,--结束●20●

    function()--●21●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19520606.htm"})
    end,--结束●21●

    function()--●22●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19520804.htm"})
    end,--结束●22●

    function()--●23●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19521024.htm"})
    end,--结束●23●

    function()--●24●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530105.htm"})
    end,--结束●24●

    function()--●25●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530316.htm"})
    end,--结束●25●

    function()--●26●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530319.htm"})
    end,--结束●26●

    function()--●27●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530519.htm"})
    end,--结束●27●

    function()--●28●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530615.htm"})
    end,--结束●28●

    function()--●29●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530630.htm"})
    end,--结束●29●

    function()--●30●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530709.htm"})
    end,--结束●30●

    function()--●31●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195308.htm"})
    end,--结束●31●

    function()--●32●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530812.htm"})
    end,--结束●32●

    function()--●33●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530907.htm"})
    end,--结束●33●

    function()--●34●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530912.htm"})
    end,--结束●34●

    function()--●35●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19530916.htm"})
    end,--结束●35●

    function()--●36●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19531015.htm"})
    end,--结束●36●

    function()--●37●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19540614.htm"})
    end,--结束●37●

    function()--●38●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19540915.htm"})
    end,--结束●38●

    function()--●39●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19541016.htm"})
    end,--结束●39●

    function()--●40●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19550128.htm"})
    end,--结束●40●

    function()--●41●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195503.htm"})
    end,--结束●41●

    function()--●42●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19550524.htm"})
    end,--结束●42●

    function()--●43●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195505.htm"})
    end,--结束●43●

    function()--●44●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19550731.htm"})
    end,--结束●44●

    function()--●45●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19550907.htm"})
    end,--结束●45●

    function()--●46●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19551011.htm"})
    end,--结束●46●

    function()--●47●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195509.htm"})
    end,--结束●47●

    function()--●48●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195509a.htm"})
    end,--结束●48●

    function()--●49●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19551221.htm"})
    end,--结束●49●

    function()--●50●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19560304.htm"})
    end,--结束●50●

    function()--●51●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19560425.htm"})
    end,--结束●51●

    function()--●52●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19560714.htm"})
    end,--结束●52●

    function()--●53●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19560830.htm"})
    end,--结束●53●

    function()--●54●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195600925.htm"})
    end,--结束●54●

    function()--●55●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19561112.htm"})
    end,--结束●55●

    function()--●56●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19561115.htm"})
    end,--结束●56●

    function()--●57●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195701.htm"})
    end,--结束●57●

    function()--●58●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570227.htm"})
    end,--结束●58●

    function()--●58.2●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570227AA.htm"})
    end,--结束●58.2●

    function()--●59●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570312.htm"})
    end,--结束●59●

    function()--●60●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195703.htm"})
    end,--结束●60●

    function()--●61●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570515.htm"})
    end,--结束●61●

    function()--●62●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570525.htm"})
    end,--结束●62●

    function()--●63●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570608.htm"})
    end,--结束●63●

    function()--●64●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570701.htm"})
    end,--结束●64●

    function()--●65●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19570709.htm"})
    end,--结束●65●

    function()--●66●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-195707.htm"})
    end,--结束●66●

    function()--●67●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19571009.htm"})
    end,--结束●67●

    function()--●68●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19571013.htm"})
    end,--结束●68●

    function()--●69●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19571118.htm"})
    end,--结束●69●

    function()--●70●
      进入子页面("浏览器",{链接="https://www.marxists.org/chinese/maozedong/marxist.org-chinese-mao-19571118a.htm"})
    end,--结束●70●

  })[id]()
end
