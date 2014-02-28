



<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" >
 
 <meta name="ROBOTS" content="NOARCHIVE">
 
 <link rel="icon" type="image/vnd.microsoft.icon" href="http://www.gstatic.com/codesite/ph/images/phosting.ico">
 
 
 <script type="text/javascript">
 
 
 
 
 var codesite_token = null;
 
 
 var CS_env = {"profileUrl": null, "token": null, "assetHostPath": "http://www.gstatic.com/codesite/ph", "domainName": null, "assetVersionPath": "http://www.gstatic.com/codesite/ph/4043279412481549624", "projectName": "emacs-evernote-mode", "projectHomeUrl": "/p/emacs-evernote-mode", "relativeBaseUrl": "", "loggedInUserEmail": null};
 var _gaq = _gaq || [];
 _gaq.push(
 ['siteTracker._setAccount', 'UA-18071-1'],
 ['siteTracker._trackPageview']);
 
 _gaq.push(
 ['projectTracker._setAccount', 'UA-19639283-1'],
 ['projectTracker._trackPageview']);
 
 (function() {
 var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
 ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
 (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
 })();
 
 </script>
 
 
 <title>evernote-mode.el - 
 emacs-evernote-mode -
 
 
 Functions for editing Evernote notes directly from Emacs - Google Project Hosting
 </title>
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/4043279412481549624/css/core.css">
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/4043279412481549624/css/ph_detail.css" >
 
 
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/4043279412481549624/css/d_sb.css" >
 
 
 
<!--[if IE]>
 <link type="text/css" rel="stylesheet" href="http://www.gstatic.com/codesite/ph/4043279412481549624/css/d_ie.css" >
<![endif]-->
 <style type="text/css">
 .menuIcon.off { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -42px }
 .menuIcon.on { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 -28px }
 .menuIcon.down { background: no-repeat url(http://www.gstatic.com/codesite/ph/images/dropdown_sprite.gif) 0 0; }
 
 
 
  tr.inline_comment {
 background: #fff;
 vertical-align: top;
 }
 div.draft, div.published {
 padding: .3em;
 border: 1px solid #999; 
 margin-bottom: .1em;
 font-family: arial, sans-serif;
 max-width: 60em;
 }
 div.draft {
 background: #ffa;
 } 
 div.published {
 background: #e5ecf9;
 }
 div.published .body, div.draft .body {
 padding: .5em .1em .1em .1em;
 max-width: 60em;
 white-space: pre-wrap;
 white-space: -moz-pre-wrap;
 white-space: -pre-wrap;
 white-space: -o-pre-wrap;
 word-wrap: break-word;
 font-size: 1em;
 }
 div.draft .actions {
 margin-left: 1em;
 font-size: 90%;
 }
 div.draft form {
 padding: .5em .5em .5em 0;
 }
 div.draft textarea, div.published textarea {
 width: 95%;
 height: 10em;
 font-family: arial, sans-serif;
 margin-bottom: .5em;
 }

 
 .nocursor, .nocursor td, .cursor_hidden, .cursor_hidden td {
 background-color: white;
 height: 2px;
 }
 .cursor, .cursor td {
 background-color: darkblue;
 height: 2px;
 display: '';
 }
 
 
.list {
 border: 1px solid white;
 border-bottom: 0;
}

 
 </style>
</head>
<body class="t4">
<script type="text/javascript">
 window.___gcfg = {lang: 'en'};
 (function() 
 {var po = document.createElement("script");
 po.type = "text/javascript"; po.async = true;po.src = "https://apis.google.com/js/plusone.js";
 var s = document.getElementsByTagName("script")[0];
 s.parentNode.insertBefore(po, s);
 })();
</script>
<div class="headbg">

 <div id="gaia">
 

 <span>
 
 
 <a href="#" id="projects-dropdown" onclick="return false;"><u>My favorites</u> <small>&#9660;</small></a>
 | <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=http%3A%2F%2Fcode.google.com%2Fp%2Femacs-evernote-mode%2Fsource%2Fbrowse%2Ftrunk%2Fevernote-mode.el%3Fr%3D198&amp;followup=http%3A%2F%2Fcode.google.com%2Fp%2Femacs-evernote-mode%2Fsource%2Fbrowse%2Ftrunk%2Fevernote-mode.el%3Fr%3D198" onclick="_CS_click('/gb/ph/signin');"><u>Sign in</u></a>
 
 </span>

 </div>

 <div class="gbh" style="left: 0pt;"></div>
 <div class="gbh" style="right: 0pt;"></div>
 
 
 <div style="height: 1px"></div>
<!--[if lte IE 7]>
<div style="text-align:center;">
Your version of Internet Explorer is not supported. Try a browser that
contributes to open source, such as <a href="http://www.firefox.com">Firefox</a>,
<a href="http://www.google.com/chrome">Google Chrome</a>, or
<a href="http://code.google.com/chrome/chromeframe/">Google Chrome Frame</a>.
</div>
<![endif]-->



 <table style="padding:0px; margin: 0px 0px 10px 0px; width:100%" cellpadding="0" cellspacing="0"
 itemscope itemtype="http://schema.org/CreativeWork">
 <tr style="height: 58px;">
 
 
 
 <td id="plogo">
 <link itemprop="url" href="/p/emacs-evernote-mode">
 <a href="/p/emacs-evernote-mode/">
 
 <img src="http://www.gstatic.com/codesite/ph/images/defaultlogo.png" alt="Logo" itemprop="image">
 
 </a>
 </td>
 
 <td style="padding-left: 0.5em">
 
 <div id="pname">
 <a href="/p/emacs-evernote-mode/"><span itemprop="name">emacs-evernote-mode</span></a>
 </div>
 
 <div id="psum">
 <a id="project_summary_link"
 href="/p/emacs-evernote-mode/"><span itemprop="description">Functions for editing Evernote notes directly from Emacs</span></a>
 
 </div>
 
 
 </td>
 <td style="white-space:nowrap;text-align:right; vertical-align:bottom;">
 
 <form action="/hosting/search">
 <input size="30" name="q" value="" type="text">
 
 <input type="submit" name="projectsearch" value="Search projects" >
 </form>
 
 </tr>
 </table>

</div>

 
<div id="mt" class="gtb"> 
 <a href="/p/emacs-evernote-mode/" class="tab ">Project&nbsp;Home</a>
 
 
 
 
 <a href="/p/emacs-evernote-mode/downloads/list" class="tab ">Downloads</a>
 
 
 
 
 
 <a href="/p/emacs-evernote-mode/w/list" class="tab ">Wiki</a>
 
 
 
 
 
 <a href="/p/emacs-evernote-mode/issues/list"
 class="tab ">Issues</a>
 
 
 
 
 
 <a href="/p/emacs-evernote-mode/source/checkout"
 class="tab active">Source</a>
 
 
 
 
 
 
 
 
 <div class=gtbc></div>
</div>
<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0" class="st">
 <tr>
 
 
 
 
 
 
 <td class="subt">
 <div class="st2">
 <div class="isf">
 
 


 <span class="inst1"><a href="/p/emacs-evernote-mode/source/checkout">Checkout</a></span> &nbsp;
 <span class="inst2"><a href="/p/emacs-evernote-mode/source/browse/">Browse</a></span> &nbsp;
 <span class="inst3"><a href="/p/emacs-evernote-mode/source/list">Changes</a></span> &nbsp;
 
 
 
 
 
 
 
 </form>
 <script type="text/javascript">
 
 function codesearchQuery(form) {
 var query = document.getElementById('q').value;
 if (query) { form.action += '%20' + query; }
 }
 </script>
 </div>
</div>

 </td>
 
 
 
 <td align="right" valign="top" class="bevel-right"></td>
 </tr>
</table>


<script type="text/javascript">
 var cancelBubble = false;
 function _go(url) { document.location = url; }
</script>
<div id="maincol"
 
>

 




<div class="expand">
<div id="colcontrol">
<style type="text/css">
 #file_flipper { white-space: nowrap; padding-right: 2em; }
 #file_flipper.hidden { display: none; }
 #file_flipper .pagelink { color: #0000CC; text-decoration: underline; }
 #file_flipper #visiblefiles { padding-left: 0.5em; padding-right: 0.5em; }
</style>
<table id="nav_and_rev" class="list"
 cellpadding="0" cellspacing="0" width="100%">
 <tr>
 
 <td nowrap="nowrap" class="src_crumbs src_nav" width="33%">
 <strong class="src_nav">Source path:&nbsp;</strong>
 <span id="crumb_root">
 
 <a href="/p/emacs-evernote-mode/source/browse/?r=198">svn</a>/&nbsp;</span>
 <span id="crumb_links" class="ifClosed"><a href="/p/emacs-evernote-mode/source/browse/trunk/?r=198">trunk</a><span class="sp">/&nbsp;</span>evernote-mode.el</span>
 
 


 </td>
 
 
 <td nowrap="nowrap" width="33%" align="right">
 <table cellpadding="0" cellspacing="0" style="font-size: 100%"><tr>
 
 
 <td class="flipper">
 <ul class="leftside">
 
 <li><a href="/p/emacs-evernote-mode/source/browse/trunk/evernote-mode.el?r=197" title="Previous">&lsaquo;r197</a></li>
 
 </ul>
 </td>
 
 <td class="flipper"><b>r198</b></td>
 
 </tr></table>
 </td> 
 </tr>
</table>

<div class="fc">
 
 
 
<style type="text/css">
.undermouse span {
 background-image: url(http://www.gstatic.com/codesite/ph/images/comments.gif); }
</style>
<table class="opened" id="review_comment_area"
><tr>
<td id="nums">
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
<pre><table width="100%" id="nums_table_0"><tr id="gr_svn198_1"

><td id="1"><a href="#1">1</a></td></tr
><tr id="gr_svn198_2"

><td id="2"><a href="#2">2</a></td></tr
><tr id="gr_svn198_3"

><td id="3"><a href="#3">3</a></td></tr
><tr id="gr_svn198_4"

><td id="4"><a href="#4">4</a></td></tr
><tr id="gr_svn198_5"

><td id="5"><a href="#5">5</a></td></tr
><tr id="gr_svn198_6"

><td id="6"><a href="#6">6</a></td></tr
><tr id="gr_svn198_7"

><td id="7"><a href="#7">7</a></td></tr
><tr id="gr_svn198_8"

><td id="8"><a href="#8">8</a></td></tr
><tr id="gr_svn198_9"

><td id="9"><a href="#9">9</a></td></tr
><tr id="gr_svn198_10"

><td id="10"><a href="#10">10</a></td></tr
><tr id="gr_svn198_11"

><td id="11"><a href="#11">11</a></td></tr
><tr id="gr_svn198_12"

><td id="12"><a href="#12">12</a></td></tr
><tr id="gr_svn198_13"

><td id="13"><a href="#13">13</a></td></tr
><tr id="gr_svn198_14"

><td id="14"><a href="#14">14</a></td></tr
><tr id="gr_svn198_15"

><td id="15"><a href="#15">15</a></td></tr
><tr id="gr_svn198_16"

><td id="16"><a href="#16">16</a></td></tr
><tr id="gr_svn198_17"

><td id="17"><a href="#17">17</a></td></tr
><tr id="gr_svn198_18"

><td id="18"><a href="#18">18</a></td></tr
><tr id="gr_svn198_19"

><td id="19"><a href="#19">19</a></td></tr
><tr id="gr_svn198_20"

><td id="20"><a href="#20">20</a></td></tr
><tr id="gr_svn198_21"

><td id="21"><a href="#21">21</a></td></tr
><tr id="gr_svn198_22"

><td id="22"><a href="#22">22</a></td></tr
><tr id="gr_svn198_23"

><td id="23"><a href="#23">23</a></td></tr
><tr id="gr_svn198_24"

><td id="24"><a href="#24">24</a></td></tr
><tr id="gr_svn198_25"

><td id="25"><a href="#25">25</a></td></tr
><tr id="gr_svn198_26"

><td id="26"><a href="#26">26</a></td></tr
><tr id="gr_svn198_27"

><td id="27"><a href="#27">27</a></td></tr
><tr id="gr_svn198_28"

><td id="28"><a href="#28">28</a></td></tr
><tr id="gr_svn198_29"

><td id="29"><a href="#29">29</a></td></tr
><tr id="gr_svn198_30"

><td id="30"><a href="#30">30</a></td></tr
><tr id="gr_svn198_31"

><td id="31"><a href="#31">31</a></td></tr
><tr id="gr_svn198_32"

><td id="32"><a href="#32">32</a></td></tr
><tr id="gr_svn198_33"

><td id="33"><a href="#33">33</a></td></tr
><tr id="gr_svn198_34"

><td id="34"><a href="#34">34</a></td></tr
><tr id="gr_svn198_35"

><td id="35"><a href="#35">35</a></td></tr
><tr id="gr_svn198_36"

><td id="36"><a href="#36">36</a></td></tr
><tr id="gr_svn198_37"

><td id="37"><a href="#37">37</a></td></tr
><tr id="gr_svn198_38"

><td id="38"><a href="#38">38</a></td></tr
><tr id="gr_svn198_39"

><td id="39"><a href="#39">39</a></td></tr
><tr id="gr_svn198_40"

><td id="40"><a href="#40">40</a></td></tr
><tr id="gr_svn198_41"

><td id="41"><a href="#41">41</a></td></tr
><tr id="gr_svn198_42"

><td id="42"><a href="#42">42</a></td></tr
><tr id="gr_svn198_43"

><td id="43"><a href="#43">43</a></td></tr
><tr id="gr_svn198_44"

><td id="44"><a href="#44">44</a></td></tr
><tr id="gr_svn198_45"

><td id="45"><a href="#45">45</a></td></tr
><tr id="gr_svn198_46"

><td id="46"><a href="#46">46</a></td></tr
><tr id="gr_svn198_47"

><td id="47"><a href="#47">47</a></td></tr
><tr id="gr_svn198_48"

><td id="48"><a href="#48">48</a></td></tr
><tr id="gr_svn198_49"

><td id="49"><a href="#49">49</a></td></tr
><tr id="gr_svn198_50"

><td id="50"><a href="#50">50</a></td></tr
><tr id="gr_svn198_51"

><td id="51"><a href="#51">51</a></td></tr
><tr id="gr_svn198_52"

><td id="52"><a href="#52">52</a></td></tr
><tr id="gr_svn198_53"

><td id="53"><a href="#53">53</a></td></tr
><tr id="gr_svn198_54"

><td id="54"><a href="#54">54</a></td></tr
><tr id="gr_svn198_55"

><td id="55"><a href="#55">55</a></td></tr
><tr id="gr_svn198_56"

><td id="56"><a href="#56">56</a></td></tr
><tr id="gr_svn198_57"

><td id="57"><a href="#57">57</a></td></tr
><tr id="gr_svn198_58"

><td id="58"><a href="#58">58</a></td></tr
><tr id="gr_svn198_59"

><td id="59"><a href="#59">59</a></td></tr
><tr id="gr_svn198_60"

><td id="60"><a href="#60">60</a></td></tr
><tr id="gr_svn198_61"

><td id="61"><a href="#61">61</a></td></tr
><tr id="gr_svn198_62"

><td id="62"><a href="#62">62</a></td></tr
><tr id="gr_svn198_63"

><td id="63"><a href="#63">63</a></td></tr
><tr id="gr_svn198_64"

><td id="64"><a href="#64">64</a></td></tr
><tr id="gr_svn198_65"

><td id="65"><a href="#65">65</a></td></tr
><tr id="gr_svn198_66"

><td id="66"><a href="#66">66</a></td></tr
><tr id="gr_svn198_67"

><td id="67"><a href="#67">67</a></td></tr
><tr id="gr_svn198_68"

><td id="68"><a href="#68">68</a></td></tr
><tr id="gr_svn198_69"

><td id="69"><a href="#69">69</a></td></tr
><tr id="gr_svn198_70"

><td id="70"><a href="#70">70</a></td></tr
><tr id="gr_svn198_71"

><td id="71"><a href="#71">71</a></td></tr
><tr id="gr_svn198_72"

><td id="72"><a href="#72">72</a></td></tr
><tr id="gr_svn198_73"

><td id="73"><a href="#73">73</a></td></tr
><tr id="gr_svn198_74"

><td id="74"><a href="#74">74</a></td></tr
><tr id="gr_svn198_75"

><td id="75"><a href="#75">75</a></td></tr
><tr id="gr_svn198_76"

><td id="76"><a href="#76">76</a></td></tr
><tr id="gr_svn198_77"

><td id="77"><a href="#77">77</a></td></tr
><tr id="gr_svn198_78"

><td id="78"><a href="#78">78</a></td></tr
><tr id="gr_svn198_79"

><td id="79"><a href="#79">79</a></td></tr
><tr id="gr_svn198_80"

><td id="80"><a href="#80">80</a></td></tr
><tr id="gr_svn198_81"

><td id="81"><a href="#81">81</a></td></tr
><tr id="gr_svn198_82"

><td id="82"><a href="#82">82</a></td></tr
><tr id="gr_svn198_83"

><td id="83"><a href="#83">83</a></td></tr
><tr id="gr_svn198_84"

><td id="84"><a href="#84">84</a></td></tr
><tr id="gr_svn198_85"

><td id="85"><a href="#85">85</a></td></tr
><tr id="gr_svn198_86"

><td id="86"><a href="#86">86</a></td></tr
><tr id="gr_svn198_87"

><td id="87"><a href="#87">87</a></td></tr
><tr id="gr_svn198_88"

><td id="88"><a href="#88">88</a></td></tr
><tr id="gr_svn198_89"

><td id="89"><a href="#89">89</a></td></tr
><tr id="gr_svn198_90"

><td id="90"><a href="#90">90</a></td></tr
><tr id="gr_svn198_91"

><td id="91"><a href="#91">91</a></td></tr
><tr id="gr_svn198_92"

><td id="92"><a href="#92">92</a></td></tr
><tr id="gr_svn198_93"

><td id="93"><a href="#93">93</a></td></tr
><tr id="gr_svn198_94"

><td id="94"><a href="#94">94</a></td></tr
><tr id="gr_svn198_95"

><td id="95"><a href="#95">95</a></td></tr
><tr id="gr_svn198_96"

><td id="96"><a href="#96">96</a></td></tr
><tr id="gr_svn198_97"

><td id="97"><a href="#97">97</a></td></tr
><tr id="gr_svn198_98"

><td id="98"><a href="#98">98</a></td></tr
><tr id="gr_svn198_99"

><td id="99"><a href="#99">99</a></td></tr
><tr id="gr_svn198_100"

><td id="100"><a href="#100">100</a></td></tr
><tr id="gr_svn198_101"

><td id="101"><a href="#101">101</a></td></tr
><tr id="gr_svn198_102"

><td id="102"><a href="#102">102</a></td></tr
><tr id="gr_svn198_103"

><td id="103"><a href="#103">103</a></td></tr
><tr id="gr_svn198_104"

><td id="104"><a href="#104">104</a></td></tr
><tr id="gr_svn198_105"

><td id="105"><a href="#105">105</a></td></tr
><tr id="gr_svn198_106"

><td id="106"><a href="#106">106</a></td></tr
><tr id="gr_svn198_107"

><td id="107"><a href="#107">107</a></td></tr
><tr id="gr_svn198_108"

><td id="108"><a href="#108">108</a></td></tr
><tr id="gr_svn198_109"

><td id="109"><a href="#109">109</a></td></tr
><tr id="gr_svn198_110"

><td id="110"><a href="#110">110</a></td></tr
><tr id="gr_svn198_111"

><td id="111"><a href="#111">111</a></td></tr
><tr id="gr_svn198_112"

><td id="112"><a href="#112">112</a></td></tr
><tr id="gr_svn198_113"

><td id="113"><a href="#113">113</a></td></tr
><tr id="gr_svn198_114"

><td id="114"><a href="#114">114</a></td></tr
><tr id="gr_svn198_115"

><td id="115"><a href="#115">115</a></td></tr
><tr id="gr_svn198_116"

><td id="116"><a href="#116">116</a></td></tr
><tr id="gr_svn198_117"

><td id="117"><a href="#117">117</a></td></tr
><tr id="gr_svn198_118"

><td id="118"><a href="#118">118</a></td></tr
><tr id="gr_svn198_119"

><td id="119"><a href="#119">119</a></td></tr
><tr id="gr_svn198_120"

><td id="120"><a href="#120">120</a></td></tr
><tr id="gr_svn198_121"

><td id="121"><a href="#121">121</a></td></tr
><tr id="gr_svn198_122"

><td id="122"><a href="#122">122</a></td></tr
><tr id="gr_svn198_123"

><td id="123"><a href="#123">123</a></td></tr
><tr id="gr_svn198_124"

><td id="124"><a href="#124">124</a></td></tr
><tr id="gr_svn198_125"

><td id="125"><a href="#125">125</a></td></tr
><tr id="gr_svn198_126"

><td id="126"><a href="#126">126</a></td></tr
><tr id="gr_svn198_127"

><td id="127"><a href="#127">127</a></td></tr
><tr id="gr_svn198_128"

><td id="128"><a href="#128">128</a></td></tr
><tr id="gr_svn198_129"

><td id="129"><a href="#129">129</a></td></tr
><tr id="gr_svn198_130"

><td id="130"><a href="#130">130</a></td></tr
><tr id="gr_svn198_131"

><td id="131"><a href="#131">131</a></td></tr
><tr id="gr_svn198_132"

><td id="132"><a href="#132">132</a></td></tr
><tr id="gr_svn198_133"

><td id="133"><a href="#133">133</a></td></tr
><tr id="gr_svn198_134"

><td id="134"><a href="#134">134</a></td></tr
><tr id="gr_svn198_135"

><td id="135"><a href="#135">135</a></td></tr
><tr id="gr_svn198_136"

><td id="136"><a href="#136">136</a></td></tr
><tr id="gr_svn198_137"

><td id="137"><a href="#137">137</a></td></tr
><tr id="gr_svn198_138"

><td id="138"><a href="#138">138</a></td></tr
><tr id="gr_svn198_139"

><td id="139"><a href="#139">139</a></td></tr
><tr id="gr_svn198_140"

><td id="140"><a href="#140">140</a></td></tr
><tr id="gr_svn198_141"

><td id="141"><a href="#141">141</a></td></tr
><tr id="gr_svn198_142"

><td id="142"><a href="#142">142</a></td></tr
><tr id="gr_svn198_143"

><td id="143"><a href="#143">143</a></td></tr
><tr id="gr_svn198_144"

><td id="144"><a href="#144">144</a></td></tr
><tr id="gr_svn198_145"

><td id="145"><a href="#145">145</a></td></tr
><tr id="gr_svn198_146"

><td id="146"><a href="#146">146</a></td></tr
><tr id="gr_svn198_147"

><td id="147"><a href="#147">147</a></td></tr
><tr id="gr_svn198_148"

><td id="148"><a href="#148">148</a></td></tr
><tr id="gr_svn198_149"

><td id="149"><a href="#149">149</a></td></tr
><tr id="gr_svn198_150"

><td id="150"><a href="#150">150</a></td></tr
><tr id="gr_svn198_151"

><td id="151"><a href="#151">151</a></td></tr
><tr id="gr_svn198_152"

><td id="152"><a href="#152">152</a></td></tr
><tr id="gr_svn198_153"

><td id="153"><a href="#153">153</a></td></tr
><tr id="gr_svn198_154"

><td id="154"><a href="#154">154</a></td></tr
><tr id="gr_svn198_155"

><td id="155"><a href="#155">155</a></td></tr
><tr id="gr_svn198_156"

><td id="156"><a href="#156">156</a></td></tr
><tr id="gr_svn198_157"

><td id="157"><a href="#157">157</a></td></tr
><tr id="gr_svn198_158"

><td id="158"><a href="#158">158</a></td></tr
><tr id="gr_svn198_159"

><td id="159"><a href="#159">159</a></td></tr
><tr id="gr_svn198_160"

><td id="160"><a href="#160">160</a></td></tr
><tr id="gr_svn198_161"

><td id="161"><a href="#161">161</a></td></tr
><tr id="gr_svn198_162"

><td id="162"><a href="#162">162</a></td></tr
><tr id="gr_svn198_163"

><td id="163"><a href="#163">163</a></td></tr
><tr id="gr_svn198_164"

><td id="164"><a href="#164">164</a></td></tr
><tr id="gr_svn198_165"

><td id="165"><a href="#165">165</a></td></tr
><tr id="gr_svn198_166"

><td id="166"><a href="#166">166</a></td></tr
><tr id="gr_svn198_167"

><td id="167"><a href="#167">167</a></td></tr
><tr id="gr_svn198_168"

><td id="168"><a href="#168">168</a></td></tr
><tr id="gr_svn198_169"

><td id="169"><a href="#169">169</a></td></tr
><tr id="gr_svn198_170"

><td id="170"><a href="#170">170</a></td></tr
><tr id="gr_svn198_171"

><td id="171"><a href="#171">171</a></td></tr
><tr id="gr_svn198_172"

><td id="172"><a href="#172">172</a></td></tr
><tr id="gr_svn198_173"

><td id="173"><a href="#173">173</a></td></tr
><tr id="gr_svn198_174"

><td id="174"><a href="#174">174</a></td></tr
><tr id="gr_svn198_175"

><td id="175"><a href="#175">175</a></td></tr
><tr id="gr_svn198_176"

><td id="176"><a href="#176">176</a></td></tr
><tr id="gr_svn198_177"

><td id="177"><a href="#177">177</a></td></tr
><tr id="gr_svn198_178"

><td id="178"><a href="#178">178</a></td></tr
><tr id="gr_svn198_179"

><td id="179"><a href="#179">179</a></td></tr
><tr id="gr_svn198_180"

><td id="180"><a href="#180">180</a></td></tr
><tr id="gr_svn198_181"

><td id="181"><a href="#181">181</a></td></tr
><tr id="gr_svn198_182"

><td id="182"><a href="#182">182</a></td></tr
><tr id="gr_svn198_183"

><td id="183"><a href="#183">183</a></td></tr
><tr id="gr_svn198_184"

><td id="184"><a href="#184">184</a></td></tr
><tr id="gr_svn198_185"

><td id="185"><a href="#185">185</a></td></tr
><tr id="gr_svn198_186"

><td id="186"><a href="#186">186</a></td></tr
><tr id="gr_svn198_187"

><td id="187"><a href="#187">187</a></td></tr
><tr id="gr_svn198_188"

><td id="188"><a href="#188">188</a></td></tr
><tr id="gr_svn198_189"

><td id="189"><a href="#189">189</a></td></tr
><tr id="gr_svn198_190"

><td id="190"><a href="#190">190</a></td></tr
><tr id="gr_svn198_191"

><td id="191"><a href="#191">191</a></td></tr
><tr id="gr_svn198_192"

><td id="192"><a href="#192">192</a></td></tr
><tr id="gr_svn198_193"

><td id="193"><a href="#193">193</a></td></tr
><tr id="gr_svn198_194"

><td id="194"><a href="#194">194</a></td></tr
><tr id="gr_svn198_195"

><td id="195"><a href="#195">195</a></td></tr
><tr id="gr_svn198_196"

><td id="196"><a href="#196">196</a></td></tr
><tr id="gr_svn198_197"

><td id="197"><a href="#197">197</a></td></tr
><tr id="gr_svn198_198"

><td id="198"><a href="#198">198</a></td></tr
><tr id="gr_svn198_199"

><td id="199"><a href="#199">199</a></td></tr
><tr id="gr_svn198_200"

><td id="200"><a href="#200">200</a></td></tr
><tr id="gr_svn198_201"

><td id="201"><a href="#201">201</a></td></tr
><tr id="gr_svn198_202"

><td id="202"><a href="#202">202</a></td></tr
><tr id="gr_svn198_203"

><td id="203"><a href="#203">203</a></td></tr
><tr id="gr_svn198_204"

><td id="204"><a href="#204">204</a></td></tr
><tr id="gr_svn198_205"

><td id="205"><a href="#205">205</a></td></tr
><tr id="gr_svn198_206"

><td id="206"><a href="#206">206</a></td></tr
><tr id="gr_svn198_207"

><td id="207"><a href="#207">207</a></td></tr
><tr id="gr_svn198_208"

><td id="208"><a href="#208">208</a></td></tr
><tr id="gr_svn198_209"

><td id="209"><a href="#209">209</a></td></tr
><tr id="gr_svn198_210"

><td id="210"><a href="#210">210</a></td></tr
><tr id="gr_svn198_211"

><td id="211"><a href="#211">211</a></td></tr
><tr id="gr_svn198_212"

><td id="212"><a href="#212">212</a></td></tr
><tr id="gr_svn198_213"

><td id="213"><a href="#213">213</a></td></tr
><tr id="gr_svn198_214"

><td id="214"><a href="#214">214</a></td></tr
><tr id="gr_svn198_215"

><td id="215"><a href="#215">215</a></td></tr
><tr id="gr_svn198_216"

><td id="216"><a href="#216">216</a></td></tr
><tr id="gr_svn198_217"

><td id="217"><a href="#217">217</a></td></tr
><tr id="gr_svn198_218"

><td id="218"><a href="#218">218</a></td></tr
><tr id="gr_svn198_219"

><td id="219"><a href="#219">219</a></td></tr
><tr id="gr_svn198_220"

><td id="220"><a href="#220">220</a></td></tr
><tr id="gr_svn198_221"

><td id="221"><a href="#221">221</a></td></tr
><tr id="gr_svn198_222"

><td id="222"><a href="#222">222</a></td></tr
><tr id="gr_svn198_223"

><td id="223"><a href="#223">223</a></td></tr
><tr id="gr_svn198_224"

><td id="224"><a href="#224">224</a></td></tr
><tr id="gr_svn198_225"

><td id="225"><a href="#225">225</a></td></tr
><tr id="gr_svn198_226"

><td id="226"><a href="#226">226</a></td></tr
><tr id="gr_svn198_227"

><td id="227"><a href="#227">227</a></td></tr
><tr id="gr_svn198_228"

><td id="228"><a href="#228">228</a></td></tr
><tr id="gr_svn198_229"

><td id="229"><a href="#229">229</a></td></tr
><tr id="gr_svn198_230"

><td id="230"><a href="#230">230</a></td></tr
><tr id="gr_svn198_231"

><td id="231"><a href="#231">231</a></td></tr
><tr id="gr_svn198_232"

><td id="232"><a href="#232">232</a></td></tr
><tr id="gr_svn198_233"

><td id="233"><a href="#233">233</a></td></tr
><tr id="gr_svn198_234"

><td id="234"><a href="#234">234</a></td></tr
><tr id="gr_svn198_235"

><td id="235"><a href="#235">235</a></td></tr
><tr id="gr_svn198_236"

><td id="236"><a href="#236">236</a></td></tr
><tr id="gr_svn198_237"

><td id="237"><a href="#237">237</a></td></tr
><tr id="gr_svn198_238"

><td id="238"><a href="#238">238</a></td></tr
><tr id="gr_svn198_239"

><td id="239"><a href="#239">239</a></td></tr
><tr id="gr_svn198_240"

><td id="240"><a href="#240">240</a></td></tr
><tr id="gr_svn198_241"

><td id="241"><a href="#241">241</a></td></tr
><tr id="gr_svn198_242"

><td id="242"><a href="#242">242</a></td></tr
><tr id="gr_svn198_243"

><td id="243"><a href="#243">243</a></td></tr
><tr id="gr_svn198_244"

><td id="244"><a href="#244">244</a></td></tr
><tr id="gr_svn198_245"

><td id="245"><a href="#245">245</a></td></tr
><tr id="gr_svn198_246"

><td id="246"><a href="#246">246</a></td></tr
><tr id="gr_svn198_247"

><td id="247"><a href="#247">247</a></td></tr
><tr id="gr_svn198_248"

><td id="248"><a href="#248">248</a></td></tr
><tr id="gr_svn198_249"

><td id="249"><a href="#249">249</a></td></tr
><tr id="gr_svn198_250"

><td id="250"><a href="#250">250</a></td></tr
><tr id="gr_svn198_251"

><td id="251"><a href="#251">251</a></td></tr
><tr id="gr_svn198_252"

><td id="252"><a href="#252">252</a></td></tr
><tr id="gr_svn198_253"

><td id="253"><a href="#253">253</a></td></tr
><tr id="gr_svn198_254"

><td id="254"><a href="#254">254</a></td></tr
><tr id="gr_svn198_255"

><td id="255"><a href="#255">255</a></td></tr
><tr id="gr_svn198_256"

><td id="256"><a href="#256">256</a></td></tr
><tr id="gr_svn198_257"

><td id="257"><a href="#257">257</a></td></tr
><tr id="gr_svn198_258"

><td id="258"><a href="#258">258</a></td></tr
><tr id="gr_svn198_259"

><td id="259"><a href="#259">259</a></td></tr
><tr id="gr_svn198_260"

><td id="260"><a href="#260">260</a></td></tr
><tr id="gr_svn198_261"

><td id="261"><a href="#261">261</a></td></tr
><tr id="gr_svn198_262"

><td id="262"><a href="#262">262</a></td></tr
><tr id="gr_svn198_263"

><td id="263"><a href="#263">263</a></td></tr
><tr id="gr_svn198_264"

><td id="264"><a href="#264">264</a></td></tr
><tr id="gr_svn198_265"

><td id="265"><a href="#265">265</a></td></tr
><tr id="gr_svn198_266"

><td id="266"><a href="#266">266</a></td></tr
><tr id="gr_svn198_267"

><td id="267"><a href="#267">267</a></td></tr
><tr id="gr_svn198_268"

><td id="268"><a href="#268">268</a></td></tr
><tr id="gr_svn198_269"

><td id="269"><a href="#269">269</a></td></tr
><tr id="gr_svn198_270"

><td id="270"><a href="#270">270</a></td></tr
><tr id="gr_svn198_271"

><td id="271"><a href="#271">271</a></td></tr
><tr id="gr_svn198_272"

><td id="272"><a href="#272">272</a></td></tr
><tr id="gr_svn198_273"

><td id="273"><a href="#273">273</a></td></tr
><tr id="gr_svn198_274"

><td id="274"><a href="#274">274</a></td></tr
><tr id="gr_svn198_275"

><td id="275"><a href="#275">275</a></td></tr
><tr id="gr_svn198_276"

><td id="276"><a href="#276">276</a></td></tr
><tr id="gr_svn198_277"

><td id="277"><a href="#277">277</a></td></tr
><tr id="gr_svn198_278"

><td id="278"><a href="#278">278</a></td></tr
><tr id="gr_svn198_279"

><td id="279"><a href="#279">279</a></td></tr
><tr id="gr_svn198_280"

><td id="280"><a href="#280">280</a></td></tr
><tr id="gr_svn198_281"

><td id="281"><a href="#281">281</a></td></tr
><tr id="gr_svn198_282"

><td id="282"><a href="#282">282</a></td></tr
><tr id="gr_svn198_283"

><td id="283"><a href="#283">283</a></td></tr
><tr id="gr_svn198_284"

><td id="284"><a href="#284">284</a></td></tr
><tr id="gr_svn198_285"

><td id="285"><a href="#285">285</a></td></tr
><tr id="gr_svn198_286"

><td id="286"><a href="#286">286</a></td></tr
><tr id="gr_svn198_287"

><td id="287"><a href="#287">287</a></td></tr
><tr id="gr_svn198_288"

><td id="288"><a href="#288">288</a></td></tr
><tr id="gr_svn198_289"

><td id="289"><a href="#289">289</a></td></tr
><tr id="gr_svn198_290"

><td id="290"><a href="#290">290</a></td></tr
><tr id="gr_svn198_291"

><td id="291"><a href="#291">291</a></td></tr
><tr id="gr_svn198_292"

><td id="292"><a href="#292">292</a></td></tr
><tr id="gr_svn198_293"

><td id="293"><a href="#293">293</a></td></tr
><tr id="gr_svn198_294"

><td id="294"><a href="#294">294</a></td></tr
><tr id="gr_svn198_295"

><td id="295"><a href="#295">295</a></td></tr
><tr id="gr_svn198_296"

><td id="296"><a href="#296">296</a></td></tr
><tr id="gr_svn198_297"

><td id="297"><a href="#297">297</a></td></tr
><tr id="gr_svn198_298"

><td id="298"><a href="#298">298</a></td></tr
><tr id="gr_svn198_299"

><td id="299"><a href="#299">299</a></td></tr
><tr id="gr_svn198_300"

><td id="300"><a href="#300">300</a></td></tr
><tr id="gr_svn198_301"

><td id="301"><a href="#301">301</a></td></tr
><tr id="gr_svn198_302"

><td id="302"><a href="#302">302</a></td></tr
><tr id="gr_svn198_303"

><td id="303"><a href="#303">303</a></td></tr
><tr id="gr_svn198_304"

><td id="304"><a href="#304">304</a></td></tr
><tr id="gr_svn198_305"

><td id="305"><a href="#305">305</a></td></tr
><tr id="gr_svn198_306"

><td id="306"><a href="#306">306</a></td></tr
><tr id="gr_svn198_307"

><td id="307"><a href="#307">307</a></td></tr
><tr id="gr_svn198_308"

><td id="308"><a href="#308">308</a></td></tr
><tr id="gr_svn198_309"

><td id="309"><a href="#309">309</a></td></tr
><tr id="gr_svn198_310"

><td id="310"><a href="#310">310</a></td></tr
><tr id="gr_svn198_311"

><td id="311"><a href="#311">311</a></td></tr
><tr id="gr_svn198_312"

><td id="312"><a href="#312">312</a></td></tr
><tr id="gr_svn198_313"

><td id="313"><a href="#313">313</a></td></tr
><tr id="gr_svn198_314"

><td id="314"><a href="#314">314</a></td></tr
><tr id="gr_svn198_315"

><td id="315"><a href="#315">315</a></td></tr
><tr id="gr_svn198_316"

><td id="316"><a href="#316">316</a></td></tr
><tr id="gr_svn198_317"

><td id="317"><a href="#317">317</a></td></tr
><tr id="gr_svn198_318"

><td id="318"><a href="#318">318</a></td></tr
><tr id="gr_svn198_319"

><td id="319"><a href="#319">319</a></td></tr
><tr id="gr_svn198_320"

><td id="320"><a href="#320">320</a></td></tr
><tr id="gr_svn198_321"

><td id="321"><a href="#321">321</a></td></tr
><tr id="gr_svn198_322"

><td id="322"><a href="#322">322</a></td></tr
><tr id="gr_svn198_323"

><td id="323"><a href="#323">323</a></td></tr
><tr id="gr_svn198_324"

><td id="324"><a href="#324">324</a></td></tr
><tr id="gr_svn198_325"

><td id="325"><a href="#325">325</a></td></tr
><tr id="gr_svn198_326"

><td id="326"><a href="#326">326</a></td></tr
><tr id="gr_svn198_327"

><td id="327"><a href="#327">327</a></td></tr
><tr id="gr_svn198_328"

><td id="328"><a href="#328">328</a></td></tr
><tr id="gr_svn198_329"

><td id="329"><a href="#329">329</a></td></tr
><tr id="gr_svn198_330"

><td id="330"><a href="#330">330</a></td></tr
><tr id="gr_svn198_331"

><td id="331"><a href="#331">331</a></td></tr
><tr id="gr_svn198_332"

><td id="332"><a href="#332">332</a></td></tr
><tr id="gr_svn198_333"

><td id="333"><a href="#333">333</a></td></tr
><tr id="gr_svn198_334"

><td id="334"><a href="#334">334</a></td></tr
><tr id="gr_svn198_335"

><td id="335"><a href="#335">335</a></td></tr
><tr id="gr_svn198_336"

><td id="336"><a href="#336">336</a></td></tr
><tr id="gr_svn198_337"

><td id="337"><a href="#337">337</a></td></tr
><tr id="gr_svn198_338"

><td id="338"><a href="#338">338</a></td></tr
><tr id="gr_svn198_339"

><td id="339"><a href="#339">339</a></td></tr
><tr id="gr_svn198_340"

><td id="340"><a href="#340">340</a></td></tr
><tr id="gr_svn198_341"

><td id="341"><a href="#341">341</a></td></tr
><tr id="gr_svn198_342"

><td id="342"><a href="#342">342</a></td></tr
><tr id="gr_svn198_343"

><td id="343"><a href="#343">343</a></td></tr
><tr id="gr_svn198_344"

><td id="344"><a href="#344">344</a></td></tr
><tr id="gr_svn198_345"

><td id="345"><a href="#345">345</a></td></tr
><tr id="gr_svn198_346"

><td id="346"><a href="#346">346</a></td></tr
><tr id="gr_svn198_347"

><td id="347"><a href="#347">347</a></td></tr
><tr id="gr_svn198_348"

><td id="348"><a href="#348">348</a></td></tr
><tr id="gr_svn198_349"

><td id="349"><a href="#349">349</a></td></tr
><tr id="gr_svn198_350"

><td id="350"><a href="#350">350</a></td></tr
><tr id="gr_svn198_351"

><td id="351"><a href="#351">351</a></td></tr
><tr id="gr_svn198_352"

><td id="352"><a href="#352">352</a></td></tr
><tr id="gr_svn198_353"

><td id="353"><a href="#353">353</a></td></tr
><tr id="gr_svn198_354"

><td id="354"><a href="#354">354</a></td></tr
><tr id="gr_svn198_355"

><td id="355"><a href="#355">355</a></td></tr
><tr id="gr_svn198_356"

><td id="356"><a href="#356">356</a></td></tr
><tr id="gr_svn198_357"

><td id="357"><a href="#357">357</a></td></tr
><tr id="gr_svn198_358"

><td id="358"><a href="#358">358</a></td></tr
><tr id="gr_svn198_359"

><td id="359"><a href="#359">359</a></td></tr
><tr id="gr_svn198_360"

><td id="360"><a href="#360">360</a></td></tr
><tr id="gr_svn198_361"

><td id="361"><a href="#361">361</a></td></tr
><tr id="gr_svn198_362"

><td id="362"><a href="#362">362</a></td></tr
><tr id="gr_svn198_363"

><td id="363"><a href="#363">363</a></td></tr
><tr id="gr_svn198_364"

><td id="364"><a href="#364">364</a></td></tr
><tr id="gr_svn198_365"

><td id="365"><a href="#365">365</a></td></tr
><tr id="gr_svn198_366"

><td id="366"><a href="#366">366</a></td></tr
><tr id="gr_svn198_367"

><td id="367"><a href="#367">367</a></td></tr
><tr id="gr_svn198_368"

><td id="368"><a href="#368">368</a></td></tr
><tr id="gr_svn198_369"

><td id="369"><a href="#369">369</a></td></tr
><tr id="gr_svn198_370"

><td id="370"><a href="#370">370</a></td></tr
><tr id="gr_svn198_371"

><td id="371"><a href="#371">371</a></td></tr
><tr id="gr_svn198_372"

><td id="372"><a href="#372">372</a></td></tr
><tr id="gr_svn198_373"

><td id="373"><a href="#373">373</a></td></tr
><tr id="gr_svn198_374"

><td id="374"><a href="#374">374</a></td></tr
><tr id="gr_svn198_375"

><td id="375"><a href="#375">375</a></td></tr
><tr id="gr_svn198_376"

><td id="376"><a href="#376">376</a></td></tr
><tr id="gr_svn198_377"

><td id="377"><a href="#377">377</a></td></tr
><tr id="gr_svn198_378"

><td id="378"><a href="#378">378</a></td></tr
><tr id="gr_svn198_379"

><td id="379"><a href="#379">379</a></td></tr
><tr id="gr_svn198_380"

><td id="380"><a href="#380">380</a></td></tr
><tr id="gr_svn198_381"

><td id="381"><a href="#381">381</a></td></tr
><tr id="gr_svn198_382"

><td id="382"><a href="#382">382</a></td></tr
><tr id="gr_svn198_383"

><td id="383"><a href="#383">383</a></td></tr
><tr id="gr_svn198_384"

><td id="384"><a href="#384">384</a></td></tr
><tr id="gr_svn198_385"

><td id="385"><a href="#385">385</a></td></tr
><tr id="gr_svn198_386"

><td id="386"><a href="#386">386</a></td></tr
><tr id="gr_svn198_387"

><td id="387"><a href="#387">387</a></td></tr
><tr id="gr_svn198_388"

><td id="388"><a href="#388">388</a></td></tr
><tr id="gr_svn198_389"

><td id="389"><a href="#389">389</a></td></tr
><tr id="gr_svn198_390"

><td id="390"><a href="#390">390</a></td></tr
><tr id="gr_svn198_391"

><td id="391"><a href="#391">391</a></td></tr
><tr id="gr_svn198_392"

><td id="392"><a href="#392">392</a></td></tr
><tr id="gr_svn198_393"

><td id="393"><a href="#393">393</a></td></tr
><tr id="gr_svn198_394"

><td id="394"><a href="#394">394</a></td></tr
><tr id="gr_svn198_395"

><td id="395"><a href="#395">395</a></td></tr
><tr id="gr_svn198_396"

><td id="396"><a href="#396">396</a></td></tr
><tr id="gr_svn198_397"

><td id="397"><a href="#397">397</a></td></tr
><tr id="gr_svn198_398"

><td id="398"><a href="#398">398</a></td></tr
><tr id="gr_svn198_399"

><td id="399"><a href="#399">399</a></td></tr
><tr id="gr_svn198_400"

><td id="400"><a href="#400">400</a></td></tr
><tr id="gr_svn198_401"

><td id="401"><a href="#401">401</a></td></tr
><tr id="gr_svn198_402"

><td id="402"><a href="#402">402</a></td></tr
><tr id="gr_svn198_403"

><td id="403"><a href="#403">403</a></td></tr
><tr id="gr_svn198_404"

><td id="404"><a href="#404">404</a></td></tr
><tr id="gr_svn198_405"

><td id="405"><a href="#405">405</a></td></tr
><tr id="gr_svn198_406"

><td id="406"><a href="#406">406</a></td></tr
><tr id="gr_svn198_407"

><td id="407"><a href="#407">407</a></td></tr
><tr id="gr_svn198_408"

><td id="408"><a href="#408">408</a></td></tr
><tr id="gr_svn198_409"

><td id="409"><a href="#409">409</a></td></tr
><tr id="gr_svn198_410"

><td id="410"><a href="#410">410</a></td></tr
><tr id="gr_svn198_411"

><td id="411"><a href="#411">411</a></td></tr
><tr id="gr_svn198_412"

><td id="412"><a href="#412">412</a></td></tr
><tr id="gr_svn198_413"

><td id="413"><a href="#413">413</a></td></tr
><tr id="gr_svn198_414"

><td id="414"><a href="#414">414</a></td></tr
><tr id="gr_svn198_415"

><td id="415"><a href="#415">415</a></td></tr
><tr id="gr_svn198_416"

><td id="416"><a href="#416">416</a></td></tr
><tr id="gr_svn198_417"

><td id="417"><a href="#417">417</a></td></tr
><tr id="gr_svn198_418"

><td id="418"><a href="#418">418</a></td></tr
><tr id="gr_svn198_419"

><td id="419"><a href="#419">419</a></td></tr
><tr id="gr_svn198_420"

><td id="420"><a href="#420">420</a></td></tr
><tr id="gr_svn198_421"

><td id="421"><a href="#421">421</a></td></tr
><tr id="gr_svn198_422"

><td id="422"><a href="#422">422</a></td></tr
><tr id="gr_svn198_423"

><td id="423"><a href="#423">423</a></td></tr
><tr id="gr_svn198_424"

><td id="424"><a href="#424">424</a></td></tr
><tr id="gr_svn198_425"

><td id="425"><a href="#425">425</a></td></tr
><tr id="gr_svn198_426"

><td id="426"><a href="#426">426</a></td></tr
><tr id="gr_svn198_427"

><td id="427"><a href="#427">427</a></td></tr
><tr id="gr_svn198_428"

><td id="428"><a href="#428">428</a></td></tr
><tr id="gr_svn198_429"

><td id="429"><a href="#429">429</a></td></tr
><tr id="gr_svn198_430"

><td id="430"><a href="#430">430</a></td></tr
><tr id="gr_svn198_431"

><td id="431"><a href="#431">431</a></td></tr
><tr id="gr_svn198_432"

><td id="432"><a href="#432">432</a></td></tr
><tr id="gr_svn198_433"

><td id="433"><a href="#433">433</a></td></tr
><tr id="gr_svn198_434"

><td id="434"><a href="#434">434</a></td></tr
><tr id="gr_svn198_435"

><td id="435"><a href="#435">435</a></td></tr
><tr id="gr_svn198_436"

><td id="436"><a href="#436">436</a></td></tr
><tr id="gr_svn198_437"

><td id="437"><a href="#437">437</a></td></tr
><tr id="gr_svn198_438"

><td id="438"><a href="#438">438</a></td></tr
><tr id="gr_svn198_439"

><td id="439"><a href="#439">439</a></td></tr
><tr id="gr_svn198_440"

><td id="440"><a href="#440">440</a></td></tr
><tr id="gr_svn198_441"

><td id="441"><a href="#441">441</a></td></tr
><tr id="gr_svn198_442"

><td id="442"><a href="#442">442</a></td></tr
><tr id="gr_svn198_443"

><td id="443"><a href="#443">443</a></td></tr
><tr id="gr_svn198_444"

><td id="444"><a href="#444">444</a></td></tr
><tr id="gr_svn198_445"

><td id="445"><a href="#445">445</a></td></tr
><tr id="gr_svn198_446"

><td id="446"><a href="#446">446</a></td></tr
><tr id="gr_svn198_447"

><td id="447"><a href="#447">447</a></td></tr
><tr id="gr_svn198_448"

><td id="448"><a href="#448">448</a></td></tr
><tr id="gr_svn198_449"

><td id="449"><a href="#449">449</a></td></tr
><tr id="gr_svn198_450"

><td id="450"><a href="#450">450</a></td></tr
><tr id="gr_svn198_451"

><td id="451"><a href="#451">451</a></td></tr
><tr id="gr_svn198_452"

><td id="452"><a href="#452">452</a></td></tr
><tr id="gr_svn198_453"

><td id="453"><a href="#453">453</a></td></tr
><tr id="gr_svn198_454"

><td id="454"><a href="#454">454</a></td></tr
><tr id="gr_svn198_455"

><td id="455"><a href="#455">455</a></td></tr
><tr id="gr_svn198_456"

><td id="456"><a href="#456">456</a></td></tr
><tr id="gr_svn198_457"

><td id="457"><a href="#457">457</a></td></tr
><tr id="gr_svn198_458"

><td id="458"><a href="#458">458</a></td></tr
><tr id="gr_svn198_459"

><td id="459"><a href="#459">459</a></td></tr
><tr id="gr_svn198_460"

><td id="460"><a href="#460">460</a></td></tr
><tr id="gr_svn198_461"

><td id="461"><a href="#461">461</a></td></tr
><tr id="gr_svn198_462"

><td id="462"><a href="#462">462</a></td></tr
><tr id="gr_svn198_463"

><td id="463"><a href="#463">463</a></td></tr
><tr id="gr_svn198_464"

><td id="464"><a href="#464">464</a></td></tr
><tr id="gr_svn198_465"

><td id="465"><a href="#465">465</a></td></tr
><tr id="gr_svn198_466"

><td id="466"><a href="#466">466</a></td></tr
><tr id="gr_svn198_467"

><td id="467"><a href="#467">467</a></td></tr
><tr id="gr_svn198_468"

><td id="468"><a href="#468">468</a></td></tr
><tr id="gr_svn198_469"

><td id="469"><a href="#469">469</a></td></tr
><tr id="gr_svn198_470"

><td id="470"><a href="#470">470</a></td></tr
><tr id="gr_svn198_471"

><td id="471"><a href="#471">471</a></td></tr
><tr id="gr_svn198_472"

><td id="472"><a href="#472">472</a></td></tr
><tr id="gr_svn198_473"

><td id="473"><a href="#473">473</a></td></tr
><tr id="gr_svn198_474"

><td id="474"><a href="#474">474</a></td></tr
><tr id="gr_svn198_475"

><td id="475"><a href="#475">475</a></td></tr
><tr id="gr_svn198_476"

><td id="476"><a href="#476">476</a></td></tr
><tr id="gr_svn198_477"

><td id="477"><a href="#477">477</a></td></tr
><tr id="gr_svn198_478"

><td id="478"><a href="#478">478</a></td></tr
><tr id="gr_svn198_479"

><td id="479"><a href="#479">479</a></td></tr
><tr id="gr_svn198_480"

><td id="480"><a href="#480">480</a></td></tr
><tr id="gr_svn198_481"

><td id="481"><a href="#481">481</a></td></tr
><tr id="gr_svn198_482"

><td id="482"><a href="#482">482</a></td></tr
><tr id="gr_svn198_483"

><td id="483"><a href="#483">483</a></td></tr
><tr id="gr_svn198_484"

><td id="484"><a href="#484">484</a></td></tr
><tr id="gr_svn198_485"

><td id="485"><a href="#485">485</a></td></tr
><tr id="gr_svn198_486"

><td id="486"><a href="#486">486</a></td></tr
><tr id="gr_svn198_487"

><td id="487"><a href="#487">487</a></td></tr
><tr id="gr_svn198_488"

><td id="488"><a href="#488">488</a></td></tr
><tr id="gr_svn198_489"

><td id="489"><a href="#489">489</a></td></tr
><tr id="gr_svn198_490"

><td id="490"><a href="#490">490</a></td></tr
><tr id="gr_svn198_491"

><td id="491"><a href="#491">491</a></td></tr
><tr id="gr_svn198_492"

><td id="492"><a href="#492">492</a></td></tr
><tr id="gr_svn198_493"

><td id="493"><a href="#493">493</a></td></tr
><tr id="gr_svn198_494"

><td id="494"><a href="#494">494</a></td></tr
><tr id="gr_svn198_495"

><td id="495"><a href="#495">495</a></td></tr
><tr id="gr_svn198_496"

><td id="496"><a href="#496">496</a></td></tr
><tr id="gr_svn198_497"

><td id="497"><a href="#497">497</a></td></tr
><tr id="gr_svn198_498"

><td id="498"><a href="#498">498</a></td></tr
><tr id="gr_svn198_499"

><td id="499"><a href="#499">499</a></td></tr
><tr id="gr_svn198_500"

><td id="500"><a href="#500">500</a></td></tr
><tr id="gr_svn198_501"

><td id="501"><a href="#501">501</a></td></tr
><tr id="gr_svn198_502"

><td id="502"><a href="#502">502</a></td></tr
><tr id="gr_svn198_503"

><td id="503"><a href="#503">503</a></td></tr
><tr id="gr_svn198_504"

><td id="504"><a href="#504">504</a></td></tr
><tr id="gr_svn198_505"

><td id="505"><a href="#505">505</a></td></tr
><tr id="gr_svn198_506"

><td id="506"><a href="#506">506</a></td></tr
><tr id="gr_svn198_507"

><td id="507"><a href="#507">507</a></td></tr
><tr id="gr_svn198_508"

><td id="508"><a href="#508">508</a></td></tr
><tr id="gr_svn198_509"

><td id="509"><a href="#509">509</a></td></tr
><tr id="gr_svn198_510"

><td id="510"><a href="#510">510</a></td></tr
><tr id="gr_svn198_511"

><td id="511"><a href="#511">511</a></td></tr
><tr id="gr_svn198_512"

><td id="512"><a href="#512">512</a></td></tr
><tr id="gr_svn198_513"

><td id="513"><a href="#513">513</a></td></tr
><tr id="gr_svn198_514"

><td id="514"><a href="#514">514</a></td></tr
><tr id="gr_svn198_515"

><td id="515"><a href="#515">515</a></td></tr
><tr id="gr_svn198_516"

><td id="516"><a href="#516">516</a></td></tr
><tr id="gr_svn198_517"

><td id="517"><a href="#517">517</a></td></tr
><tr id="gr_svn198_518"

><td id="518"><a href="#518">518</a></td></tr
><tr id="gr_svn198_519"

><td id="519"><a href="#519">519</a></td></tr
><tr id="gr_svn198_520"

><td id="520"><a href="#520">520</a></td></tr
><tr id="gr_svn198_521"

><td id="521"><a href="#521">521</a></td></tr
><tr id="gr_svn198_522"

><td id="522"><a href="#522">522</a></td></tr
><tr id="gr_svn198_523"

><td id="523"><a href="#523">523</a></td></tr
><tr id="gr_svn198_524"

><td id="524"><a href="#524">524</a></td></tr
><tr id="gr_svn198_525"

><td id="525"><a href="#525">525</a></td></tr
><tr id="gr_svn198_526"

><td id="526"><a href="#526">526</a></td></tr
><tr id="gr_svn198_527"

><td id="527"><a href="#527">527</a></td></tr
><tr id="gr_svn198_528"

><td id="528"><a href="#528">528</a></td></tr
><tr id="gr_svn198_529"

><td id="529"><a href="#529">529</a></td></tr
><tr id="gr_svn198_530"

><td id="530"><a href="#530">530</a></td></tr
><tr id="gr_svn198_531"

><td id="531"><a href="#531">531</a></td></tr
><tr id="gr_svn198_532"

><td id="532"><a href="#532">532</a></td></tr
><tr id="gr_svn198_533"

><td id="533"><a href="#533">533</a></td></tr
><tr id="gr_svn198_534"

><td id="534"><a href="#534">534</a></td></tr
><tr id="gr_svn198_535"

><td id="535"><a href="#535">535</a></td></tr
><tr id="gr_svn198_536"

><td id="536"><a href="#536">536</a></td></tr
><tr id="gr_svn198_537"

><td id="537"><a href="#537">537</a></td></tr
><tr id="gr_svn198_538"

><td id="538"><a href="#538">538</a></td></tr
><tr id="gr_svn198_539"

><td id="539"><a href="#539">539</a></td></tr
><tr id="gr_svn198_540"

><td id="540"><a href="#540">540</a></td></tr
><tr id="gr_svn198_541"

><td id="541"><a href="#541">541</a></td></tr
><tr id="gr_svn198_542"

><td id="542"><a href="#542">542</a></td></tr
><tr id="gr_svn198_543"

><td id="543"><a href="#543">543</a></td></tr
><tr id="gr_svn198_544"

><td id="544"><a href="#544">544</a></td></tr
><tr id="gr_svn198_545"

><td id="545"><a href="#545">545</a></td></tr
><tr id="gr_svn198_546"

><td id="546"><a href="#546">546</a></td></tr
><tr id="gr_svn198_547"

><td id="547"><a href="#547">547</a></td></tr
><tr id="gr_svn198_548"

><td id="548"><a href="#548">548</a></td></tr
><tr id="gr_svn198_549"

><td id="549"><a href="#549">549</a></td></tr
><tr id="gr_svn198_550"

><td id="550"><a href="#550">550</a></td></tr
><tr id="gr_svn198_551"

><td id="551"><a href="#551">551</a></td></tr
><tr id="gr_svn198_552"

><td id="552"><a href="#552">552</a></td></tr
><tr id="gr_svn198_553"

><td id="553"><a href="#553">553</a></td></tr
><tr id="gr_svn198_554"

><td id="554"><a href="#554">554</a></td></tr
><tr id="gr_svn198_555"

><td id="555"><a href="#555">555</a></td></tr
><tr id="gr_svn198_556"

><td id="556"><a href="#556">556</a></td></tr
><tr id="gr_svn198_557"

><td id="557"><a href="#557">557</a></td></tr
><tr id="gr_svn198_558"

><td id="558"><a href="#558">558</a></td></tr
><tr id="gr_svn198_559"

><td id="559"><a href="#559">559</a></td></tr
><tr id="gr_svn198_560"

><td id="560"><a href="#560">560</a></td></tr
><tr id="gr_svn198_561"

><td id="561"><a href="#561">561</a></td></tr
><tr id="gr_svn198_562"

><td id="562"><a href="#562">562</a></td></tr
><tr id="gr_svn198_563"

><td id="563"><a href="#563">563</a></td></tr
><tr id="gr_svn198_564"

><td id="564"><a href="#564">564</a></td></tr
><tr id="gr_svn198_565"

><td id="565"><a href="#565">565</a></td></tr
><tr id="gr_svn198_566"

><td id="566"><a href="#566">566</a></td></tr
><tr id="gr_svn198_567"

><td id="567"><a href="#567">567</a></td></tr
><tr id="gr_svn198_568"

><td id="568"><a href="#568">568</a></td></tr
><tr id="gr_svn198_569"

><td id="569"><a href="#569">569</a></td></tr
><tr id="gr_svn198_570"

><td id="570"><a href="#570">570</a></td></tr
><tr id="gr_svn198_571"

><td id="571"><a href="#571">571</a></td></tr
><tr id="gr_svn198_572"

><td id="572"><a href="#572">572</a></td></tr
><tr id="gr_svn198_573"

><td id="573"><a href="#573">573</a></td></tr
><tr id="gr_svn198_574"

><td id="574"><a href="#574">574</a></td></tr
><tr id="gr_svn198_575"

><td id="575"><a href="#575">575</a></td></tr
><tr id="gr_svn198_576"

><td id="576"><a href="#576">576</a></td></tr
><tr id="gr_svn198_577"

><td id="577"><a href="#577">577</a></td></tr
><tr id="gr_svn198_578"

><td id="578"><a href="#578">578</a></td></tr
><tr id="gr_svn198_579"

><td id="579"><a href="#579">579</a></td></tr
><tr id="gr_svn198_580"

><td id="580"><a href="#580">580</a></td></tr
><tr id="gr_svn198_581"

><td id="581"><a href="#581">581</a></td></tr
><tr id="gr_svn198_582"

><td id="582"><a href="#582">582</a></td></tr
><tr id="gr_svn198_583"

><td id="583"><a href="#583">583</a></td></tr
><tr id="gr_svn198_584"

><td id="584"><a href="#584">584</a></td></tr
><tr id="gr_svn198_585"

><td id="585"><a href="#585">585</a></td></tr
><tr id="gr_svn198_586"

><td id="586"><a href="#586">586</a></td></tr
><tr id="gr_svn198_587"

><td id="587"><a href="#587">587</a></td></tr
><tr id="gr_svn198_588"

><td id="588"><a href="#588">588</a></td></tr
><tr id="gr_svn198_589"

><td id="589"><a href="#589">589</a></td></tr
><tr id="gr_svn198_590"

><td id="590"><a href="#590">590</a></td></tr
><tr id="gr_svn198_591"

><td id="591"><a href="#591">591</a></td></tr
><tr id="gr_svn198_592"

><td id="592"><a href="#592">592</a></td></tr
><tr id="gr_svn198_593"

><td id="593"><a href="#593">593</a></td></tr
><tr id="gr_svn198_594"

><td id="594"><a href="#594">594</a></td></tr
><tr id="gr_svn198_595"

><td id="595"><a href="#595">595</a></td></tr
><tr id="gr_svn198_596"

><td id="596"><a href="#596">596</a></td></tr
><tr id="gr_svn198_597"

><td id="597"><a href="#597">597</a></td></tr
><tr id="gr_svn198_598"

><td id="598"><a href="#598">598</a></td></tr
><tr id="gr_svn198_599"

><td id="599"><a href="#599">599</a></td></tr
><tr id="gr_svn198_600"

><td id="600"><a href="#600">600</a></td></tr
><tr id="gr_svn198_601"

><td id="601"><a href="#601">601</a></td></tr
><tr id="gr_svn198_602"

><td id="602"><a href="#602">602</a></td></tr
><tr id="gr_svn198_603"

><td id="603"><a href="#603">603</a></td></tr
><tr id="gr_svn198_604"

><td id="604"><a href="#604">604</a></td></tr
><tr id="gr_svn198_605"

><td id="605"><a href="#605">605</a></td></tr
><tr id="gr_svn198_606"

><td id="606"><a href="#606">606</a></td></tr
><tr id="gr_svn198_607"

><td id="607"><a href="#607">607</a></td></tr
><tr id="gr_svn198_608"

><td id="608"><a href="#608">608</a></td></tr
><tr id="gr_svn198_609"

><td id="609"><a href="#609">609</a></td></tr
><tr id="gr_svn198_610"

><td id="610"><a href="#610">610</a></td></tr
><tr id="gr_svn198_611"

><td id="611"><a href="#611">611</a></td></tr
><tr id="gr_svn198_612"

><td id="612"><a href="#612">612</a></td></tr
><tr id="gr_svn198_613"

><td id="613"><a href="#613">613</a></td></tr
><tr id="gr_svn198_614"

><td id="614"><a href="#614">614</a></td></tr
><tr id="gr_svn198_615"

><td id="615"><a href="#615">615</a></td></tr
><tr id="gr_svn198_616"

><td id="616"><a href="#616">616</a></td></tr
><tr id="gr_svn198_617"

><td id="617"><a href="#617">617</a></td></tr
><tr id="gr_svn198_618"

><td id="618"><a href="#618">618</a></td></tr
><tr id="gr_svn198_619"

><td id="619"><a href="#619">619</a></td></tr
><tr id="gr_svn198_620"

><td id="620"><a href="#620">620</a></td></tr
><tr id="gr_svn198_621"

><td id="621"><a href="#621">621</a></td></tr
><tr id="gr_svn198_622"

><td id="622"><a href="#622">622</a></td></tr
><tr id="gr_svn198_623"

><td id="623"><a href="#623">623</a></td></tr
><tr id="gr_svn198_624"

><td id="624"><a href="#624">624</a></td></tr
><tr id="gr_svn198_625"

><td id="625"><a href="#625">625</a></td></tr
><tr id="gr_svn198_626"

><td id="626"><a href="#626">626</a></td></tr
><tr id="gr_svn198_627"

><td id="627"><a href="#627">627</a></td></tr
><tr id="gr_svn198_628"

><td id="628"><a href="#628">628</a></td></tr
><tr id="gr_svn198_629"

><td id="629"><a href="#629">629</a></td></tr
><tr id="gr_svn198_630"

><td id="630"><a href="#630">630</a></td></tr
><tr id="gr_svn198_631"

><td id="631"><a href="#631">631</a></td></tr
><tr id="gr_svn198_632"

><td id="632"><a href="#632">632</a></td></tr
><tr id="gr_svn198_633"

><td id="633"><a href="#633">633</a></td></tr
><tr id="gr_svn198_634"

><td id="634"><a href="#634">634</a></td></tr
><tr id="gr_svn198_635"

><td id="635"><a href="#635">635</a></td></tr
><tr id="gr_svn198_636"

><td id="636"><a href="#636">636</a></td></tr
><tr id="gr_svn198_637"

><td id="637"><a href="#637">637</a></td></tr
><tr id="gr_svn198_638"

><td id="638"><a href="#638">638</a></td></tr
><tr id="gr_svn198_639"

><td id="639"><a href="#639">639</a></td></tr
><tr id="gr_svn198_640"

><td id="640"><a href="#640">640</a></td></tr
><tr id="gr_svn198_641"

><td id="641"><a href="#641">641</a></td></tr
><tr id="gr_svn198_642"

><td id="642"><a href="#642">642</a></td></tr
><tr id="gr_svn198_643"

><td id="643"><a href="#643">643</a></td></tr
><tr id="gr_svn198_644"

><td id="644"><a href="#644">644</a></td></tr
><tr id="gr_svn198_645"

><td id="645"><a href="#645">645</a></td></tr
><tr id="gr_svn198_646"

><td id="646"><a href="#646">646</a></td></tr
><tr id="gr_svn198_647"

><td id="647"><a href="#647">647</a></td></tr
><tr id="gr_svn198_648"

><td id="648"><a href="#648">648</a></td></tr
><tr id="gr_svn198_649"

><td id="649"><a href="#649">649</a></td></tr
><tr id="gr_svn198_650"

><td id="650"><a href="#650">650</a></td></tr
><tr id="gr_svn198_651"

><td id="651"><a href="#651">651</a></td></tr
><tr id="gr_svn198_652"

><td id="652"><a href="#652">652</a></td></tr
><tr id="gr_svn198_653"

><td id="653"><a href="#653">653</a></td></tr
><tr id="gr_svn198_654"

><td id="654"><a href="#654">654</a></td></tr
><tr id="gr_svn198_655"

><td id="655"><a href="#655">655</a></td></tr
><tr id="gr_svn198_656"

><td id="656"><a href="#656">656</a></td></tr
><tr id="gr_svn198_657"

><td id="657"><a href="#657">657</a></td></tr
><tr id="gr_svn198_658"

><td id="658"><a href="#658">658</a></td></tr
><tr id="gr_svn198_659"

><td id="659"><a href="#659">659</a></td></tr
><tr id="gr_svn198_660"

><td id="660"><a href="#660">660</a></td></tr
><tr id="gr_svn198_661"

><td id="661"><a href="#661">661</a></td></tr
><tr id="gr_svn198_662"

><td id="662"><a href="#662">662</a></td></tr
><tr id="gr_svn198_663"

><td id="663"><a href="#663">663</a></td></tr
><tr id="gr_svn198_664"

><td id="664"><a href="#664">664</a></td></tr
><tr id="gr_svn198_665"

><td id="665"><a href="#665">665</a></td></tr
><tr id="gr_svn198_666"

><td id="666"><a href="#666">666</a></td></tr
><tr id="gr_svn198_667"

><td id="667"><a href="#667">667</a></td></tr
><tr id="gr_svn198_668"

><td id="668"><a href="#668">668</a></td></tr
><tr id="gr_svn198_669"

><td id="669"><a href="#669">669</a></td></tr
><tr id="gr_svn198_670"

><td id="670"><a href="#670">670</a></td></tr
><tr id="gr_svn198_671"

><td id="671"><a href="#671">671</a></td></tr
><tr id="gr_svn198_672"

><td id="672"><a href="#672">672</a></td></tr
><tr id="gr_svn198_673"

><td id="673"><a href="#673">673</a></td></tr
><tr id="gr_svn198_674"

><td id="674"><a href="#674">674</a></td></tr
><tr id="gr_svn198_675"

><td id="675"><a href="#675">675</a></td></tr
><tr id="gr_svn198_676"

><td id="676"><a href="#676">676</a></td></tr
><tr id="gr_svn198_677"

><td id="677"><a href="#677">677</a></td></tr
><tr id="gr_svn198_678"

><td id="678"><a href="#678">678</a></td></tr
><tr id="gr_svn198_679"

><td id="679"><a href="#679">679</a></td></tr
><tr id="gr_svn198_680"

><td id="680"><a href="#680">680</a></td></tr
><tr id="gr_svn198_681"

><td id="681"><a href="#681">681</a></td></tr
><tr id="gr_svn198_682"

><td id="682"><a href="#682">682</a></td></tr
><tr id="gr_svn198_683"

><td id="683"><a href="#683">683</a></td></tr
><tr id="gr_svn198_684"

><td id="684"><a href="#684">684</a></td></tr
><tr id="gr_svn198_685"

><td id="685"><a href="#685">685</a></td></tr
><tr id="gr_svn198_686"

><td id="686"><a href="#686">686</a></td></tr
><tr id="gr_svn198_687"

><td id="687"><a href="#687">687</a></td></tr
><tr id="gr_svn198_688"

><td id="688"><a href="#688">688</a></td></tr
><tr id="gr_svn198_689"

><td id="689"><a href="#689">689</a></td></tr
><tr id="gr_svn198_690"

><td id="690"><a href="#690">690</a></td></tr
><tr id="gr_svn198_691"

><td id="691"><a href="#691">691</a></td></tr
><tr id="gr_svn198_692"

><td id="692"><a href="#692">692</a></td></tr
><tr id="gr_svn198_693"

><td id="693"><a href="#693">693</a></td></tr
><tr id="gr_svn198_694"

><td id="694"><a href="#694">694</a></td></tr
><tr id="gr_svn198_695"

><td id="695"><a href="#695">695</a></td></tr
><tr id="gr_svn198_696"

><td id="696"><a href="#696">696</a></td></tr
><tr id="gr_svn198_697"

><td id="697"><a href="#697">697</a></td></tr
><tr id="gr_svn198_698"

><td id="698"><a href="#698">698</a></td></tr
><tr id="gr_svn198_699"

><td id="699"><a href="#699">699</a></td></tr
><tr id="gr_svn198_700"

><td id="700"><a href="#700">700</a></td></tr
><tr id="gr_svn198_701"

><td id="701"><a href="#701">701</a></td></tr
><tr id="gr_svn198_702"

><td id="702"><a href="#702">702</a></td></tr
><tr id="gr_svn198_703"

><td id="703"><a href="#703">703</a></td></tr
><tr id="gr_svn198_704"

><td id="704"><a href="#704">704</a></td></tr
><tr id="gr_svn198_705"

><td id="705"><a href="#705">705</a></td></tr
><tr id="gr_svn198_706"

><td id="706"><a href="#706">706</a></td></tr
><tr id="gr_svn198_707"

><td id="707"><a href="#707">707</a></td></tr
><tr id="gr_svn198_708"

><td id="708"><a href="#708">708</a></td></tr
><tr id="gr_svn198_709"

><td id="709"><a href="#709">709</a></td></tr
><tr id="gr_svn198_710"

><td id="710"><a href="#710">710</a></td></tr
><tr id="gr_svn198_711"

><td id="711"><a href="#711">711</a></td></tr
><tr id="gr_svn198_712"

><td id="712"><a href="#712">712</a></td></tr
><tr id="gr_svn198_713"

><td id="713"><a href="#713">713</a></td></tr
><tr id="gr_svn198_714"

><td id="714"><a href="#714">714</a></td></tr
><tr id="gr_svn198_715"

><td id="715"><a href="#715">715</a></td></tr
><tr id="gr_svn198_716"

><td id="716"><a href="#716">716</a></td></tr
><tr id="gr_svn198_717"

><td id="717"><a href="#717">717</a></td></tr
><tr id="gr_svn198_718"

><td id="718"><a href="#718">718</a></td></tr
><tr id="gr_svn198_719"

><td id="719"><a href="#719">719</a></td></tr
><tr id="gr_svn198_720"

><td id="720"><a href="#720">720</a></td></tr
><tr id="gr_svn198_721"

><td id="721"><a href="#721">721</a></td></tr
><tr id="gr_svn198_722"

><td id="722"><a href="#722">722</a></td></tr
><tr id="gr_svn198_723"

><td id="723"><a href="#723">723</a></td></tr
><tr id="gr_svn198_724"

><td id="724"><a href="#724">724</a></td></tr
><tr id="gr_svn198_725"

><td id="725"><a href="#725">725</a></td></tr
><tr id="gr_svn198_726"

><td id="726"><a href="#726">726</a></td></tr
><tr id="gr_svn198_727"

><td id="727"><a href="#727">727</a></td></tr
><tr id="gr_svn198_728"

><td id="728"><a href="#728">728</a></td></tr
><tr id="gr_svn198_729"

><td id="729"><a href="#729">729</a></td></tr
><tr id="gr_svn198_730"

><td id="730"><a href="#730">730</a></td></tr
><tr id="gr_svn198_731"

><td id="731"><a href="#731">731</a></td></tr
><tr id="gr_svn198_732"

><td id="732"><a href="#732">732</a></td></tr
><tr id="gr_svn198_733"

><td id="733"><a href="#733">733</a></td></tr
><tr id="gr_svn198_734"

><td id="734"><a href="#734">734</a></td></tr
><tr id="gr_svn198_735"

><td id="735"><a href="#735">735</a></td></tr
><tr id="gr_svn198_736"

><td id="736"><a href="#736">736</a></td></tr
><tr id="gr_svn198_737"

><td id="737"><a href="#737">737</a></td></tr
><tr id="gr_svn198_738"

><td id="738"><a href="#738">738</a></td></tr
><tr id="gr_svn198_739"

><td id="739"><a href="#739">739</a></td></tr
><tr id="gr_svn198_740"

><td id="740"><a href="#740">740</a></td></tr
><tr id="gr_svn198_741"

><td id="741"><a href="#741">741</a></td></tr
><tr id="gr_svn198_742"

><td id="742"><a href="#742">742</a></td></tr
><tr id="gr_svn198_743"

><td id="743"><a href="#743">743</a></td></tr
><tr id="gr_svn198_744"

><td id="744"><a href="#744">744</a></td></tr
><tr id="gr_svn198_745"

><td id="745"><a href="#745">745</a></td></tr
><tr id="gr_svn198_746"

><td id="746"><a href="#746">746</a></td></tr
><tr id="gr_svn198_747"

><td id="747"><a href="#747">747</a></td></tr
><tr id="gr_svn198_748"

><td id="748"><a href="#748">748</a></td></tr
><tr id="gr_svn198_749"

><td id="749"><a href="#749">749</a></td></tr
><tr id="gr_svn198_750"

><td id="750"><a href="#750">750</a></td></tr
><tr id="gr_svn198_751"

><td id="751"><a href="#751">751</a></td></tr
><tr id="gr_svn198_752"

><td id="752"><a href="#752">752</a></td></tr
><tr id="gr_svn198_753"

><td id="753"><a href="#753">753</a></td></tr
><tr id="gr_svn198_754"

><td id="754"><a href="#754">754</a></td></tr
><tr id="gr_svn198_755"

><td id="755"><a href="#755">755</a></td></tr
><tr id="gr_svn198_756"

><td id="756"><a href="#756">756</a></td></tr
><tr id="gr_svn198_757"

><td id="757"><a href="#757">757</a></td></tr
><tr id="gr_svn198_758"

><td id="758"><a href="#758">758</a></td></tr
><tr id="gr_svn198_759"

><td id="759"><a href="#759">759</a></td></tr
><tr id="gr_svn198_760"

><td id="760"><a href="#760">760</a></td></tr
><tr id="gr_svn198_761"

><td id="761"><a href="#761">761</a></td></tr
><tr id="gr_svn198_762"

><td id="762"><a href="#762">762</a></td></tr
><tr id="gr_svn198_763"

><td id="763"><a href="#763">763</a></td></tr
><tr id="gr_svn198_764"

><td id="764"><a href="#764">764</a></td></tr
><tr id="gr_svn198_765"

><td id="765"><a href="#765">765</a></td></tr
><tr id="gr_svn198_766"

><td id="766"><a href="#766">766</a></td></tr
><tr id="gr_svn198_767"

><td id="767"><a href="#767">767</a></td></tr
><tr id="gr_svn198_768"

><td id="768"><a href="#768">768</a></td></tr
><tr id="gr_svn198_769"

><td id="769"><a href="#769">769</a></td></tr
><tr id="gr_svn198_770"

><td id="770"><a href="#770">770</a></td></tr
><tr id="gr_svn198_771"

><td id="771"><a href="#771">771</a></td></tr
><tr id="gr_svn198_772"

><td id="772"><a href="#772">772</a></td></tr
><tr id="gr_svn198_773"

><td id="773"><a href="#773">773</a></td></tr
><tr id="gr_svn198_774"

><td id="774"><a href="#774">774</a></td></tr
><tr id="gr_svn198_775"

><td id="775"><a href="#775">775</a></td></tr
><tr id="gr_svn198_776"

><td id="776"><a href="#776">776</a></td></tr
><tr id="gr_svn198_777"

><td id="777"><a href="#777">777</a></td></tr
><tr id="gr_svn198_778"

><td id="778"><a href="#778">778</a></td></tr
><tr id="gr_svn198_779"

><td id="779"><a href="#779">779</a></td></tr
><tr id="gr_svn198_780"

><td id="780"><a href="#780">780</a></td></tr
><tr id="gr_svn198_781"

><td id="781"><a href="#781">781</a></td></tr
><tr id="gr_svn198_782"

><td id="782"><a href="#782">782</a></td></tr
><tr id="gr_svn198_783"

><td id="783"><a href="#783">783</a></td></tr
><tr id="gr_svn198_784"

><td id="784"><a href="#784">784</a></td></tr
><tr id="gr_svn198_785"

><td id="785"><a href="#785">785</a></td></tr
><tr id="gr_svn198_786"

><td id="786"><a href="#786">786</a></td></tr
><tr id="gr_svn198_787"

><td id="787"><a href="#787">787</a></td></tr
><tr id="gr_svn198_788"

><td id="788"><a href="#788">788</a></td></tr
><tr id="gr_svn198_789"

><td id="789"><a href="#789">789</a></td></tr
><tr id="gr_svn198_790"

><td id="790"><a href="#790">790</a></td></tr
><tr id="gr_svn198_791"

><td id="791"><a href="#791">791</a></td></tr
><tr id="gr_svn198_792"

><td id="792"><a href="#792">792</a></td></tr
><tr id="gr_svn198_793"

><td id="793"><a href="#793">793</a></td></tr
><tr id="gr_svn198_794"

><td id="794"><a href="#794">794</a></td></tr
><tr id="gr_svn198_795"

><td id="795"><a href="#795">795</a></td></tr
><tr id="gr_svn198_796"

><td id="796"><a href="#796">796</a></td></tr
><tr id="gr_svn198_797"

><td id="797"><a href="#797">797</a></td></tr
><tr id="gr_svn198_798"

><td id="798"><a href="#798">798</a></td></tr
><tr id="gr_svn198_799"

><td id="799"><a href="#799">799</a></td></tr
><tr id="gr_svn198_800"

><td id="800"><a href="#800">800</a></td></tr
><tr id="gr_svn198_801"

><td id="801"><a href="#801">801</a></td></tr
><tr id="gr_svn198_802"

><td id="802"><a href="#802">802</a></td></tr
><tr id="gr_svn198_803"

><td id="803"><a href="#803">803</a></td></tr
><tr id="gr_svn198_804"

><td id="804"><a href="#804">804</a></td></tr
><tr id="gr_svn198_805"

><td id="805"><a href="#805">805</a></td></tr
><tr id="gr_svn198_806"

><td id="806"><a href="#806">806</a></td></tr
><tr id="gr_svn198_807"

><td id="807"><a href="#807">807</a></td></tr
><tr id="gr_svn198_808"

><td id="808"><a href="#808">808</a></td></tr
><tr id="gr_svn198_809"

><td id="809"><a href="#809">809</a></td></tr
><tr id="gr_svn198_810"

><td id="810"><a href="#810">810</a></td></tr
><tr id="gr_svn198_811"

><td id="811"><a href="#811">811</a></td></tr
><tr id="gr_svn198_812"

><td id="812"><a href="#812">812</a></td></tr
><tr id="gr_svn198_813"

><td id="813"><a href="#813">813</a></td></tr
><tr id="gr_svn198_814"

><td id="814"><a href="#814">814</a></td></tr
><tr id="gr_svn198_815"

><td id="815"><a href="#815">815</a></td></tr
><tr id="gr_svn198_816"

><td id="816"><a href="#816">816</a></td></tr
><tr id="gr_svn198_817"

><td id="817"><a href="#817">817</a></td></tr
><tr id="gr_svn198_818"

><td id="818"><a href="#818">818</a></td></tr
><tr id="gr_svn198_819"

><td id="819"><a href="#819">819</a></td></tr
><tr id="gr_svn198_820"

><td id="820"><a href="#820">820</a></td></tr
><tr id="gr_svn198_821"

><td id="821"><a href="#821">821</a></td></tr
><tr id="gr_svn198_822"

><td id="822"><a href="#822">822</a></td></tr
><tr id="gr_svn198_823"

><td id="823"><a href="#823">823</a></td></tr
><tr id="gr_svn198_824"

><td id="824"><a href="#824">824</a></td></tr
><tr id="gr_svn198_825"

><td id="825"><a href="#825">825</a></td></tr
><tr id="gr_svn198_826"

><td id="826"><a href="#826">826</a></td></tr
><tr id="gr_svn198_827"

><td id="827"><a href="#827">827</a></td></tr
><tr id="gr_svn198_828"

><td id="828"><a href="#828">828</a></td></tr
><tr id="gr_svn198_829"

><td id="829"><a href="#829">829</a></td></tr
><tr id="gr_svn198_830"

><td id="830"><a href="#830">830</a></td></tr
><tr id="gr_svn198_831"

><td id="831"><a href="#831">831</a></td></tr
><tr id="gr_svn198_832"

><td id="832"><a href="#832">832</a></td></tr
><tr id="gr_svn198_833"

><td id="833"><a href="#833">833</a></td></tr
><tr id="gr_svn198_834"

><td id="834"><a href="#834">834</a></td></tr
><tr id="gr_svn198_835"

><td id="835"><a href="#835">835</a></td></tr
><tr id="gr_svn198_836"

><td id="836"><a href="#836">836</a></td></tr
><tr id="gr_svn198_837"

><td id="837"><a href="#837">837</a></td></tr
><tr id="gr_svn198_838"

><td id="838"><a href="#838">838</a></td></tr
><tr id="gr_svn198_839"

><td id="839"><a href="#839">839</a></td></tr
><tr id="gr_svn198_840"

><td id="840"><a href="#840">840</a></td></tr
><tr id="gr_svn198_841"

><td id="841"><a href="#841">841</a></td></tr
><tr id="gr_svn198_842"

><td id="842"><a href="#842">842</a></td></tr
><tr id="gr_svn198_843"

><td id="843"><a href="#843">843</a></td></tr
><tr id="gr_svn198_844"

><td id="844"><a href="#844">844</a></td></tr
><tr id="gr_svn198_845"

><td id="845"><a href="#845">845</a></td></tr
><tr id="gr_svn198_846"

><td id="846"><a href="#846">846</a></td></tr
><tr id="gr_svn198_847"

><td id="847"><a href="#847">847</a></td></tr
><tr id="gr_svn198_848"

><td id="848"><a href="#848">848</a></td></tr
><tr id="gr_svn198_849"

><td id="849"><a href="#849">849</a></td></tr
><tr id="gr_svn198_850"

><td id="850"><a href="#850">850</a></td></tr
><tr id="gr_svn198_851"

><td id="851"><a href="#851">851</a></td></tr
><tr id="gr_svn198_852"

><td id="852"><a href="#852">852</a></td></tr
><tr id="gr_svn198_853"

><td id="853"><a href="#853">853</a></td></tr
><tr id="gr_svn198_854"

><td id="854"><a href="#854">854</a></td></tr
><tr id="gr_svn198_855"

><td id="855"><a href="#855">855</a></td></tr
><tr id="gr_svn198_856"

><td id="856"><a href="#856">856</a></td></tr
><tr id="gr_svn198_857"

><td id="857"><a href="#857">857</a></td></tr
><tr id="gr_svn198_858"

><td id="858"><a href="#858">858</a></td></tr
><tr id="gr_svn198_859"

><td id="859"><a href="#859">859</a></td></tr
><tr id="gr_svn198_860"

><td id="860"><a href="#860">860</a></td></tr
><tr id="gr_svn198_861"

><td id="861"><a href="#861">861</a></td></tr
><tr id="gr_svn198_862"

><td id="862"><a href="#862">862</a></td></tr
><tr id="gr_svn198_863"

><td id="863"><a href="#863">863</a></td></tr
><tr id="gr_svn198_864"

><td id="864"><a href="#864">864</a></td></tr
><tr id="gr_svn198_865"

><td id="865"><a href="#865">865</a></td></tr
><tr id="gr_svn198_866"

><td id="866"><a href="#866">866</a></td></tr
><tr id="gr_svn198_867"

><td id="867"><a href="#867">867</a></td></tr
><tr id="gr_svn198_868"

><td id="868"><a href="#868">868</a></td></tr
><tr id="gr_svn198_869"

><td id="869"><a href="#869">869</a></td></tr
><tr id="gr_svn198_870"

><td id="870"><a href="#870">870</a></td></tr
><tr id="gr_svn198_871"

><td id="871"><a href="#871">871</a></td></tr
><tr id="gr_svn198_872"

><td id="872"><a href="#872">872</a></td></tr
><tr id="gr_svn198_873"

><td id="873"><a href="#873">873</a></td></tr
><tr id="gr_svn198_874"

><td id="874"><a href="#874">874</a></td></tr
><tr id="gr_svn198_875"

><td id="875"><a href="#875">875</a></td></tr
><tr id="gr_svn198_876"

><td id="876"><a href="#876">876</a></td></tr
><tr id="gr_svn198_877"

><td id="877"><a href="#877">877</a></td></tr
><tr id="gr_svn198_878"

><td id="878"><a href="#878">878</a></td></tr
><tr id="gr_svn198_879"

><td id="879"><a href="#879">879</a></td></tr
><tr id="gr_svn198_880"

><td id="880"><a href="#880">880</a></td></tr
><tr id="gr_svn198_881"

><td id="881"><a href="#881">881</a></td></tr
><tr id="gr_svn198_882"

><td id="882"><a href="#882">882</a></td></tr
><tr id="gr_svn198_883"

><td id="883"><a href="#883">883</a></td></tr
><tr id="gr_svn198_884"

><td id="884"><a href="#884">884</a></td></tr
><tr id="gr_svn198_885"

><td id="885"><a href="#885">885</a></td></tr
><tr id="gr_svn198_886"

><td id="886"><a href="#886">886</a></td></tr
><tr id="gr_svn198_887"

><td id="887"><a href="#887">887</a></td></tr
><tr id="gr_svn198_888"

><td id="888"><a href="#888">888</a></td></tr
><tr id="gr_svn198_889"

><td id="889"><a href="#889">889</a></td></tr
><tr id="gr_svn198_890"

><td id="890"><a href="#890">890</a></td></tr
><tr id="gr_svn198_891"

><td id="891"><a href="#891">891</a></td></tr
><tr id="gr_svn198_892"

><td id="892"><a href="#892">892</a></td></tr
><tr id="gr_svn198_893"

><td id="893"><a href="#893">893</a></td></tr
><tr id="gr_svn198_894"

><td id="894"><a href="#894">894</a></td></tr
><tr id="gr_svn198_895"

><td id="895"><a href="#895">895</a></td></tr
><tr id="gr_svn198_896"

><td id="896"><a href="#896">896</a></td></tr
><tr id="gr_svn198_897"

><td id="897"><a href="#897">897</a></td></tr
><tr id="gr_svn198_898"

><td id="898"><a href="#898">898</a></td></tr
><tr id="gr_svn198_899"

><td id="899"><a href="#899">899</a></td></tr
><tr id="gr_svn198_900"

><td id="900"><a href="#900">900</a></td></tr
><tr id="gr_svn198_901"

><td id="901"><a href="#901">901</a></td></tr
><tr id="gr_svn198_902"

><td id="902"><a href="#902">902</a></td></tr
><tr id="gr_svn198_903"

><td id="903"><a href="#903">903</a></td></tr
><tr id="gr_svn198_904"

><td id="904"><a href="#904">904</a></td></tr
><tr id="gr_svn198_905"

><td id="905"><a href="#905">905</a></td></tr
><tr id="gr_svn198_906"

><td id="906"><a href="#906">906</a></td></tr
><tr id="gr_svn198_907"

><td id="907"><a href="#907">907</a></td></tr
><tr id="gr_svn198_908"

><td id="908"><a href="#908">908</a></td></tr
><tr id="gr_svn198_909"

><td id="909"><a href="#909">909</a></td></tr
><tr id="gr_svn198_910"

><td id="910"><a href="#910">910</a></td></tr
><tr id="gr_svn198_911"

><td id="911"><a href="#911">911</a></td></tr
><tr id="gr_svn198_912"

><td id="912"><a href="#912">912</a></td></tr
><tr id="gr_svn198_913"

><td id="913"><a href="#913">913</a></td></tr
><tr id="gr_svn198_914"

><td id="914"><a href="#914">914</a></td></tr
><tr id="gr_svn198_915"

><td id="915"><a href="#915">915</a></td></tr
><tr id="gr_svn198_916"

><td id="916"><a href="#916">916</a></td></tr
><tr id="gr_svn198_917"

><td id="917"><a href="#917">917</a></td></tr
><tr id="gr_svn198_918"

><td id="918"><a href="#918">918</a></td></tr
><tr id="gr_svn198_919"

><td id="919"><a href="#919">919</a></td></tr
><tr id="gr_svn198_920"

><td id="920"><a href="#920">920</a></td></tr
><tr id="gr_svn198_921"

><td id="921"><a href="#921">921</a></td></tr
><tr id="gr_svn198_922"

><td id="922"><a href="#922">922</a></td></tr
><tr id="gr_svn198_923"

><td id="923"><a href="#923">923</a></td></tr
><tr id="gr_svn198_924"

><td id="924"><a href="#924">924</a></td></tr
><tr id="gr_svn198_925"

><td id="925"><a href="#925">925</a></td></tr
><tr id="gr_svn198_926"

><td id="926"><a href="#926">926</a></td></tr
><tr id="gr_svn198_927"

><td id="927"><a href="#927">927</a></td></tr
><tr id="gr_svn198_928"

><td id="928"><a href="#928">928</a></td></tr
><tr id="gr_svn198_929"

><td id="929"><a href="#929">929</a></td></tr
><tr id="gr_svn198_930"

><td id="930"><a href="#930">930</a></td></tr
><tr id="gr_svn198_931"

><td id="931"><a href="#931">931</a></td></tr
><tr id="gr_svn198_932"

><td id="932"><a href="#932">932</a></td></tr
><tr id="gr_svn198_933"

><td id="933"><a href="#933">933</a></td></tr
><tr id="gr_svn198_934"

><td id="934"><a href="#934">934</a></td></tr
><tr id="gr_svn198_935"

><td id="935"><a href="#935">935</a></td></tr
><tr id="gr_svn198_936"

><td id="936"><a href="#936">936</a></td></tr
><tr id="gr_svn198_937"

><td id="937"><a href="#937">937</a></td></tr
><tr id="gr_svn198_938"

><td id="938"><a href="#938">938</a></td></tr
><tr id="gr_svn198_939"

><td id="939"><a href="#939">939</a></td></tr
><tr id="gr_svn198_940"

><td id="940"><a href="#940">940</a></td></tr
><tr id="gr_svn198_941"

><td id="941"><a href="#941">941</a></td></tr
><tr id="gr_svn198_942"

><td id="942"><a href="#942">942</a></td></tr
><tr id="gr_svn198_943"

><td id="943"><a href="#943">943</a></td></tr
><tr id="gr_svn198_944"

><td id="944"><a href="#944">944</a></td></tr
><tr id="gr_svn198_945"

><td id="945"><a href="#945">945</a></td></tr
><tr id="gr_svn198_946"

><td id="946"><a href="#946">946</a></td></tr
><tr id="gr_svn198_947"

><td id="947"><a href="#947">947</a></td></tr
><tr id="gr_svn198_948"

><td id="948"><a href="#948">948</a></td></tr
><tr id="gr_svn198_949"

><td id="949"><a href="#949">949</a></td></tr
><tr id="gr_svn198_950"

><td id="950"><a href="#950">950</a></td></tr
><tr id="gr_svn198_951"

><td id="951"><a href="#951">951</a></td></tr
><tr id="gr_svn198_952"

><td id="952"><a href="#952">952</a></td></tr
><tr id="gr_svn198_953"

><td id="953"><a href="#953">953</a></td></tr
><tr id="gr_svn198_954"

><td id="954"><a href="#954">954</a></td></tr
><tr id="gr_svn198_955"

><td id="955"><a href="#955">955</a></td></tr
><tr id="gr_svn198_956"

><td id="956"><a href="#956">956</a></td></tr
><tr id="gr_svn198_957"

><td id="957"><a href="#957">957</a></td></tr
><tr id="gr_svn198_958"

><td id="958"><a href="#958">958</a></td></tr
><tr id="gr_svn198_959"

><td id="959"><a href="#959">959</a></td></tr
><tr id="gr_svn198_960"

><td id="960"><a href="#960">960</a></td></tr
><tr id="gr_svn198_961"

><td id="961"><a href="#961">961</a></td></tr
><tr id="gr_svn198_962"

><td id="962"><a href="#962">962</a></td></tr
><tr id="gr_svn198_963"

><td id="963"><a href="#963">963</a></td></tr
><tr id="gr_svn198_964"

><td id="964"><a href="#964">964</a></td></tr
><tr id="gr_svn198_965"

><td id="965"><a href="#965">965</a></td></tr
><tr id="gr_svn198_966"

><td id="966"><a href="#966">966</a></td></tr
><tr id="gr_svn198_967"

><td id="967"><a href="#967">967</a></td></tr
><tr id="gr_svn198_968"

><td id="968"><a href="#968">968</a></td></tr
><tr id="gr_svn198_969"

><td id="969"><a href="#969">969</a></td></tr
><tr id="gr_svn198_970"

><td id="970"><a href="#970">970</a></td></tr
><tr id="gr_svn198_971"

><td id="971"><a href="#971">971</a></td></tr
><tr id="gr_svn198_972"

><td id="972"><a href="#972">972</a></td></tr
><tr id="gr_svn198_973"

><td id="973"><a href="#973">973</a></td></tr
><tr id="gr_svn198_974"

><td id="974"><a href="#974">974</a></td></tr
><tr id="gr_svn198_975"

><td id="975"><a href="#975">975</a></td></tr
><tr id="gr_svn198_976"

><td id="976"><a href="#976">976</a></td></tr
><tr id="gr_svn198_977"

><td id="977"><a href="#977">977</a></td></tr
><tr id="gr_svn198_978"

><td id="978"><a href="#978">978</a></td></tr
><tr id="gr_svn198_979"

><td id="979"><a href="#979">979</a></td></tr
><tr id="gr_svn198_980"

><td id="980"><a href="#980">980</a></td></tr
><tr id="gr_svn198_981"

><td id="981"><a href="#981">981</a></td></tr
><tr id="gr_svn198_982"

><td id="982"><a href="#982">982</a></td></tr
><tr id="gr_svn198_983"

><td id="983"><a href="#983">983</a></td></tr
><tr id="gr_svn198_984"

><td id="984"><a href="#984">984</a></td></tr
><tr id="gr_svn198_985"

><td id="985"><a href="#985">985</a></td></tr
><tr id="gr_svn198_986"

><td id="986"><a href="#986">986</a></td></tr
><tr id="gr_svn198_987"

><td id="987"><a href="#987">987</a></td></tr
><tr id="gr_svn198_988"

><td id="988"><a href="#988">988</a></td></tr
><tr id="gr_svn198_989"

><td id="989"><a href="#989">989</a></td></tr
><tr id="gr_svn198_990"

><td id="990"><a href="#990">990</a></td></tr
><tr id="gr_svn198_991"

><td id="991"><a href="#991">991</a></td></tr
><tr id="gr_svn198_992"

><td id="992"><a href="#992">992</a></td></tr
><tr id="gr_svn198_993"

><td id="993"><a href="#993">993</a></td></tr
><tr id="gr_svn198_994"

><td id="994"><a href="#994">994</a></td></tr
><tr id="gr_svn198_995"

><td id="995"><a href="#995">995</a></td></tr
><tr id="gr_svn198_996"

><td id="996"><a href="#996">996</a></td></tr
><tr id="gr_svn198_997"

><td id="997"><a href="#997">997</a></td></tr
><tr id="gr_svn198_998"

><td id="998"><a href="#998">998</a></td></tr
><tr id="gr_svn198_999"

><td id="999"><a href="#999">999</a></td></tr
><tr id="gr_svn198_1000"

><td id="1000"><a href="#1000">1000</a></td></tr
><tr id="gr_svn198_1001"

><td id="1001"><a href="#1001">1001</a></td></tr
><tr id="gr_svn198_1002"

><td id="1002"><a href="#1002">1002</a></td></tr
><tr id="gr_svn198_1003"

><td id="1003"><a href="#1003">1003</a></td></tr
><tr id="gr_svn198_1004"

><td id="1004"><a href="#1004">1004</a></td></tr
><tr id="gr_svn198_1005"

><td id="1005"><a href="#1005">1005</a></td></tr
><tr id="gr_svn198_1006"

><td id="1006"><a href="#1006">1006</a></td></tr
><tr id="gr_svn198_1007"

><td id="1007"><a href="#1007">1007</a></td></tr
><tr id="gr_svn198_1008"

><td id="1008"><a href="#1008">1008</a></td></tr
><tr id="gr_svn198_1009"

><td id="1009"><a href="#1009">1009</a></td></tr
><tr id="gr_svn198_1010"

><td id="1010"><a href="#1010">1010</a></td></tr
><tr id="gr_svn198_1011"

><td id="1011"><a href="#1011">1011</a></td></tr
><tr id="gr_svn198_1012"

><td id="1012"><a href="#1012">1012</a></td></tr
><tr id="gr_svn198_1013"

><td id="1013"><a href="#1013">1013</a></td></tr
><tr id="gr_svn198_1014"

><td id="1014"><a href="#1014">1014</a></td></tr
><tr id="gr_svn198_1015"

><td id="1015"><a href="#1015">1015</a></td></tr
><tr id="gr_svn198_1016"

><td id="1016"><a href="#1016">1016</a></td></tr
><tr id="gr_svn198_1017"

><td id="1017"><a href="#1017">1017</a></td></tr
><tr id="gr_svn198_1018"

><td id="1018"><a href="#1018">1018</a></td></tr
><tr id="gr_svn198_1019"

><td id="1019"><a href="#1019">1019</a></td></tr
><tr id="gr_svn198_1020"

><td id="1020"><a href="#1020">1020</a></td></tr
><tr id="gr_svn198_1021"

><td id="1021"><a href="#1021">1021</a></td></tr
><tr id="gr_svn198_1022"

><td id="1022"><a href="#1022">1022</a></td></tr
><tr id="gr_svn198_1023"

><td id="1023"><a href="#1023">1023</a></td></tr
><tr id="gr_svn198_1024"

><td id="1024"><a href="#1024">1024</a></td></tr
><tr id="gr_svn198_1025"

><td id="1025"><a href="#1025">1025</a></td></tr
><tr id="gr_svn198_1026"

><td id="1026"><a href="#1026">1026</a></td></tr
><tr id="gr_svn198_1027"

><td id="1027"><a href="#1027">1027</a></td></tr
><tr id="gr_svn198_1028"

><td id="1028"><a href="#1028">1028</a></td></tr
><tr id="gr_svn198_1029"

><td id="1029"><a href="#1029">1029</a></td></tr
><tr id="gr_svn198_1030"

><td id="1030"><a href="#1030">1030</a></td></tr
><tr id="gr_svn198_1031"

><td id="1031"><a href="#1031">1031</a></td></tr
><tr id="gr_svn198_1032"

><td id="1032"><a href="#1032">1032</a></td></tr
><tr id="gr_svn198_1033"

><td id="1033"><a href="#1033">1033</a></td></tr
><tr id="gr_svn198_1034"

><td id="1034"><a href="#1034">1034</a></td></tr
><tr id="gr_svn198_1035"

><td id="1035"><a href="#1035">1035</a></td></tr
><tr id="gr_svn198_1036"

><td id="1036"><a href="#1036">1036</a></td></tr
><tr id="gr_svn198_1037"

><td id="1037"><a href="#1037">1037</a></td></tr
><tr id="gr_svn198_1038"

><td id="1038"><a href="#1038">1038</a></td></tr
><tr id="gr_svn198_1039"

><td id="1039"><a href="#1039">1039</a></td></tr
><tr id="gr_svn198_1040"

><td id="1040"><a href="#1040">1040</a></td></tr
><tr id="gr_svn198_1041"

><td id="1041"><a href="#1041">1041</a></td></tr
><tr id="gr_svn198_1042"

><td id="1042"><a href="#1042">1042</a></td></tr
><tr id="gr_svn198_1043"

><td id="1043"><a href="#1043">1043</a></td></tr
><tr id="gr_svn198_1044"

><td id="1044"><a href="#1044">1044</a></td></tr
><tr id="gr_svn198_1045"

><td id="1045"><a href="#1045">1045</a></td></tr
><tr id="gr_svn198_1046"

><td id="1046"><a href="#1046">1046</a></td></tr
><tr id="gr_svn198_1047"

><td id="1047"><a href="#1047">1047</a></td></tr
><tr id="gr_svn198_1048"

><td id="1048"><a href="#1048">1048</a></td></tr
><tr id="gr_svn198_1049"

><td id="1049"><a href="#1049">1049</a></td></tr
><tr id="gr_svn198_1050"

><td id="1050"><a href="#1050">1050</a></td></tr
><tr id="gr_svn198_1051"

><td id="1051"><a href="#1051">1051</a></td></tr
><tr id="gr_svn198_1052"

><td id="1052"><a href="#1052">1052</a></td></tr
><tr id="gr_svn198_1053"

><td id="1053"><a href="#1053">1053</a></td></tr
><tr id="gr_svn198_1054"

><td id="1054"><a href="#1054">1054</a></td></tr
><tr id="gr_svn198_1055"

><td id="1055"><a href="#1055">1055</a></td></tr
><tr id="gr_svn198_1056"

><td id="1056"><a href="#1056">1056</a></td></tr
><tr id="gr_svn198_1057"

><td id="1057"><a href="#1057">1057</a></td></tr
><tr id="gr_svn198_1058"

><td id="1058"><a href="#1058">1058</a></td></tr
><tr id="gr_svn198_1059"

><td id="1059"><a href="#1059">1059</a></td></tr
><tr id="gr_svn198_1060"

><td id="1060"><a href="#1060">1060</a></td></tr
><tr id="gr_svn198_1061"

><td id="1061"><a href="#1061">1061</a></td></tr
><tr id="gr_svn198_1062"

><td id="1062"><a href="#1062">1062</a></td></tr
><tr id="gr_svn198_1063"

><td id="1063"><a href="#1063">1063</a></td></tr
><tr id="gr_svn198_1064"

><td id="1064"><a href="#1064">1064</a></td></tr
><tr id="gr_svn198_1065"

><td id="1065"><a href="#1065">1065</a></td></tr
><tr id="gr_svn198_1066"

><td id="1066"><a href="#1066">1066</a></td></tr
><tr id="gr_svn198_1067"

><td id="1067"><a href="#1067">1067</a></td></tr
><tr id="gr_svn198_1068"

><td id="1068"><a href="#1068">1068</a></td></tr
><tr id="gr_svn198_1069"

><td id="1069"><a href="#1069">1069</a></td></tr
><tr id="gr_svn198_1070"

><td id="1070"><a href="#1070">1070</a></td></tr
><tr id="gr_svn198_1071"

><td id="1071"><a href="#1071">1071</a></td></tr
><tr id="gr_svn198_1072"

><td id="1072"><a href="#1072">1072</a></td></tr
><tr id="gr_svn198_1073"

><td id="1073"><a href="#1073">1073</a></td></tr
><tr id="gr_svn198_1074"

><td id="1074"><a href="#1074">1074</a></td></tr
><tr id="gr_svn198_1075"

><td id="1075"><a href="#1075">1075</a></td></tr
><tr id="gr_svn198_1076"

><td id="1076"><a href="#1076">1076</a></td></tr
><tr id="gr_svn198_1077"

><td id="1077"><a href="#1077">1077</a></td></tr
><tr id="gr_svn198_1078"

><td id="1078"><a href="#1078">1078</a></td></tr
><tr id="gr_svn198_1079"

><td id="1079"><a href="#1079">1079</a></td></tr
><tr id="gr_svn198_1080"

><td id="1080"><a href="#1080">1080</a></td></tr
><tr id="gr_svn198_1081"

><td id="1081"><a href="#1081">1081</a></td></tr
><tr id="gr_svn198_1082"

><td id="1082"><a href="#1082">1082</a></td></tr
><tr id="gr_svn198_1083"

><td id="1083"><a href="#1083">1083</a></td></tr
><tr id="gr_svn198_1084"

><td id="1084"><a href="#1084">1084</a></td></tr
><tr id="gr_svn198_1085"

><td id="1085"><a href="#1085">1085</a></td></tr
><tr id="gr_svn198_1086"

><td id="1086"><a href="#1086">1086</a></td></tr
><tr id="gr_svn198_1087"

><td id="1087"><a href="#1087">1087</a></td></tr
><tr id="gr_svn198_1088"

><td id="1088"><a href="#1088">1088</a></td></tr
><tr id="gr_svn198_1089"

><td id="1089"><a href="#1089">1089</a></td></tr
><tr id="gr_svn198_1090"

><td id="1090"><a href="#1090">1090</a></td></tr
><tr id="gr_svn198_1091"

><td id="1091"><a href="#1091">1091</a></td></tr
><tr id="gr_svn198_1092"

><td id="1092"><a href="#1092">1092</a></td></tr
><tr id="gr_svn198_1093"

><td id="1093"><a href="#1093">1093</a></td></tr
><tr id="gr_svn198_1094"

><td id="1094"><a href="#1094">1094</a></td></tr
><tr id="gr_svn198_1095"

><td id="1095"><a href="#1095">1095</a></td></tr
><tr id="gr_svn198_1096"

><td id="1096"><a href="#1096">1096</a></td></tr
><tr id="gr_svn198_1097"

><td id="1097"><a href="#1097">1097</a></td></tr
><tr id="gr_svn198_1098"

><td id="1098"><a href="#1098">1098</a></td></tr
><tr id="gr_svn198_1099"

><td id="1099"><a href="#1099">1099</a></td></tr
><tr id="gr_svn198_1100"

><td id="1100"><a href="#1100">1100</a></td></tr
><tr id="gr_svn198_1101"

><td id="1101"><a href="#1101">1101</a></td></tr
><tr id="gr_svn198_1102"

><td id="1102"><a href="#1102">1102</a></td></tr
><tr id="gr_svn198_1103"

><td id="1103"><a href="#1103">1103</a></td></tr
><tr id="gr_svn198_1104"

><td id="1104"><a href="#1104">1104</a></td></tr
><tr id="gr_svn198_1105"

><td id="1105"><a href="#1105">1105</a></td></tr
><tr id="gr_svn198_1106"

><td id="1106"><a href="#1106">1106</a></td></tr
><tr id="gr_svn198_1107"

><td id="1107"><a href="#1107">1107</a></td></tr
><tr id="gr_svn198_1108"

><td id="1108"><a href="#1108">1108</a></td></tr
><tr id="gr_svn198_1109"

><td id="1109"><a href="#1109">1109</a></td></tr
><tr id="gr_svn198_1110"

><td id="1110"><a href="#1110">1110</a></td></tr
><tr id="gr_svn198_1111"

><td id="1111"><a href="#1111">1111</a></td></tr
><tr id="gr_svn198_1112"

><td id="1112"><a href="#1112">1112</a></td></tr
><tr id="gr_svn198_1113"

><td id="1113"><a href="#1113">1113</a></td></tr
><tr id="gr_svn198_1114"

><td id="1114"><a href="#1114">1114</a></td></tr
><tr id="gr_svn198_1115"

><td id="1115"><a href="#1115">1115</a></td></tr
><tr id="gr_svn198_1116"

><td id="1116"><a href="#1116">1116</a></td></tr
><tr id="gr_svn198_1117"

><td id="1117"><a href="#1117">1117</a></td></tr
><tr id="gr_svn198_1118"

><td id="1118"><a href="#1118">1118</a></td></tr
><tr id="gr_svn198_1119"

><td id="1119"><a href="#1119">1119</a></td></tr
><tr id="gr_svn198_1120"

><td id="1120"><a href="#1120">1120</a></td></tr
><tr id="gr_svn198_1121"

><td id="1121"><a href="#1121">1121</a></td></tr
><tr id="gr_svn198_1122"

><td id="1122"><a href="#1122">1122</a></td></tr
><tr id="gr_svn198_1123"

><td id="1123"><a href="#1123">1123</a></td></tr
><tr id="gr_svn198_1124"

><td id="1124"><a href="#1124">1124</a></td></tr
><tr id="gr_svn198_1125"

><td id="1125"><a href="#1125">1125</a></td></tr
><tr id="gr_svn198_1126"

><td id="1126"><a href="#1126">1126</a></td></tr
><tr id="gr_svn198_1127"

><td id="1127"><a href="#1127">1127</a></td></tr
><tr id="gr_svn198_1128"

><td id="1128"><a href="#1128">1128</a></td></tr
><tr id="gr_svn198_1129"

><td id="1129"><a href="#1129">1129</a></td></tr
><tr id="gr_svn198_1130"

><td id="1130"><a href="#1130">1130</a></td></tr
><tr id="gr_svn198_1131"

><td id="1131"><a href="#1131">1131</a></td></tr
><tr id="gr_svn198_1132"

><td id="1132"><a href="#1132">1132</a></td></tr
><tr id="gr_svn198_1133"

><td id="1133"><a href="#1133">1133</a></td></tr
><tr id="gr_svn198_1134"

><td id="1134"><a href="#1134">1134</a></td></tr
><tr id="gr_svn198_1135"

><td id="1135"><a href="#1135">1135</a></td></tr
><tr id="gr_svn198_1136"

><td id="1136"><a href="#1136">1136</a></td></tr
><tr id="gr_svn198_1137"

><td id="1137"><a href="#1137">1137</a></td></tr
><tr id="gr_svn198_1138"

><td id="1138"><a href="#1138">1138</a></td></tr
><tr id="gr_svn198_1139"

><td id="1139"><a href="#1139">1139</a></td></tr
><tr id="gr_svn198_1140"

><td id="1140"><a href="#1140">1140</a></td></tr
><tr id="gr_svn198_1141"

><td id="1141"><a href="#1141">1141</a></td></tr
><tr id="gr_svn198_1142"

><td id="1142"><a href="#1142">1142</a></td></tr
><tr id="gr_svn198_1143"

><td id="1143"><a href="#1143">1143</a></td></tr
><tr id="gr_svn198_1144"

><td id="1144"><a href="#1144">1144</a></td></tr
><tr id="gr_svn198_1145"

><td id="1145"><a href="#1145">1145</a></td></tr
><tr id="gr_svn198_1146"

><td id="1146"><a href="#1146">1146</a></td></tr
><tr id="gr_svn198_1147"

><td id="1147"><a href="#1147">1147</a></td></tr
><tr id="gr_svn198_1148"

><td id="1148"><a href="#1148">1148</a></td></tr
><tr id="gr_svn198_1149"

><td id="1149"><a href="#1149">1149</a></td></tr
><tr id="gr_svn198_1150"

><td id="1150"><a href="#1150">1150</a></td></tr
><tr id="gr_svn198_1151"

><td id="1151"><a href="#1151">1151</a></td></tr
><tr id="gr_svn198_1152"

><td id="1152"><a href="#1152">1152</a></td></tr
><tr id="gr_svn198_1153"

><td id="1153"><a href="#1153">1153</a></td></tr
><tr id="gr_svn198_1154"

><td id="1154"><a href="#1154">1154</a></td></tr
><tr id="gr_svn198_1155"

><td id="1155"><a href="#1155">1155</a></td></tr
><tr id="gr_svn198_1156"

><td id="1156"><a href="#1156">1156</a></td></tr
><tr id="gr_svn198_1157"

><td id="1157"><a href="#1157">1157</a></td></tr
><tr id="gr_svn198_1158"

><td id="1158"><a href="#1158">1158</a></td></tr
><tr id="gr_svn198_1159"

><td id="1159"><a href="#1159">1159</a></td></tr
><tr id="gr_svn198_1160"

><td id="1160"><a href="#1160">1160</a></td></tr
><tr id="gr_svn198_1161"

><td id="1161"><a href="#1161">1161</a></td></tr
><tr id="gr_svn198_1162"

><td id="1162"><a href="#1162">1162</a></td></tr
><tr id="gr_svn198_1163"

><td id="1163"><a href="#1163">1163</a></td></tr
><tr id="gr_svn198_1164"

><td id="1164"><a href="#1164">1164</a></td></tr
><tr id="gr_svn198_1165"

><td id="1165"><a href="#1165">1165</a></td></tr
><tr id="gr_svn198_1166"

><td id="1166"><a href="#1166">1166</a></td></tr
><tr id="gr_svn198_1167"

><td id="1167"><a href="#1167">1167</a></td></tr
><tr id="gr_svn198_1168"

><td id="1168"><a href="#1168">1168</a></td></tr
><tr id="gr_svn198_1169"

><td id="1169"><a href="#1169">1169</a></td></tr
><tr id="gr_svn198_1170"

><td id="1170"><a href="#1170">1170</a></td></tr
><tr id="gr_svn198_1171"

><td id="1171"><a href="#1171">1171</a></td></tr
><tr id="gr_svn198_1172"

><td id="1172"><a href="#1172">1172</a></td></tr
><tr id="gr_svn198_1173"

><td id="1173"><a href="#1173">1173</a></td></tr
><tr id="gr_svn198_1174"

><td id="1174"><a href="#1174">1174</a></td></tr
><tr id="gr_svn198_1175"

><td id="1175"><a href="#1175">1175</a></td></tr
><tr id="gr_svn198_1176"

><td id="1176"><a href="#1176">1176</a></td></tr
><tr id="gr_svn198_1177"

><td id="1177"><a href="#1177">1177</a></td></tr
><tr id="gr_svn198_1178"

><td id="1178"><a href="#1178">1178</a></td></tr
><tr id="gr_svn198_1179"

><td id="1179"><a href="#1179">1179</a></td></tr
><tr id="gr_svn198_1180"

><td id="1180"><a href="#1180">1180</a></td></tr
><tr id="gr_svn198_1181"

><td id="1181"><a href="#1181">1181</a></td></tr
><tr id="gr_svn198_1182"

><td id="1182"><a href="#1182">1182</a></td></tr
><tr id="gr_svn198_1183"

><td id="1183"><a href="#1183">1183</a></td></tr
><tr id="gr_svn198_1184"

><td id="1184"><a href="#1184">1184</a></td></tr
><tr id="gr_svn198_1185"

><td id="1185"><a href="#1185">1185</a></td></tr
><tr id="gr_svn198_1186"

><td id="1186"><a href="#1186">1186</a></td></tr
><tr id="gr_svn198_1187"

><td id="1187"><a href="#1187">1187</a></td></tr
><tr id="gr_svn198_1188"

><td id="1188"><a href="#1188">1188</a></td></tr
><tr id="gr_svn198_1189"

><td id="1189"><a href="#1189">1189</a></td></tr
><tr id="gr_svn198_1190"

><td id="1190"><a href="#1190">1190</a></td></tr
><tr id="gr_svn198_1191"

><td id="1191"><a href="#1191">1191</a></td></tr
><tr id="gr_svn198_1192"

><td id="1192"><a href="#1192">1192</a></td></tr
><tr id="gr_svn198_1193"

><td id="1193"><a href="#1193">1193</a></td></tr
><tr id="gr_svn198_1194"

><td id="1194"><a href="#1194">1194</a></td></tr
><tr id="gr_svn198_1195"

><td id="1195"><a href="#1195">1195</a></td></tr
><tr id="gr_svn198_1196"

><td id="1196"><a href="#1196">1196</a></td></tr
><tr id="gr_svn198_1197"

><td id="1197"><a href="#1197">1197</a></td></tr
><tr id="gr_svn198_1198"

><td id="1198"><a href="#1198">1198</a></td></tr
><tr id="gr_svn198_1199"

><td id="1199"><a href="#1199">1199</a></td></tr
><tr id="gr_svn198_1200"

><td id="1200"><a href="#1200">1200</a></td></tr
><tr id="gr_svn198_1201"

><td id="1201"><a href="#1201">1201</a></td></tr
><tr id="gr_svn198_1202"

><td id="1202"><a href="#1202">1202</a></td></tr
><tr id="gr_svn198_1203"

><td id="1203"><a href="#1203">1203</a></td></tr
><tr id="gr_svn198_1204"

><td id="1204"><a href="#1204">1204</a></td></tr
><tr id="gr_svn198_1205"

><td id="1205"><a href="#1205">1205</a></td></tr
><tr id="gr_svn198_1206"

><td id="1206"><a href="#1206">1206</a></td></tr
><tr id="gr_svn198_1207"

><td id="1207"><a href="#1207">1207</a></td></tr
><tr id="gr_svn198_1208"

><td id="1208"><a href="#1208">1208</a></td></tr
><tr id="gr_svn198_1209"

><td id="1209"><a href="#1209">1209</a></td></tr
><tr id="gr_svn198_1210"

><td id="1210"><a href="#1210">1210</a></td></tr
><tr id="gr_svn198_1211"

><td id="1211"><a href="#1211">1211</a></td></tr
><tr id="gr_svn198_1212"

><td id="1212"><a href="#1212">1212</a></td></tr
><tr id="gr_svn198_1213"

><td id="1213"><a href="#1213">1213</a></td></tr
><tr id="gr_svn198_1214"

><td id="1214"><a href="#1214">1214</a></td></tr
><tr id="gr_svn198_1215"

><td id="1215"><a href="#1215">1215</a></td></tr
><tr id="gr_svn198_1216"

><td id="1216"><a href="#1216">1216</a></td></tr
><tr id="gr_svn198_1217"

><td id="1217"><a href="#1217">1217</a></td></tr
><tr id="gr_svn198_1218"

><td id="1218"><a href="#1218">1218</a></td></tr
><tr id="gr_svn198_1219"

><td id="1219"><a href="#1219">1219</a></td></tr
><tr id="gr_svn198_1220"

><td id="1220"><a href="#1220">1220</a></td></tr
><tr id="gr_svn198_1221"

><td id="1221"><a href="#1221">1221</a></td></tr
><tr id="gr_svn198_1222"

><td id="1222"><a href="#1222">1222</a></td></tr
><tr id="gr_svn198_1223"

><td id="1223"><a href="#1223">1223</a></td></tr
><tr id="gr_svn198_1224"

><td id="1224"><a href="#1224">1224</a></td></tr
><tr id="gr_svn198_1225"

><td id="1225"><a href="#1225">1225</a></td></tr
><tr id="gr_svn198_1226"

><td id="1226"><a href="#1226">1226</a></td></tr
><tr id="gr_svn198_1227"

><td id="1227"><a href="#1227">1227</a></td></tr
><tr id="gr_svn198_1228"

><td id="1228"><a href="#1228">1228</a></td></tr
><tr id="gr_svn198_1229"

><td id="1229"><a href="#1229">1229</a></td></tr
><tr id="gr_svn198_1230"

><td id="1230"><a href="#1230">1230</a></td></tr
><tr id="gr_svn198_1231"

><td id="1231"><a href="#1231">1231</a></td></tr
><tr id="gr_svn198_1232"

><td id="1232"><a href="#1232">1232</a></td></tr
><tr id="gr_svn198_1233"

><td id="1233"><a href="#1233">1233</a></td></tr
><tr id="gr_svn198_1234"

><td id="1234"><a href="#1234">1234</a></td></tr
><tr id="gr_svn198_1235"

><td id="1235"><a href="#1235">1235</a></td></tr
><tr id="gr_svn198_1236"

><td id="1236"><a href="#1236">1236</a></td></tr
><tr id="gr_svn198_1237"

><td id="1237"><a href="#1237">1237</a></td></tr
><tr id="gr_svn198_1238"

><td id="1238"><a href="#1238">1238</a></td></tr
><tr id="gr_svn198_1239"

><td id="1239"><a href="#1239">1239</a></td></tr
><tr id="gr_svn198_1240"

><td id="1240"><a href="#1240">1240</a></td></tr
><tr id="gr_svn198_1241"

><td id="1241"><a href="#1241">1241</a></td></tr
><tr id="gr_svn198_1242"

><td id="1242"><a href="#1242">1242</a></td></tr
><tr id="gr_svn198_1243"

><td id="1243"><a href="#1243">1243</a></td></tr
><tr id="gr_svn198_1244"

><td id="1244"><a href="#1244">1244</a></td></tr
><tr id="gr_svn198_1245"

><td id="1245"><a href="#1245">1245</a></td></tr
><tr id="gr_svn198_1246"

><td id="1246"><a href="#1246">1246</a></td></tr
><tr id="gr_svn198_1247"

><td id="1247"><a href="#1247">1247</a></td></tr
><tr id="gr_svn198_1248"

><td id="1248"><a href="#1248">1248</a></td></tr
><tr id="gr_svn198_1249"

><td id="1249"><a href="#1249">1249</a></td></tr
><tr id="gr_svn198_1250"

><td id="1250"><a href="#1250">1250</a></td></tr
><tr id="gr_svn198_1251"

><td id="1251"><a href="#1251">1251</a></td></tr
><tr id="gr_svn198_1252"

><td id="1252"><a href="#1252">1252</a></td></tr
><tr id="gr_svn198_1253"

><td id="1253"><a href="#1253">1253</a></td></tr
><tr id="gr_svn198_1254"

><td id="1254"><a href="#1254">1254</a></td></tr
><tr id="gr_svn198_1255"

><td id="1255"><a href="#1255">1255</a></td></tr
><tr id="gr_svn198_1256"

><td id="1256"><a href="#1256">1256</a></td></tr
><tr id="gr_svn198_1257"

><td id="1257"><a href="#1257">1257</a></td></tr
><tr id="gr_svn198_1258"

><td id="1258"><a href="#1258">1258</a></td></tr
><tr id="gr_svn198_1259"

><td id="1259"><a href="#1259">1259</a></td></tr
><tr id="gr_svn198_1260"

><td id="1260"><a href="#1260">1260</a></td></tr
><tr id="gr_svn198_1261"

><td id="1261"><a href="#1261">1261</a></td></tr
><tr id="gr_svn198_1262"

><td id="1262"><a href="#1262">1262</a></td></tr
><tr id="gr_svn198_1263"

><td id="1263"><a href="#1263">1263</a></td></tr
><tr id="gr_svn198_1264"

><td id="1264"><a href="#1264">1264</a></td></tr
><tr id="gr_svn198_1265"

><td id="1265"><a href="#1265">1265</a></td></tr
><tr id="gr_svn198_1266"

><td id="1266"><a href="#1266">1266</a></td></tr
><tr id="gr_svn198_1267"

><td id="1267"><a href="#1267">1267</a></td></tr
><tr id="gr_svn198_1268"

><td id="1268"><a href="#1268">1268</a></td></tr
><tr id="gr_svn198_1269"

><td id="1269"><a href="#1269">1269</a></td></tr
><tr id="gr_svn198_1270"

><td id="1270"><a href="#1270">1270</a></td></tr
><tr id="gr_svn198_1271"

><td id="1271"><a href="#1271">1271</a></td></tr
><tr id="gr_svn198_1272"

><td id="1272"><a href="#1272">1272</a></td></tr
><tr id="gr_svn198_1273"

><td id="1273"><a href="#1273">1273</a></td></tr
><tr id="gr_svn198_1274"

><td id="1274"><a href="#1274">1274</a></td></tr
><tr id="gr_svn198_1275"

><td id="1275"><a href="#1275">1275</a></td></tr
><tr id="gr_svn198_1276"

><td id="1276"><a href="#1276">1276</a></td></tr
><tr id="gr_svn198_1277"

><td id="1277"><a href="#1277">1277</a></td></tr
><tr id="gr_svn198_1278"

><td id="1278"><a href="#1278">1278</a></td></tr
><tr id="gr_svn198_1279"

><td id="1279"><a href="#1279">1279</a></td></tr
><tr id="gr_svn198_1280"

><td id="1280"><a href="#1280">1280</a></td></tr
><tr id="gr_svn198_1281"

><td id="1281"><a href="#1281">1281</a></td></tr
><tr id="gr_svn198_1282"

><td id="1282"><a href="#1282">1282</a></td></tr
><tr id="gr_svn198_1283"

><td id="1283"><a href="#1283">1283</a></td></tr
><tr id="gr_svn198_1284"

><td id="1284"><a href="#1284">1284</a></td></tr
><tr id="gr_svn198_1285"

><td id="1285"><a href="#1285">1285</a></td></tr
><tr id="gr_svn198_1286"

><td id="1286"><a href="#1286">1286</a></td></tr
><tr id="gr_svn198_1287"

><td id="1287"><a href="#1287">1287</a></td></tr
><tr id="gr_svn198_1288"

><td id="1288"><a href="#1288">1288</a></td></tr
><tr id="gr_svn198_1289"

><td id="1289"><a href="#1289">1289</a></td></tr
><tr id="gr_svn198_1290"

><td id="1290"><a href="#1290">1290</a></td></tr
><tr id="gr_svn198_1291"

><td id="1291"><a href="#1291">1291</a></td></tr
><tr id="gr_svn198_1292"

><td id="1292"><a href="#1292">1292</a></td></tr
><tr id="gr_svn198_1293"

><td id="1293"><a href="#1293">1293</a></td></tr
><tr id="gr_svn198_1294"

><td id="1294"><a href="#1294">1294</a></td></tr
><tr id="gr_svn198_1295"

><td id="1295"><a href="#1295">1295</a></td></tr
><tr id="gr_svn198_1296"

><td id="1296"><a href="#1296">1296</a></td></tr
><tr id="gr_svn198_1297"

><td id="1297"><a href="#1297">1297</a></td></tr
><tr id="gr_svn198_1298"

><td id="1298"><a href="#1298">1298</a></td></tr
><tr id="gr_svn198_1299"

><td id="1299"><a href="#1299">1299</a></td></tr
><tr id="gr_svn198_1300"

><td id="1300"><a href="#1300">1300</a></td></tr
><tr id="gr_svn198_1301"

><td id="1301"><a href="#1301">1301</a></td></tr
><tr id="gr_svn198_1302"

><td id="1302"><a href="#1302">1302</a></td></tr
><tr id="gr_svn198_1303"

><td id="1303"><a href="#1303">1303</a></td></tr
><tr id="gr_svn198_1304"

><td id="1304"><a href="#1304">1304</a></td></tr
><tr id="gr_svn198_1305"

><td id="1305"><a href="#1305">1305</a></td></tr
><tr id="gr_svn198_1306"

><td id="1306"><a href="#1306">1306</a></td></tr
><tr id="gr_svn198_1307"

><td id="1307"><a href="#1307">1307</a></td></tr
><tr id="gr_svn198_1308"

><td id="1308"><a href="#1308">1308</a></td></tr
><tr id="gr_svn198_1309"

><td id="1309"><a href="#1309">1309</a></td></tr
><tr id="gr_svn198_1310"

><td id="1310"><a href="#1310">1310</a></td></tr
><tr id="gr_svn198_1311"

><td id="1311"><a href="#1311">1311</a></td></tr
><tr id="gr_svn198_1312"

><td id="1312"><a href="#1312">1312</a></td></tr
><tr id="gr_svn198_1313"

><td id="1313"><a href="#1313">1313</a></td></tr
><tr id="gr_svn198_1314"

><td id="1314"><a href="#1314">1314</a></td></tr
><tr id="gr_svn198_1315"

><td id="1315"><a href="#1315">1315</a></td></tr
><tr id="gr_svn198_1316"

><td id="1316"><a href="#1316">1316</a></td></tr
><tr id="gr_svn198_1317"

><td id="1317"><a href="#1317">1317</a></td></tr
><tr id="gr_svn198_1318"

><td id="1318"><a href="#1318">1318</a></td></tr
><tr id="gr_svn198_1319"

><td id="1319"><a href="#1319">1319</a></td></tr
><tr id="gr_svn198_1320"

><td id="1320"><a href="#1320">1320</a></td></tr
><tr id="gr_svn198_1321"

><td id="1321"><a href="#1321">1321</a></td></tr
><tr id="gr_svn198_1322"

><td id="1322"><a href="#1322">1322</a></td></tr
><tr id="gr_svn198_1323"

><td id="1323"><a href="#1323">1323</a></td></tr
><tr id="gr_svn198_1324"

><td id="1324"><a href="#1324">1324</a></td></tr
><tr id="gr_svn198_1325"

><td id="1325"><a href="#1325">1325</a></td></tr
><tr id="gr_svn198_1326"

><td id="1326"><a href="#1326">1326</a></td></tr
><tr id="gr_svn198_1327"

><td id="1327"><a href="#1327">1327</a></td></tr
><tr id="gr_svn198_1328"

><td id="1328"><a href="#1328">1328</a></td></tr
><tr id="gr_svn198_1329"

><td id="1329"><a href="#1329">1329</a></td></tr
><tr id="gr_svn198_1330"

><td id="1330"><a href="#1330">1330</a></td></tr
><tr id="gr_svn198_1331"

><td id="1331"><a href="#1331">1331</a></td></tr
><tr id="gr_svn198_1332"

><td id="1332"><a href="#1332">1332</a></td></tr
><tr id="gr_svn198_1333"

><td id="1333"><a href="#1333">1333</a></td></tr
><tr id="gr_svn198_1334"

><td id="1334"><a href="#1334">1334</a></td></tr
><tr id="gr_svn198_1335"

><td id="1335"><a href="#1335">1335</a></td></tr
><tr id="gr_svn198_1336"

><td id="1336"><a href="#1336">1336</a></td></tr
><tr id="gr_svn198_1337"

><td id="1337"><a href="#1337">1337</a></td></tr
><tr id="gr_svn198_1338"

><td id="1338"><a href="#1338">1338</a></td></tr
><tr id="gr_svn198_1339"

><td id="1339"><a href="#1339">1339</a></td></tr
><tr id="gr_svn198_1340"

><td id="1340"><a href="#1340">1340</a></td></tr
><tr id="gr_svn198_1341"

><td id="1341"><a href="#1341">1341</a></td></tr
><tr id="gr_svn198_1342"

><td id="1342"><a href="#1342">1342</a></td></tr
><tr id="gr_svn198_1343"

><td id="1343"><a href="#1343">1343</a></td></tr
><tr id="gr_svn198_1344"

><td id="1344"><a href="#1344">1344</a></td></tr
><tr id="gr_svn198_1345"

><td id="1345"><a href="#1345">1345</a></td></tr
><tr id="gr_svn198_1346"

><td id="1346"><a href="#1346">1346</a></td></tr
><tr id="gr_svn198_1347"

><td id="1347"><a href="#1347">1347</a></td></tr
><tr id="gr_svn198_1348"

><td id="1348"><a href="#1348">1348</a></td></tr
><tr id="gr_svn198_1349"

><td id="1349"><a href="#1349">1349</a></td></tr
><tr id="gr_svn198_1350"

><td id="1350"><a href="#1350">1350</a></td></tr
><tr id="gr_svn198_1351"

><td id="1351"><a href="#1351">1351</a></td></tr
><tr id="gr_svn198_1352"

><td id="1352"><a href="#1352">1352</a></td></tr
><tr id="gr_svn198_1353"

><td id="1353"><a href="#1353">1353</a></td></tr
><tr id="gr_svn198_1354"

><td id="1354"><a href="#1354">1354</a></td></tr
><tr id="gr_svn198_1355"

><td id="1355"><a href="#1355">1355</a></td></tr
><tr id="gr_svn198_1356"

><td id="1356"><a href="#1356">1356</a></td></tr
><tr id="gr_svn198_1357"

><td id="1357"><a href="#1357">1357</a></td></tr
><tr id="gr_svn198_1358"

><td id="1358"><a href="#1358">1358</a></td></tr
><tr id="gr_svn198_1359"

><td id="1359"><a href="#1359">1359</a></td></tr
><tr id="gr_svn198_1360"

><td id="1360"><a href="#1360">1360</a></td></tr
><tr id="gr_svn198_1361"

><td id="1361"><a href="#1361">1361</a></td></tr
><tr id="gr_svn198_1362"

><td id="1362"><a href="#1362">1362</a></td></tr
><tr id="gr_svn198_1363"

><td id="1363"><a href="#1363">1363</a></td></tr
><tr id="gr_svn198_1364"

><td id="1364"><a href="#1364">1364</a></td></tr
><tr id="gr_svn198_1365"

><td id="1365"><a href="#1365">1365</a></td></tr
><tr id="gr_svn198_1366"

><td id="1366"><a href="#1366">1366</a></td></tr
><tr id="gr_svn198_1367"

><td id="1367"><a href="#1367">1367</a></td></tr
><tr id="gr_svn198_1368"

><td id="1368"><a href="#1368">1368</a></td></tr
><tr id="gr_svn198_1369"

><td id="1369"><a href="#1369">1369</a></td></tr
><tr id="gr_svn198_1370"

><td id="1370"><a href="#1370">1370</a></td></tr
><tr id="gr_svn198_1371"

><td id="1371"><a href="#1371">1371</a></td></tr
><tr id="gr_svn198_1372"

><td id="1372"><a href="#1372">1372</a></td></tr
><tr id="gr_svn198_1373"

><td id="1373"><a href="#1373">1373</a></td></tr
><tr id="gr_svn198_1374"

><td id="1374"><a href="#1374">1374</a></td></tr
><tr id="gr_svn198_1375"

><td id="1375"><a href="#1375">1375</a></td></tr
><tr id="gr_svn198_1376"

><td id="1376"><a href="#1376">1376</a></td></tr
><tr id="gr_svn198_1377"

><td id="1377"><a href="#1377">1377</a></td></tr
><tr id="gr_svn198_1378"

><td id="1378"><a href="#1378">1378</a></td></tr
><tr id="gr_svn198_1379"

><td id="1379"><a href="#1379">1379</a></td></tr
><tr id="gr_svn198_1380"

><td id="1380"><a href="#1380">1380</a></td></tr
><tr id="gr_svn198_1381"

><td id="1381"><a href="#1381">1381</a></td></tr
><tr id="gr_svn198_1382"

><td id="1382"><a href="#1382">1382</a></td></tr
><tr id="gr_svn198_1383"

><td id="1383"><a href="#1383">1383</a></td></tr
><tr id="gr_svn198_1384"

><td id="1384"><a href="#1384">1384</a></td></tr
><tr id="gr_svn198_1385"

><td id="1385"><a href="#1385">1385</a></td></tr
><tr id="gr_svn198_1386"

><td id="1386"><a href="#1386">1386</a></td></tr
><tr id="gr_svn198_1387"

><td id="1387"><a href="#1387">1387</a></td></tr
><tr id="gr_svn198_1388"

><td id="1388"><a href="#1388">1388</a></td></tr
><tr id="gr_svn198_1389"

><td id="1389"><a href="#1389">1389</a></td></tr
><tr id="gr_svn198_1390"

><td id="1390"><a href="#1390">1390</a></td></tr
><tr id="gr_svn198_1391"

><td id="1391"><a href="#1391">1391</a></td></tr
><tr id="gr_svn198_1392"

><td id="1392"><a href="#1392">1392</a></td></tr
><tr id="gr_svn198_1393"

><td id="1393"><a href="#1393">1393</a></td></tr
><tr id="gr_svn198_1394"

><td id="1394"><a href="#1394">1394</a></td></tr
><tr id="gr_svn198_1395"

><td id="1395"><a href="#1395">1395</a></td></tr
><tr id="gr_svn198_1396"

><td id="1396"><a href="#1396">1396</a></td></tr
><tr id="gr_svn198_1397"

><td id="1397"><a href="#1397">1397</a></td></tr
><tr id="gr_svn198_1398"

><td id="1398"><a href="#1398">1398</a></td></tr
><tr id="gr_svn198_1399"

><td id="1399"><a href="#1399">1399</a></td></tr
><tr id="gr_svn198_1400"

><td id="1400"><a href="#1400">1400</a></td></tr
><tr id="gr_svn198_1401"

><td id="1401"><a href="#1401">1401</a></td></tr
><tr id="gr_svn198_1402"

><td id="1402"><a href="#1402">1402</a></td></tr
><tr id="gr_svn198_1403"

><td id="1403"><a href="#1403">1403</a></td></tr
><tr id="gr_svn198_1404"

><td id="1404"><a href="#1404">1404</a></td></tr
><tr id="gr_svn198_1405"

><td id="1405"><a href="#1405">1405</a></td></tr
><tr id="gr_svn198_1406"

><td id="1406"><a href="#1406">1406</a></td></tr
><tr id="gr_svn198_1407"

><td id="1407"><a href="#1407">1407</a></td></tr
><tr id="gr_svn198_1408"

><td id="1408"><a href="#1408">1408</a></td></tr
><tr id="gr_svn198_1409"

><td id="1409"><a href="#1409">1409</a></td></tr
><tr id="gr_svn198_1410"

><td id="1410"><a href="#1410">1410</a></td></tr
><tr id="gr_svn198_1411"

><td id="1411"><a href="#1411">1411</a></td></tr
><tr id="gr_svn198_1412"

><td id="1412"><a href="#1412">1412</a></td></tr
><tr id="gr_svn198_1413"

><td id="1413"><a href="#1413">1413</a></td></tr
><tr id="gr_svn198_1414"

><td id="1414"><a href="#1414">1414</a></td></tr
><tr id="gr_svn198_1415"

><td id="1415"><a href="#1415">1415</a></td></tr
><tr id="gr_svn198_1416"

><td id="1416"><a href="#1416">1416</a></td></tr
><tr id="gr_svn198_1417"

><td id="1417"><a href="#1417">1417</a></td></tr
><tr id="gr_svn198_1418"

><td id="1418"><a href="#1418">1418</a></td></tr
><tr id="gr_svn198_1419"

><td id="1419"><a href="#1419">1419</a></td></tr
><tr id="gr_svn198_1420"

><td id="1420"><a href="#1420">1420</a></td></tr
><tr id="gr_svn198_1421"

><td id="1421"><a href="#1421">1421</a></td></tr
><tr id="gr_svn198_1422"

><td id="1422"><a href="#1422">1422</a></td></tr
><tr id="gr_svn198_1423"

><td id="1423"><a href="#1423">1423</a></td></tr
><tr id="gr_svn198_1424"

><td id="1424"><a href="#1424">1424</a></td></tr
><tr id="gr_svn198_1425"

><td id="1425"><a href="#1425">1425</a></td></tr
><tr id="gr_svn198_1426"

><td id="1426"><a href="#1426">1426</a></td></tr
><tr id="gr_svn198_1427"

><td id="1427"><a href="#1427">1427</a></td></tr
><tr id="gr_svn198_1428"

><td id="1428"><a href="#1428">1428</a></td></tr
><tr id="gr_svn198_1429"

><td id="1429"><a href="#1429">1429</a></td></tr
><tr id="gr_svn198_1430"

><td id="1430"><a href="#1430">1430</a></td></tr
><tr id="gr_svn198_1431"

><td id="1431"><a href="#1431">1431</a></td></tr
><tr id="gr_svn198_1432"

><td id="1432"><a href="#1432">1432</a></td></tr
><tr id="gr_svn198_1433"

><td id="1433"><a href="#1433">1433</a></td></tr
><tr id="gr_svn198_1434"

><td id="1434"><a href="#1434">1434</a></td></tr
><tr id="gr_svn198_1435"

><td id="1435"><a href="#1435">1435</a></td></tr
><tr id="gr_svn198_1436"

><td id="1436"><a href="#1436">1436</a></td></tr
><tr id="gr_svn198_1437"

><td id="1437"><a href="#1437">1437</a></td></tr
><tr id="gr_svn198_1438"

><td id="1438"><a href="#1438">1438</a></td></tr
><tr id="gr_svn198_1439"

><td id="1439"><a href="#1439">1439</a></td></tr
><tr id="gr_svn198_1440"

><td id="1440"><a href="#1440">1440</a></td></tr
><tr id="gr_svn198_1441"

><td id="1441"><a href="#1441">1441</a></td></tr
><tr id="gr_svn198_1442"

><td id="1442"><a href="#1442">1442</a></td></tr
><tr id="gr_svn198_1443"

><td id="1443"><a href="#1443">1443</a></td></tr
><tr id="gr_svn198_1444"

><td id="1444"><a href="#1444">1444</a></td></tr
><tr id="gr_svn198_1445"

><td id="1445"><a href="#1445">1445</a></td></tr
><tr id="gr_svn198_1446"

><td id="1446"><a href="#1446">1446</a></td></tr
><tr id="gr_svn198_1447"

><td id="1447"><a href="#1447">1447</a></td></tr
><tr id="gr_svn198_1448"

><td id="1448"><a href="#1448">1448</a></td></tr
><tr id="gr_svn198_1449"

><td id="1449"><a href="#1449">1449</a></td></tr
><tr id="gr_svn198_1450"

><td id="1450"><a href="#1450">1450</a></td></tr
><tr id="gr_svn198_1451"

><td id="1451"><a href="#1451">1451</a></td></tr
><tr id="gr_svn198_1452"

><td id="1452"><a href="#1452">1452</a></td></tr
><tr id="gr_svn198_1453"

><td id="1453"><a href="#1453">1453</a></td></tr
><tr id="gr_svn198_1454"

><td id="1454"><a href="#1454">1454</a></td></tr
><tr id="gr_svn198_1455"

><td id="1455"><a href="#1455">1455</a></td></tr
><tr id="gr_svn198_1456"

><td id="1456"><a href="#1456">1456</a></td></tr
><tr id="gr_svn198_1457"

><td id="1457"><a href="#1457">1457</a></td></tr
><tr id="gr_svn198_1458"

><td id="1458"><a href="#1458">1458</a></td></tr
><tr id="gr_svn198_1459"

><td id="1459"><a href="#1459">1459</a></td></tr
><tr id="gr_svn198_1460"

><td id="1460"><a href="#1460">1460</a></td></tr
><tr id="gr_svn198_1461"

><td id="1461"><a href="#1461">1461</a></td></tr
><tr id="gr_svn198_1462"

><td id="1462"><a href="#1462">1462</a></td></tr
><tr id="gr_svn198_1463"

><td id="1463"><a href="#1463">1463</a></td></tr
><tr id="gr_svn198_1464"

><td id="1464"><a href="#1464">1464</a></td></tr
><tr id="gr_svn198_1465"

><td id="1465"><a href="#1465">1465</a></td></tr
><tr id="gr_svn198_1466"

><td id="1466"><a href="#1466">1466</a></td></tr
><tr id="gr_svn198_1467"

><td id="1467"><a href="#1467">1467</a></td></tr
><tr id="gr_svn198_1468"

><td id="1468"><a href="#1468">1468</a></td></tr
><tr id="gr_svn198_1469"

><td id="1469"><a href="#1469">1469</a></td></tr
><tr id="gr_svn198_1470"

><td id="1470"><a href="#1470">1470</a></td></tr
><tr id="gr_svn198_1471"

><td id="1471"><a href="#1471">1471</a></td></tr
><tr id="gr_svn198_1472"

><td id="1472"><a href="#1472">1472</a></td></tr
><tr id="gr_svn198_1473"

><td id="1473"><a href="#1473">1473</a></td></tr
><tr id="gr_svn198_1474"

><td id="1474"><a href="#1474">1474</a></td></tr
><tr id="gr_svn198_1475"

><td id="1475"><a href="#1475">1475</a></td></tr
><tr id="gr_svn198_1476"

><td id="1476"><a href="#1476">1476</a></td></tr
><tr id="gr_svn198_1477"

><td id="1477"><a href="#1477">1477</a></td></tr
><tr id="gr_svn198_1478"

><td id="1478"><a href="#1478">1478</a></td></tr
><tr id="gr_svn198_1479"

><td id="1479"><a href="#1479">1479</a></td></tr
><tr id="gr_svn198_1480"

><td id="1480"><a href="#1480">1480</a></td></tr
><tr id="gr_svn198_1481"

><td id="1481"><a href="#1481">1481</a></td></tr
><tr id="gr_svn198_1482"

><td id="1482"><a href="#1482">1482</a></td></tr
><tr id="gr_svn198_1483"

><td id="1483"><a href="#1483">1483</a></td></tr
><tr id="gr_svn198_1484"

><td id="1484"><a href="#1484">1484</a></td></tr
><tr id="gr_svn198_1485"

><td id="1485"><a href="#1485">1485</a></td></tr
><tr id="gr_svn198_1486"

><td id="1486"><a href="#1486">1486</a></td></tr
><tr id="gr_svn198_1487"

><td id="1487"><a href="#1487">1487</a></td></tr
><tr id="gr_svn198_1488"

><td id="1488"><a href="#1488">1488</a></td></tr
><tr id="gr_svn198_1489"

><td id="1489"><a href="#1489">1489</a></td></tr
><tr id="gr_svn198_1490"

><td id="1490"><a href="#1490">1490</a></td></tr
><tr id="gr_svn198_1491"

><td id="1491"><a href="#1491">1491</a></td></tr
><tr id="gr_svn198_1492"

><td id="1492"><a href="#1492">1492</a></td></tr
><tr id="gr_svn198_1493"

><td id="1493"><a href="#1493">1493</a></td></tr
><tr id="gr_svn198_1494"

><td id="1494"><a href="#1494">1494</a></td></tr
><tr id="gr_svn198_1495"

><td id="1495"><a href="#1495">1495</a></td></tr
><tr id="gr_svn198_1496"

><td id="1496"><a href="#1496">1496</a></td></tr
><tr id="gr_svn198_1497"

><td id="1497"><a href="#1497">1497</a></td></tr
><tr id="gr_svn198_1498"

><td id="1498"><a href="#1498">1498</a></td></tr
><tr id="gr_svn198_1499"

><td id="1499"><a href="#1499">1499</a></td></tr
><tr id="gr_svn198_1500"

><td id="1500"><a href="#1500">1500</a></td></tr
><tr id="gr_svn198_1501"

><td id="1501"><a href="#1501">1501</a></td></tr
><tr id="gr_svn198_1502"

><td id="1502"><a href="#1502">1502</a></td></tr
><tr id="gr_svn198_1503"

><td id="1503"><a href="#1503">1503</a></td></tr
><tr id="gr_svn198_1504"

><td id="1504"><a href="#1504">1504</a></td></tr
><tr id="gr_svn198_1505"

><td id="1505"><a href="#1505">1505</a></td></tr
><tr id="gr_svn198_1506"

><td id="1506"><a href="#1506">1506</a></td></tr
><tr id="gr_svn198_1507"

><td id="1507"><a href="#1507">1507</a></td></tr
><tr id="gr_svn198_1508"

><td id="1508"><a href="#1508">1508</a></td></tr
><tr id="gr_svn198_1509"

><td id="1509"><a href="#1509">1509</a></td></tr
><tr id="gr_svn198_1510"

><td id="1510"><a href="#1510">1510</a></td></tr
><tr id="gr_svn198_1511"

><td id="1511"><a href="#1511">1511</a></td></tr
><tr id="gr_svn198_1512"

><td id="1512"><a href="#1512">1512</a></td></tr
><tr id="gr_svn198_1513"

><td id="1513"><a href="#1513">1513</a></td></tr
><tr id="gr_svn198_1514"

><td id="1514"><a href="#1514">1514</a></td></tr
><tr id="gr_svn198_1515"

><td id="1515"><a href="#1515">1515</a></td></tr
><tr id="gr_svn198_1516"

><td id="1516"><a href="#1516">1516</a></td></tr
><tr id="gr_svn198_1517"

><td id="1517"><a href="#1517">1517</a></td></tr
><tr id="gr_svn198_1518"

><td id="1518"><a href="#1518">1518</a></td></tr
><tr id="gr_svn198_1519"

><td id="1519"><a href="#1519">1519</a></td></tr
><tr id="gr_svn198_1520"

><td id="1520"><a href="#1520">1520</a></td></tr
><tr id="gr_svn198_1521"

><td id="1521"><a href="#1521">1521</a></td></tr
><tr id="gr_svn198_1522"

><td id="1522"><a href="#1522">1522</a></td></tr
><tr id="gr_svn198_1523"

><td id="1523"><a href="#1523">1523</a></td></tr
><tr id="gr_svn198_1524"

><td id="1524"><a href="#1524">1524</a></td></tr
><tr id="gr_svn198_1525"

><td id="1525"><a href="#1525">1525</a></td></tr
><tr id="gr_svn198_1526"

><td id="1526"><a href="#1526">1526</a></td></tr
><tr id="gr_svn198_1527"

><td id="1527"><a href="#1527">1527</a></td></tr
><tr id="gr_svn198_1528"

><td id="1528"><a href="#1528">1528</a></td></tr
><tr id="gr_svn198_1529"

><td id="1529"><a href="#1529">1529</a></td></tr
><tr id="gr_svn198_1530"

><td id="1530"><a href="#1530">1530</a></td></tr
><tr id="gr_svn198_1531"

><td id="1531"><a href="#1531">1531</a></td></tr
><tr id="gr_svn198_1532"

><td id="1532"><a href="#1532">1532</a></td></tr
><tr id="gr_svn198_1533"

><td id="1533"><a href="#1533">1533</a></td></tr
><tr id="gr_svn198_1534"

><td id="1534"><a href="#1534">1534</a></td></tr
><tr id="gr_svn198_1535"

><td id="1535"><a href="#1535">1535</a></td></tr
><tr id="gr_svn198_1536"

><td id="1536"><a href="#1536">1536</a></td></tr
><tr id="gr_svn198_1537"

><td id="1537"><a href="#1537">1537</a></td></tr
><tr id="gr_svn198_1538"

><td id="1538"><a href="#1538">1538</a></td></tr
><tr id="gr_svn198_1539"

><td id="1539"><a href="#1539">1539</a></td></tr
><tr id="gr_svn198_1540"

><td id="1540"><a href="#1540">1540</a></td></tr
><tr id="gr_svn198_1541"

><td id="1541"><a href="#1541">1541</a></td></tr
><tr id="gr_svn198_1542"

><td id="1542"><a href="#1542">1542</a></td></tr
><tr id="gr_svn198_1543"

><td id="1543"><a href="#1543">1543</a></td></tr
><tr id="gr_svn198_1544"

><td id="1544"><a href="#1544">1544</a></td></tr
><tr id="gr_svn198_1545"

><td id="1545"><a href="#1545">1545</a></td></tr
><tr id="gr_svn198_1546"

><td id="1546"><a href="#1546">1546</a></td></tr
><tr id="gr_svn198_1547"

><td id="1547"><a href="#1547">1547</a></td></tr
><tr id="gr_svn198_1548"

><td id="1548"><a href="#1548">1548</a></td></tr
><tr id="gr_svn198_1549"

><td id="1549"><a href="#1549">1549</a></td></tr
><tr id="gr_svn198_1550"

><td id="1550"><a href="#1550">1550</a></td></tr
><tr id="gr_svn198_1551"

><td id="1551"><a href="#1551">1551</a></td></tr
><tr id="gr_svn198_1552"

><td id="1552"><a href="#1552">1552</a></td></tr
><tr id="gr_svn198_1553"

><td id="1553"><a href="#1553">1553</a></td></tr
><tr id="gr_svn198_1554"

><td id="1554"><a href="#1554">1554</a></td></tr
><tr id="gr_svn198_1555"

><td id="1555"><a href="#1555">1555</a></td></tr
><tr id="gr_svn198_1556"

><td id="1556"><a href="#1556">1556</a></td></tr
><tr id="gr_svn198_1557"

><td id="1557"><a href="#1557">1557</a></td></tr
><tr id="gr_svn198_1558"

><td id="1558"><a href="#1558">1558</a></td></tr
><tr id="gr_svn198_1559"

><td id="1559"><a href="#1559">1559</a></td></tr
><tr id="gr_svn198_1560"

><td id="1560"><a href="#1560">1560</a></td></tr
><tr id="gr_svn198_1561"

><td id="1561"><a href="#1561">1561</a></td></tr
><tr id="gr_svn198_1562"

><td id="1562"><a href="#1562">1562</a></td></tr
><tr id="gr_svn198_1563"

><td id="1563"><a href="#1563">1563</a></td></tr
><tr id="gr_svn198_1564"

><td id="1564"><a href="#1564">1564</a></td></tr
><tr id="gr_svn198_1565"

><td id="1565"><a href="#1565">1565</a></td></tr
><tr id="gr_svn198_1566"

><td id="1566"><a href="#1566">1566</a></td></tr
><tr id="gr_svn198_1567"

><td id="1567"><a href="#1567">1567</a></td></tr
><tr id="gr_svn198_1568"

><td id="1568"><a href="#1568">1568</a></td></tr
><tr id="gr_svn198_1569"

><td id="1569"><a href="#1569">1569</a></td></tr
><tr id="gr_svn198_1570"

><td id="1570"><a href="#1570">1570</a></td></tr
><tr id="gr_svn198_1571"

><td id="1571"><a href="#1571">1571</a></td></tr
><tr id="gr_svn198_1572"

><td id="1572"><a href="#1572">1572</a></td></tr
><tr id="gr_svn198_1573"

><td id="1573"><a href="#1573">1573</a></td></tr
><tr id="gr_svn198_1574"

><td id="1574"><a href="#1574">1574</a></td></tr
><tr id="gr_svn198_1575"

><td id="1575"><a href="#1575">1575</a></td></tr
><tr id="gr_svn198_1576"

><td id="1576"><a href="#1576">1576</a></td></tr
><tr id="gr_svn198_1577"

><td id="1577"><a href="#1577">1577</a></td></tr
><tr id="gr_svn198_1578"

><td id="1578"><a href="#1578">1578</a></td></tr
><tr id="gr_svn198_1579"

><td id="1579"><a href="#1579">1579</a></td></tr
><tr id="gr_svn198_1580"

><td id="1580"><a href="#1580">1580</a></td></tr
><tr id="gr_svn198_1581"

><td id="1581"><a href="#1581">1581</a></td></tr
><tr id="gr_svn198_1582"

><td id="1582"><a href="#1582">1582</a></td></tr
><tr id="gr_svn198_1583"

><td id="1583"><a href="#1583">1583</a></td></tr
><tr id="gr_svn198_1584"

><td id="1584"><a href="#1584">1584</a></td></tr
><tr id="gr_svn198_1585"

><td id="1585"><a href="#1585">1585</a></td></tr
><tr id="gr_svn198_1586"

><td id="1586"><a href="#1586">1586</a></td></tr
><tr id="gr_svn198_1587"

><td id="1587"><a href="#1587">1587</a></td></tr
><tr id="gr_svn198_1588"

><td id="1588"><a href="#1588">1588</a></td></tr
><tr id="gr_svn198_1589"

><td id="1589"><a href="#1589">1589</a></td></tr
><tr id="gr_svn198_1590"

><td id="1590"><a href="#1590">1590</a></td></tr
><tr id="gr_svn198_1591"

><td id="1591"><a href="#1591">1591</a></td></tr
><tr id="gr_svn198_1592"

><td id="1592"><a href="#1592">1592</a></td></tr
><tr id="gr_svn198_1593"

><td id="1593"><a href="#1593">1593</a></td></tr
><tr id="gr_svn198_1594"

><td id="1594"><a href="#1594">1594</a></td></tr
><tr id="gr_svn198_1595"

><td id="1595"><a href="#1595">1595</a></td></tr
><tr id="gr_svn198_1596"

><td id="1596"><a href="#1596">1596</a></td></tr
><tr id="gr_svn198_1597"

><td id="1597"><a href="#1597">1597</a></td></tr
><tr id="gr_svn198_1598"

><td id="1598"><a href="#1598">1598</a></td></tr
><tr id="gr_svn198_1599"

><td id="1599"><a href="#1599">1599</a></td></tr
><tr id="gr_svn198_1600"

><td id="1600"><a href="#1600">1600</a></td></tr
><tr id="gr_svn198_1601"

><td id="1601"><a href="#1601">1601</a></td></tr
><tr id="gr_svn198_1602"

><td id="1602"><a href="#1602">1602</a></td></tr
><tr id="gr_svn198_1603"

><td id="1603"><a href="#1603">1603</a></td></tr
><tr id="gr_svn198_1604"

><td id="1604"><a href="#1604">1604</a></td></tr
><tr id="gr_svn198_1605"

><td id="1605"><a href="#1605">1605</a></td></tr
><tr id="gr_svn198_1606"

><td id="1606"><a href="#1606">1606</a></td></tr
><tr id="gr_svn198_1607"

><td id="1607"><a href="#1607">1607</a></td></tr
><tr id="gr_svn198_1608"

><td id="1608"><a href="#1608">1608</a></td></tr
><tr id="gr_svn198_1609"

><td id="1609"><a href="#1609">1609</a></td></tr
><tr id="gr_svn198_1610"

><td id="1610"><a href="#1610">1610</a></td></tr
><tr id="gr_svn198_1611"

><td id="1611"><a href="#1611">1611</a></td></tr
><tr id="gr_svn198_1612"

><td id="1612"><a href="#1612">1612</a></td></tr
><tr id="gr_svn198_1613"

><td id="1613"><a href="#1613">1613</a></td></tr
><tr id="gr_svn198_1614"

><td id="1614"><a href="#1614">1614</a></td></tr
><tr id="gr_svn198_1615"

><td id="1615"><a href="#1615">1615</a></td></tr
><tr id="gr_svn198_1616"

><td id="1616"><a href="#1616">1616</a></td></tr
><tr id="gr_svn198_1617"

><td id="1617"><a href="#1617">1617</a></td></tr
><tr id="gr_svn198_1618"

><td id="1618"><a href="#1618">1618</a></td></tr
><tr id="gr_svn198_1619"

><td id="1619"><a href="#1619">1619</a></td></tr
><tr id="gr_svn198_1620"

><td id="1620"><a href="#1620">1620</a></td></tr
><tr id="gr_svn198_1621"

><td id="1621"><a href="#1621">1621</a></td></tr
><tr id="gr_svn198_1622"

><td id="1622"><a href="#1622">1622</a></td></tr
><tr id="gr_svn198_1623"

><td id="1623"><a href="#1623">1623</a></td></tr
><tr id="gr_svn198_1624"

><td id="1624"><a href="#1624">1624</a></td></tr
><tr id="gr_svn198_1625"

><td id="1625"><a href="#1625">1625</a></td></tr
><tr id="gr_svn198_1626"

><td id="1626"><a href="#1626">1626</a></td></tr
><tr id="gr_svn198_1627"

><td id="1627"><a href="#1627">1627</a></td></tr
><tr id="gr_svn198_1628"

><td id="1628"><a href="#1628">1628</a></td></tr
><tr id="gr_svn198_1629"

><td id="1629"><a href="#1629">1629</a></td></tr
><tr id="gr_svn198_1630"

><td id="1630"><a href="#1630">1630</a></td></tr
><tr id="gr_svn198_1631"

><td id="1631"><a href="#1631">1631</a></td></tr
><tr id="gr_svn198_1632"

><td id="1632"><a href="#1632">1632</a></td></tr
><tr id="gr_svn198_1633"

><td id="1633"><a href="#1633">1633</a></td></tr
><tr id="gr_svn198_1634"

><td id="1634"><a href="#1634">1634</a></td></tr
><tr id="gr_svn198_1635"

><td id="1635"><a href="#1635">1635</a></td></tr
><tr id="gr_svn198_1636"

><td id="1636"><a href="#1636">1636</a></td></tr
><tr id="gr_svn198_1637"

><td id="1637"><a href="#1637">1637</a></td></tr
><tr id="gr_svn198_1638"

><td id="1638"><a href="#1638">1638</a></td></tr
><tr id="gr_svn198_1639"

><td id="1639"><a href="#1639">1639</a></td></tr
><tr id="gr_svn198_1640"

><td id="1640"><a href="#1640">1640</a></td></tr
><tr id="gr_svn198_1641"

><td id="1641"><a href="#1641">1641</a></td></tr
><tr id="gr_svn198_1642"

><td id="1642"><a href="#1642">1642</a></td></tr
><tr id="gr_svn198_1643"

><td id="1643"><a href="#1643">1643</a></td></tr
><tr id="gr_svn198_1644"

><td id="1644"><a href="#1644">1644</a></td></tr
><tr id="gr_svn198_1645"

><td id="1645"><a href="#1645">1645</a></td></tr
><tr id="gr_svn198_1646"

><td id="1646"><a href="#1646">1646</a></td></tr
><tr id="gr_svn198_1647"

><td id="1647"><a href="#1647">1647</a></td></tr
><tr id="gr_svn198_1648"

><td id="1648"><a href="#1648">1648</a></td></tr
><tr id="gr_svn198_1649"

><td id="1649"><a href="#1649">1649</a></td></tr
><tr id="gr_svn198_1650"

><td id="1650"><a href="#1650">1650</a></td></tr
><tr id="gr_svn198_1651"

><td id="1651"><a href="#1651">1651</a></td></tr
><tr id="gr_svn198_1652"

><td id="1652"><a href="#1652">1652</a></td></tr
><tr id="gr_svn198_1653"

><td id="1653"><a href="#1653">1653</a></td></tr
><tr id="gr_svn198_1654"

><td id="1654"><a href="#1654">1654</a></td></tr
><tr id="gr_svn198_1655"

><td id="1655"><a href="#1655">1655</a></td></tr
><tr id="gr_svn198_1656"

><td id="1656"><a href="#1656">1656</a></td></tr
><tr id="gr_svn198_1657"

><td id="1657"><a href="#1657">1657</a></td></tr
><tr id="gr_svn198_1658"

><td id="1658"><a href="#1658">1658</a></td></tr
><tr id="gr_svn198_1659"

><td id="1659"><a href="#1659">1659</a></td></tr
><tr id="gr_svn198_1660"

><td id="1660"><a href="#1660">1660</a></td></tr
><tr id="gr_svn198_1661"

><td id="1661"><a href="#1661">1661</a></td></tr
><tr id="gr_svn198_1662"

><td id="1662"><a href="#1662">1662</a></td></tr
><tr id="gr_svn198_1663"

><td id="1663"><a href="#1663">1663</a></td></tr
><tr id="gr_svn198_1664"

><td id="1664"><a href="#1664">1664</a></td></tr
><tr id="gr_svn198_1665"

><td id="1665"><a href="#1665">1665</a></td></tr
><tr id="gr_svn198_1666"

><td id="1666"><a href="#1666">1666</a></td></tr
><tr id="gr_svn198_1667"

><td id="1667"><a href="#1667">1667</a></td></tr
><tr id="gr_svn198_1668"

><td id="1668"><a href="#1668">1668</a></td></tr
><tr id="gr_svn198_1669"

><td id="1669"><a href="#1669">1669</a></td></tr
><tr id="gr_svn198_1670"

><td id="1670"><a href="#1670">1670</a></td></tr
><tr id="gr_svn198_1671"

><td id="1671"><a href="#1671">1671</a></td></tr
><tr id="gr_svn198_1672"

><td id="1672"><a href="#1672">1672</a></td></tr
><tr id="gr_svn198_1673"

><td id="1673"><a href="#1673">1673</a></td></tr
><tr id="gr_svn198_1674"

><td id="1674"><a href="#1674">1674</a></td></tr
><tr id="gr_svn198_1675"

><td id="1675"><a href="#1675">1675</a></td></tr
><tr id="gr_svn198_1676"

><td id="1676"><a href="#1676">1676</a></td></tr
><tr id="gr_svn198_1677"

><td id="1677"><a href="#1677">1677</a></td></tr
><tr id="gr_svn198_1678"

><td id="1678"><a href="#1678">1678</a></td></tr
><tr id="gr_svn198_1679"

><td id="1679"><a href="#1679">1679</a></td></tr
><tr id="gr_svn198_1680"

><td id="1680"><a href="#1680">1680</a></td></tr
><tr id="gr_svn198_1681"

><td id="1681"><a href="#1681">1681</a></td></tr
><tr id="gr_svn198_1682"

><td id="1682"><a href="#1682">1682</a></td></tr
><tr id="gr_svn198_1683"

><td id="1683"><a href="#1683">1683</a></td></tr
><tr id="gr_svn198_1684"

><td id="1684"><a href="#1684">1684</a></td></tr
><tr id="gr_svn198_1685"

><td id="1685"><a href="#1685">1685</a></td></tr
><tr id="gr_svn198_1686"

><td id="1686"><a href="#1686">1686</a></td></tr
><tr id="gr_svn198_1687"

><td id="1687"><a href="#1687">1687</a></td></tr
><tr id="gr_svn198_1688"

><td id="1688"><a href="#1688">1688</a></td></tr
><tr id="gr_svn198_1689"

><td id="1689"><a href="#1689">1689</a></td></tr
><tr id="gr_svn198_1690"

><td id="1690"><a href="#1690">1690</a></td></tr
><tr id="gr_svn198_1691"

><td id="1691"><a href="#1691">1691</a></td></tr
><tr id="gr_svn198_1692"

><td id="1692"><a href="#1692">1692</a></td></tr
><tr id="gr_svn198_1693"

><td id="1693"><a href="#1693">1693</a></td></tr
><tr id="gr_svn198_1694"

><td id="1694"><a href="#1694">1694</a></td></tr
><tr id="gr_svn198_1695"

><td id="1695"><a href="#1695">1695</a></td></tr
><tr id="gr_svn198_1696"

><td id="1696"><a href="#1696">1696</a></td></tr
><tr id="gr_svn198_1697"

><td id="1697"><a href="#1697">1697</a></td></tr
><tr id="gr_svn198_1698"

><td id="1698"><a href="#1698">1698</a></td></tr
><tr id="gr_svn198_1699"

><td id="1699"><a href="#1699">1699</a></td></tr
><tr id="gr_svn198_1700"

><td id="1700"><a href="#1700">1700</a></td></tr
><tr id="gr_svn198_1701"

><td id="1701"><a href="#1701">1701</a></td></tr
><tr id="gr_svn198_1702"

><td id="1702"><a href="#1702">1702</a></td></tr
><tr id="gr_svn198_1703"

><td id="1703"><a href="#1703">1703</a></td></tr
><tr id="gr_svn198_1704"

><td id="1704"><a href="#1704">1704</a></td></tr
><tr id="gr_svn198_1705"

><td id="1705"><a href="#1705">1705</a></td></tr
><tr id="gr_svn198_1706"

><td id="1706"><a href="#1706">1706</a></td></tr
><tr id="gr_svn198_1707"

><td id="1707"><a href="#1707">1707</a></td></tr
><tr id="gr_svn198_1708"

><td id="1708"><a href="#1708">1708</a></td></tr
><tr id="gr_svn198_1709"

><td id="1709"><a href="#1709">1709</a></td></tr
><tr id="gr_svn198_1710"

><td id="1710"><a href="#1710">1710</a></td></tr
><tr id="gr_svn198_1711"

><td id="1711"><a href="#1711">1711</a></td></tr
><tr id="gr_svn198_1712"

><td id="1712"><a href="#1712">1712</a></td></tr
><tr id="gr_svn198_1713"

><td id="1713"><a href="#1713">1713</a></td></tr
><tr id="gr_svn198_1714"

><td id="1714"><a href="#1714">1714</a></td></tr
><tr id="gr_svn198_1715"

><td id="1715"><a href="#1715">1715</a></td></tr
><tr id="gr_svn198_1716"

><td id="1716"><a href="#1716">1716</a></td></tr
><tr id="gr_svn198_1717"

><td id="1717"><a href="#1717">1717</a></td></tr
><tr id="gr_svn198_1718"

><td id="1718"><a href="#1718">1718</a></td></tr
><tr id="gr_svn198_1719"

><td id="1719"><a href="#1719">1719</a></td></tr
><tr id="gr_svn198_1720"

><td id="1720"><a href="#1720">1720</a></td></tr
><tr id="gr_svn198_1721"

><td id="1721"><a href="#1721">1721</a></td></tr
><tr id="gr_svn198_1722"

><td id="1722"><a href="#1722">1722</a></td></tr
><tr id="gr_svn198_1723"

><td id="1723"><a href="#1723">1723</a></td></tr
><tr id="gr_svn198_1724"

><td id="1724"><a href="#1724">1724</a></td></tr
><tr id="gr_svn198_1725"

><td id="1725"><a href="#1725">1725</a></td></tr
><tr id="gr_svn198_1726"

><td id="1726"><a href="#1726">1726</a></td></tr
><tr id="gr_svn198_1727"

><td id="1727"><a href="#1727">1727</a></td></tr
><tr id="gr_svn198_1728"

><td id="1728"><a href="#1728">1728</a></td></tr
><tr id="gr_svn198_1729"

><td id="1729"><a href="#1729">1729</a></td></tr
><tr id="gr_svn198_1730"

><td id="1730"><a href="#1730">1730</a></td></tr
><tr id="gr_svn198_1731"

><td id="1731"><a href="#1731">1731</a></td></tr
><tr id="gr_svn198_1732"

><td id="1732"><a href="#1732">1732</a></td></tr
><tr id="gr_svn198_1733"

><td id="1733"><a href="#1733">1733</a></td></tr
><tr id="gr_svn198_1734"

><td id="1734"><a href="#1734">1734</a></td></tr
><tr id="gr_svn198_1735"

><td id="1735"><a href="#1735">1735</a></td></tr
><tr id="gr_svn198_1736"

><td id="1736"><a href="#1736">1736</a></td></tr
><tr id="gr_svn198_1737"

><td id="1737"><a href="#1737">1737</a></td></tr
><tr id="gr_svn198_1738"

><td id="1738"><a href="#1738">1738</a></td></tr
><tr id="gr_svn198_1739"

><td id="1739"><a href="#1739">1739</a></td></tr
><tr id="gr_svn198_1740"

><td id="1740"><a href="#1740">1740</a></td></tr
><tr id="gr_svn198_1741"

><td id="1741"><a href="#1741">1741</a></td></tr
><tr id="gr_svn198_1742"

><td id="1742"><a href="#1742">1742</a></td></tr
><tr id="gr_svn198_1743"

><td id="1743"><a href="#1743">1743</a></td></tr
><tr id="gr_svn198_1744"

><td id="1744"><a href="#1744">1744</a></td></tr
><tr id="gr_svn198_1745"

><td id="1745"><a href="#1745">1745</a></td></tr
><tr id="gr_svn198_1746"

><td id="1746"><a href="#1746">1746</a></td></tr
><tr id="gr_svn198_1747"

><td id="1747"><a href="#1747">1747</a></td></tr
><tr id="gr_svn198_1748"

><td id="1748"><a href="#1748">1748</a></td></tr
><tr id="gr_svn198_1749"

><td id="1749"><a href="#1749">1749</a></td></tr
><tr id="gr_svn198_1750"

><td id="1750"><a href="#1750">1750</a></td></tr
><tr id="gr_svn198_1751"

><td id="1751"><a href="#1751">1751</a></td></tr
><tr id="gr_svn198_1752"

><td id="1752"><a href="#1752">1752</a></td></tr
><tr id="gr_svn198_1753"

><td id="1753"><a href="#1753">1753</a></td></tr
><tr id="gr_svn198_1754"

><td id="1754"><a href="#1754">1754</a></td></tr
><tr id="gr_svn198_1755"

><td id="1755"><a href="#1755">1755</a></td></tr
><tr id="gr_svn198_1756"

><td id="1756"><a href="#1756">1756</a></td></tr
><tr id="gr_svn198_1757"

><td id="1757"><a href="#1757">1757</a></td></tr
><tr id="gr_svn198_1758"

><td id="1758"><a href="#1758">1758</a></td></tr
><tr id="gr_svn198_1759"

><td id="1759"><a href="#1759">1759</a></td></tr
><tr id="gr_svn198_1760"

><td id="1760"><a href="#1760">1760</a></td></tr
><tr id="gr_svn198_1761"

><td id="1761"><a href="#1761">1761</a></td></tr
><tr id="gr_svn198_1762"

><td id="1762"><a href="#1762">1762</a></td></tr
><tr id="gr_svn198_1763"

><td id="1763"><a href="#1763">1763</a></td></tr
><tr id="gr_svn198_1764"

><td id="1764"><a href="#1764">1764</a></td></tr
><tr id="gr_svn198_1765"

><td id="1765"><a href="#1765">1765</a></td></tr
><tr id="gr_svn198_1766"

><td id="1766"><a href="#1766">1766</a></td></tr
><tr id="gr_svn198_1767"

><td id="1767"><a href="#1767">1767</a></td></tr
><tr id="gr_svn198_1768"

><td id="1768"><a href="#1768">1768</a></td></tr
><tr id="gr_svn198_1769"

><td id="1769"><a href="#1769">1769</a></td></tr
><tr id="gr_svn198_1770"

><td id="1770"><a href="#1770">1770</a></td></tr
><tr id="gr_svn198_1771"

><td id="1771"><a href="#1771">1771</a></td></tr
><tr id="gr_svn198_1772"

><td id="1772"><a href="#1772">1772</a></td></tr
><tr id="gr_svn198_1773"

><td id="1773"><a href="#1773">1773</a></td></tr
><tr id="gr_svn198_1774"

><td id="1774"><a href="#1774">1774</a></td></tr
><tr id="gr_svn198_1775"

><td id="1775"><a href="#1775">1775</a></td></tr
><tr id="gr_svn198_1776"

><td id="1776"><a href="#1776">1776</a></td></tr
><tr id="gr_svn198_1777"

><td id="1777"><a href="#1777">1777</a></td></tr
><tr id="gr_svn198_1778"

><td id="1778"><a href="#1778">1778</a></td></tr
><tr id="gr_svn198_1779"

><td id="1779"><a href="#1779">1779</a></td></tr
><tr id="gr_svn198_1780"

><td id="1780"><a href="#1780">1780</a></td></tr
><tr id="gr_svn198_1781"

><td id="1781"><a href="#1781">1781</a></td></tr
><tr id="gr_svn198_1782"

><td id="1782"><a href="#1782">1782</a></td></tr
><tr id="gr_svn198_1783"

><td id="1783"><a href="#1783">1783</a></td></tr
><tr id="gr_svn198_1784"

><td id="1784"><a href="#1784">1784</a></td></tr
><tr id="gr_svn198_1785"

><td id="1785"><a href="#1785">1785</a></td></tr
><tr id="gr_svn198_1786"

><td id="1786"><a href="#1786">1786</a></td></tr
><tr id="gr_svn198_1787"

><td id="1787"><a href="#1787">1787</a></td></tr
><tr id="gr_svn198_1788"

><td id="1788"><a href="#1788">1788</a></td></tr
><tr id="gr_svn198_1789"

><td id="1789"><a href="#1789">1789</a></td></tr
><tr id="gr_svn198_1790"

><td id="1790"><a href="#1790">1790</a></td></tr
><tr id="gr_svn198_1791"

><td id="1791"><a href="#1791">1791</a></td></tr
><tr id="gr_svn198_1792"

><td id="1792"><a href="#1792">1792</a></td></tr
><tr id="gr_svn198_1793"

><td id="1793"><a href="#1793">1793</a></td></tr
><tr id="gr_svn198_1794"

><td id="1794"><a href="#1794">1794</a></td></tr
><tr id="gr_svn198_1795"

><td id="1795"><a href="#1795">1795</a></td></tr
><tr id="gr_svn198_1796"

><td id="1796"><a href="#1796">1796</a></td></tr
><tr id="gr_svn198_1797"

><td id="1797"><a href="#1797">1797</a></td></tr
><tr id="gr_svn198_1798"

><td id="1798"><a href="#1798">1798</a></td></tr
><tr id="gr_svn198_1799"

><td id="1799"><a href="#1799">1799</a></td></tr
><tr id="gr_svn198_1800"

><td id="1800"><a href="#1800">1800</a></td></tr
><tr id="gr_svn198_1801"

><td id="1801"><a href="#1801">1801</a></td></tr
><tr id="gr_svn198_1802"

><td id="1802"><a href="#1802">1802</a></td></tr
><tr id="gr_svn198_1803"

><td id="1803"><a href="#1803">1803</a></td></tr
><tr id="gr_svn198_1804"

><td id="1804"><a href="#1804">1804</a></td></tr
><tr id="gr_svn198_1805"

><td id="1805"><a href="#1805">1805</a></td></tr
><tr id="gr_svn198_1806"

><td id="1806"><a href="#1806">1806</a></td></tr
><tr id="gr_svn198_1807"

><td id="1807"><a href="#1807">1807</a></td></tr
><tr id="gr_svn198_1808"

><td id="1808"><a href="#1808">1808</a></td></tr
><tr id="gr_svn198_1809"

><td id="1809"><a href="#1809">1809</a></td></tr
><tr id="gr_svn198_1810"

><td id="1810"><a href="#1810">1810</a></td></tr
><tr id="gr_svn198_1811"

><td id="1811"><a href="#1811">1811</a></td></tr
><tr id="gr_svn198_1812"

><td id="1812"><a href="#1812">1812</a></td></tr
><tr id="gr_svn198_1813"

><td id="1813"><a href="#1813">1813</a></td></tr
><tr id="gr_svn198_1814"

><td id="1814"><a href="#1814">1814</a></td></tr
><tr id="gr_svn198_1815"

><td id="1815"><a href="#1815">1815</a></td></tr
><tr id="gr_svn198_1816"

><td id="1816"><a href="#1816">1816</a></td></tr
><tr id="gr_svn198_1817"

><td id="1817"><a href="#1817">1817</a></td></tr
><tr id="gr_svn198_1818"

><td id="1818"><a href="#1818">1818</a></td></tr
><tr id="gr_svn198_1819"

><td id="1819"><a href="#1819">1819</a></td></tr
><tr id="gr_svn198_1820"

><td id="1820"><a href="#1820">1820</a></td></tr
><tr id="gr_svn198_1821"

><td id="1821"><a href="#1821">1821</a></td></tr
><tr id="gr_svn198_1822"

><td id="1822"><a href="#1822">1822</a></td></tr
><tr id="gr_svn198_1823"

><td id="1823"><a href="#1823">1823</a></td></tr
><tr id="gr_svn198_1824"

><td id="1824"><a href="#1824">1824</a></td></tr
><tr id="gr_svn198_1825"

><td id="1825"><a href="#1825">1825</a></td></tr
><tr id="gr_svn198_1826"

><td id="1826"><a href="#1826">1826</a></td></tr
><tr id="gr_svn198_1827"

><td id="1827"><a href="#1827">1827</a></td></tr
><tr id="gr_svn198_1828"

><td id="1828"><a href="#1828">1828</a></td></tr
><tr id="gr_svn198_1829"

><td id="1829"><a href="#1829">1829</a></td></tr
><tr id="gr_svn198_1830"

><td id="1830"><a href="#1830">1830</a></td></tr
><tr id="gr_svn198_1831"

><td id="1831"><a href="#1831">1831</a></td></tr
><tr id="gr_svn198_1832"

><td id="1832"><a href="#1832">1832</a></td></tr
><tr id="gr_svn198_1833"

><td id="1833"><a href="#1833">1833</a></td></tr
><tr id="gr_svn198_1834"

><td id="1834"><a href="#1834">1834</a></td></tr
><tr id="gr_svn198_1835"

><td id="1835"><a href="#1835">1835</a></td></tr
><tr id="gr_svn198_1836"

><td id="1836"><a href="#1836">1836</a></td></tr
><tr id="gr_svn198_1837"

><td id="1837"><a href="#1837">1837</a></td></tr
><tr id="gr_svn198_1838"

><td id="1838"><a href="#1838">1838</a></td></tr
><tr id="gr_svn198_1839"

><td id="1839"><a href="#1839">1839</a></td></tr
><tr id="gr_svn198_1840"

><td id="1840"><a href="#1840">1840</a></td></tr
><tr id="gr_svn198_1841"

><td id="1841"><a href="#1841">1841</a></td></tr
><tr id="gr_svn198_1842"

><td id="1842"><a href="#1842">1842</a></td></tr
><tr id="gr_svn198_1843"

><td id="1843"><a href="#1843">1843</a></td></tr
><tr id="gr_svn198_1844"

><td id="1844"><a href="#1844">1844</a></td></tr
><tr id="gr_svn198_1845"

><td id="1845"><a href="#1845">1845</a></td></tr
><tr id="gr_svn198_1846"

><td id="1846"><a href="#1846">1846</a></td></tr
><tr id="gr_svn198_1847"

><td id="1847"><a href="#1847">1847</a></td></tr
><tr id="gr_svn198_1848"

><td id="1848"><a href="#1848">1848</a></td></tr
><tr id="gr_svn198_1849"

><td id="1849"><a href="#1849">1849</a></td></tr
><tr id="gr_svn198_1850"

><td id="1850"><a href="#1850">1850</a></td></tr
><tr id="gr_svn198_1851"

><td id="1851"><a href="#1851">1851</a></td></tr
><tr id="gr_svn198_1852"

><td id="1852"><a href="#1852">1852</a></td></tr
><tr id="gr_svn198_1853"

><td id="1853"><a href="#1853">1853</a></td></tr
><tr id="gr_svn198_1854"

><td id="1854"><a href="#1854">1854</a></td></tr
><tr id="gr_svn198_1855"

><td id="1855"><a href="#1855">1855</a></td></tr
><tr id="gr_svn198_1856"

><td id="1856"><a href="#1856">1856</a></td></tr
><tr id="gr_svn198_1857"

><td id="1857"><a href="#1857">1857</a></td></tr
><tr id="gr_svn198_1858"

><td id="1858"><a href="#1858">1858</a></td></tr
><tr id="gr_svn198_1859"

><td id="1859"><a href="#1859">1859</a></td></tr
><tr id="gr_svn198_1860"

><td id="1860"><a href="#1860">1860</a></td></tr
><tr id="gr_svn198_1861"

><td id="1861"><a href="#1861">1861</a></td></tr
><tr id="gr_svn198_1862"

><td id="1862"><a href="#1862">1862</a></td></tr
><tr id="gr_svn198_1863"

><td id="1863"><a href="#1863">1863</a></td></tr
><tr id="gr_svn198_1864"

><td id="1864"><a href="#1864">1864</a></td></tr
><tr id="gr_svn198_1865"

><td id="1865"><a href="#1865">1865</a></td></tr
><tr id="gr_svn198_1866"

><td id="1866"><a href="#1866">1866</a></td></tr
><tr id="gr_svn198_1867"

><td id="1867"><a href="#1867">1867</a></td></tr
><tr id="gr_svn198_1868"

><td id="1868"><a href="#1868">1868</a></td></tr
><tr id="gr_svn198_1869"

><td id="1869"><a href="#1869">1869</a></td></tr
><tr id="gr_svn198_1870"

><td id="1870"><a href="#1870">1870</a></td></tr
><tr id="gr_svn198_1871"

><td id="1871"><a href="#1871">1871</a></td></tr
><tr id="gr_svn198_1872"

><td id="1872"><a href="#1872">1872</a></td></tr
><tr id="gr_svn198_1873"

><td id="1873"><a href="#1873">1873</a></td></tr
><tr id="gr_svn198_1874"

><td id="1874"><a href="#1874">1874</a></td></tr
><tr id="gr_svn198_1875"

><td id="1875"><a href="#1875">1875</a></td></tr
><tr id="gr_svn198_1876"

><td id="1876"><a href="#1876">1876</a></td></tr
><tr id="gr_svn198_1877"

><td id="1877"><a href="#1877">1877</a></td></tr
><tr id="gr_svn198_1878"

><td id="1878"><a href="#1878">1878</a></td></tr
><tr id="gr_svn198_1879"

><td id="1879"><a href="#1879">1879</a></td></tr
><tr id="gr_svn198_1880"

><td id="1880"><a href="#1880">1880</a></td></tr
><tr id="gr_svn198_1881"

><td id="1881"><a href="#1881">1881</a></td></tr
><tr id="gr_svn198_1882"

><td id="1882"><a href="#1882">1882</a></td></tr
><tr id="gr_svn198_1883"

><td id="1883"><a href="#1883">1883</a></td></tr
><tr id="gr_svn198_1884"

><td id="1884"><a href="#1884">1884</a></td></tr
><tr id="gr_svn198_1885"

><td id="1885"><a href="#1885">1885</a></td></tr
><tr id="gr_svn198_1886"

><td id="1886"><a href="#1886">1886</a></td></tr
><tr id="gr_svn198_1887"

><td id="1887"><a href="#1887">1887</a></td></tr
><tr id="gr_svn198_1888"

><td id="1888"><a href="#1888">1888</a></td></tr
><tr id="gr_svn198_1889"

><td id="1889"><a href="#1889">1889</a></td></tr
><tr id="gr_svn198_1890"

><td id="1890"><a href="#1890">1890</a></td></tr
><tr id="gr_svn198_1891"

><td id="1891"><a href="#1891">1891</a></td></tr
><tr id="gr_svn198_1892"

><td id="1892"><a href="#1892">1892</a></td></tr
><tr id="gr_svn198_1893"

><td id="1893"><a href="#1893">1893</a></td></tr
><tr id="gr_svn198_1894"

><td id="1894"><a href="#1894">1894</a></td></tr
><tr id="gr_svn198_1895"

><td id="1895"><a href="#1895">1895</a></td></tr
><tr id="gr_svn198_1896"

><td id="1896"><a href="#1896">1896</a></td></tr
><tr id="gr_svn198_1897"

><td id="1897"><a href="#1897">1897</a></td></tr
><tr id="gr_svn198_1898"

><td id="1898"><a href="#1898">1898</a></td></tr
><tr id="gr_svn198_1899"

><td id="1899"><a href="#1899">1899</a></td></tr
><tr id="gr_svn198_1900"

><td id="1900"><a href="#1900">1900</a></td></tr
><tr id="gr_svn198_1901"

><td id="1901"><a href="#1901">1901</a></td></tr
><tr id="gr_svn198_1902"

><td id="1902"><a href="#1902">1902</a></td></tr
><tr id="gr_svn198_1903"

><td id="1903"><a href="#1903">1903</a></td></tr
><tr id="gr_svn198_1904"

><td id="1904"><a href="#1904">1904</a></td></tr
><tr id="gr_svn198_1905"

><td id="1905"><a href="#1905">1905</a></td></tr
><tr id="gr_svn198_1906"

><td id="1906"><a href="#1906">1906</a></td></tr
><tr id="gr_svn198_1907"

><td id="1907"><a href="#1907">1907</a></td></tr
><tr id="gr_svn198_1908"

><td id="1908"><a href="#1908">1908</a></td></tr
><tr id="gr_svn198_1909"

><td id="1909"><a href="#1909">1909</a></td></tr
><tr id="gr_svn198_1910"

><td id="1910"><a href="#1910">1910</a></td></tr
><tr id="gr_svn198_1911"

><td id="1911"><a href="#1911">1911</a></td></tr
><tr id="gr_svn198_1912"

><td id="1912"><a href="#1912">1912</a></td></tr
><tr id="gr_svn198_1913"

><td id="1913"><a href="#1913">1913</a></td></tr
><tr id="gr_svn198_1914"

><td id="1914"><a href="#1914">1914</a></td></tr
><tr id="gr_svn198_1915"

><td id="1915"><a href="#1915">1915</a></td></tr
><tr id="gr_svn198_1916"

><td id="1916"><a href="#1916">1916</a></td></tr
><tr id="gr_svn198_1917"

><td id="1917"><a href="#1917">1917</a></td></tr
><tr id="gr_svn198_1918"

><td id="1918"><a href="#1918">1918</a></td></tr
><tr id="gr_svn198_1919"

><td id="1919"><a href="#1919">1919</a></td></tr
><tr id="gr_svn198_1920"

><td id="1920"><a href="#1920">1920</a></td></tr
><tr id="gr_svn198_1921"

><td id="1921"><a href="#1921">1921</a></td></tr
><tr id="gr_svn198_1922"

><td id="1922"><a href="#1922">1922</a></td></tr
><tr id="gr_svn198_1923"

><td id="1923"><a href="#1923">1923</a></td></tr
><tr id="gr_svn198_1924"

><td id="1924"><a href="#1924">1924</a></td></tr
><tr id="gr_svn198_1925"

><td id="1925"><a href="#1925">1925</a></td></tr
><tr id="gr_svn198_1926"

><td id="1926"><a href="#1926">1926</a></td></tr
><tr id="gr_svn198_1927"

><td id="1927"><a href="#1927">1927</a></td></tr
><tr id="gr_svn198_1928"

><td id="1928"><a href="#1928">1928</a></td></tr
><tr id="gr_svn198_1929"

><td id="1929"><a href="#1929">1929</a></td></tr
><tr id="gr_svn198_1930"

><td id="1930"><a href="#1930">1930</a></td></tr
><tr id="gr_svn198_1931"

><td id="1931"><a href="#1931">1931</a></td></tr
><tr id="gr_svn198_1932"

><td id="1932"><a href="#1932">1932</a></td></tr
><tr id="gr_svn198_1933"

><td id="1933"><a href="#1933">1933</a></td></tr
><tr id="gr_svn198_1934"

><td id="1934"><a href="#1934">1934</a></td></tr
><tr id="gr_svn198_1935"

><td id="1935"><a href="#1935">1935</a></td></tr
><tr id="gr_svn198_1936"

><td id="1936"><a href="#1936">1936</a></td></tr
><tr id="gr_svn198_1937"

><td id="1937"><a href="#1937">1937</a></td></tr
><tr id="gr_svn198_1938"

><td id="1938"><a href="#1938">1938</a></td></tr
><tr id="gr_svn198_1939"

><td id="1939"><a href="#1939">1939</a></td></tr
><tr id="gr_svn198_1940"

><td id="1940"><a href="#1940">1940</a></td></tr
><tr id="gr_svn198_1941"

><td id="1941"><a href="#1941">1941</a></td></tr
><tr id="gr_svn198_1942"

><td id="1942"><a href="#1942">1942</a></td></tr
><tr id="gr_svn198_1943"

><td id="1943"><a href="#1943">1943</a></td></tr
><tr id="gr_svn198_1944"

><td id="1944"><a href="#1944">1944</a></td></tr
><tr id="gr_svn198_1945"

><td id="1945"><a href="#1945">1945</a></td></tr
><tr id="gr_svn198_1946"

><td id="1946"><a href="#1946">1946</a></td></tr
><tr id="gr_svn198_1947"

><td id="1947"><a href="#1947">1947</a></td></tr
><tr id="gr_svn198_1948"

><td id="1948"><a href="#1948">1948</a></td></tr
><tr id="gr_svn198_1949"

><td id="1949"><a href="#1949">1949</a></td></tr
><tr id="gr_svn198_1950"

><td id="1950"><a href="#1950">1950</a></td></tr
><tr id="gr_svn198_1951"

><td id="1951"><a href="#1951">1951</a></td></tr
><tr id="gr_svn198_1952"

><td id="1952"><a href="#1952">1952</a></td></tr
><tr id="gr_svn198_1953"

><td id="1953"><a href="#1953">1953</a></td></tr
><tr id="gr_svn198_1954"

><td id="1954"><a href="#1954">1954</a></td></tr
><tr id="gr_svn198_1955"

><td id="1955"><a href="#1955">1955</a></td></tr
><tr id="gr_svn198_1956"

><td id="1956"><a href="#1956">1956</a></td></tr
><tr id="gr_svn198_1957"

><td id="1957"><a href="#1957">1957</a></td></tr
><tr id="gr_svn198_1958"

><td id="1958"><a href="#1958">1958</a></td></tr
><tr id="gr_svn198_1959"

><td id="1959"><a href="#1959">1959</a></td></tr
><tr id="gr_svn198_1960"

><td id="1960"><a href="#1960">1960</a></td></tr
><tr id="gr_svn198_1961"

><td id="1961"><a href="#1961">1961</a></td></tr
><tr id="gr_svn198_1962"

><td id="1962"><a href="#1962">1962</a></td></tr
><tr id="gr_svn198_1963"

><td id="1963"><a href="#1963">1963</a></td></tr
><tr id="gr_svn198_1964"

><td id="1964"><a href="#1964">1964</a></td></tr
><tr id="gr_svn198_1965"

><td id="1965"><a href="#1965">1965</a></td></tr
><tr id="gr_svn198_1966"

><td id="1966"><a href="#1966">1966</a></td></tr
><tr id="gr_svn198_1967"

><td id="1967"><a href="#1967">1967</a></td></tr
><tr id="gr_svn198_1968"

><td id="1968"><a href="#1968">1968</a></td></tr
><tr id="gr_svn198_1969"

><td id="1969"><a href="#1969">1969</a></td></tr
><tr id="gr_svn198_1970"

><td id="1970"><a href="#1970">1970</a></td></tr
><tr id="gr_svn198_1971"

><td id="1971"><a href="#1971">1971</a></td></tr
><tr id="gr_svn198_1972"

><td id="1972"><a href="#1972">1972</a></td></tr
><tr id="gr_svn198_1973"

><td id="1973"><a href="#1973">1973</a></td></tr
><tr id="gr_svn198_1974"

><td id="1974"><a href="#1974">1974</a></td></tr
><tr id="gr_svn198_1975"

><td id="1975"><a href="#1975">1975</a></td></tr
><tr id="gr_svn198_1976"

><td id="1976"><a href="#1976">1976</a></td></tr
><tr id="gr_svn198_1977"

><td id="1977"><a href="#1977">1977</a></td></tr
><tr id="gr_svn198_1978"

><td id="1978"><a href="#1978">1978</a></td></tr
><tr id="gr_svn198_1979"

><td id="1979"><a href="#1979">1979</a></td></tr
><tr id="gr_svn198_1980"

><td id="1980"><a href="#1980">1980</a></td></tr
><tr id="gr_svn198_1981"

><td id="1981"><a href="#1981">1981</a></td></tr
><tr id="gr_svn198_1982"

><td id="1982"><a href="#1982">1982</a></td></tr
><tr id="gr_svn198_1983"

><td id="1983"><a href="#1983">1983</a></td></tr
><tr id="gr_svn198_1984"

><td id="1984"><a href="#1984">1984</a></td></tr
><tr id="gr_svn198_1985"

><td id="1985"><a href="#1985">1985</a></td></tr
><tr id="gr_svn198_1986"

><td id="1986"><a href="#1986">1986</a></td></tr
><tr id="gr_svn198_1987"

><td id="1987"><a href="#1987">1987</a></td></tr
><tr id="gr_svn198_1988"

><td id="1988"><a href="#1988">1988</a></td></tr
><tr id="gr_svn198_1989"

><td id="1989"><a href="#1989">1989</a></td></tr
><tr id="gr_svn198_1990"

><td id="1990"><a href="#1990">1990</a></td></tr
><tr id="gr_svn198_1991"

><td id="1991"><a href="#1991">1991</a></td></tr
><tr id="gr_svn198_1992"

><td id="1992"><a href="#1992">1992</a></td></tr
><tr id="gr_svn198_1993"

><td id="1993"><a href="#1993">1993</a></td></tr
><tr id="gr_svn198_1994"

><td id="1994"><a href="#1994">1994</a></td></tr
><tr id="gr_svn198_1995"

><td id="1995"><a href="#1995">1995</a></td></tr
><tr id="gr_svn198_1996"

><td id="1996"><a href="#1996">1996</a></td></tr
><tr id="gr_svn198_1997"

><td id="1997"><a href="#1997">1997</a></td></tr
><tr id="gr_svn198_1998"

><td id="1998"><a href="#1998">1998</a></td></tr
><tr id="gr_svn198_1999"

><td id="1999"><a href="#1999">1999</a></td></tr
><tr id="gr_svn198_2000"

><td id="2000"><a href="#2000">2000</a></td></tr
><tr id="gr_svn198_2001"

><td id="2001"><a href="#2001">2001</a></td></tr
><tr id="gr_svn198_2002"

><td id="2002"><a href="#2002">2002</a></td></tr
><tr id="gr_svn198_2003"

><td id="2003"><a href="#2003">2003</a></td></tr
><tr id="gr_svn198_2004"

><td id="2004"><a href="#2004">2004</a></td></tr
><tr id="gr_svn198_2005"

><td id="2005"><a href="#2005">2005</a></td></tr
><tr id="gr_svn198_2006"

><td id="2006"><a href="#2006">2006</a></td></tr
><tr id="gr_svn198_2007"

><td id="2007"><a href="#2007">2007</a></td></tr
><tr id="gr_svn198_2008"

><td id="2008"><a href="#2008">2008</a></td></tr
><tr id="gr_svn198_2009"

><td id="2009"><a href="#2009">2009</a></td></tr
><tr id="gr_svn198_2010"

><td id="2010"><a href="#2010">2010</a></td></tr
><tr id="gr_svn198_2011"

><td id="2011"><a href="#2011">2011</a></td></tr
><tr id="gr_svn198_2012"

><td id="2012"><a href="#2012">2012</a></td></tr
><tr id="gr_svn198_2013"

><td id="2013"><a href="#2013">2013</a></td></tr
><tr id="gr_svn198_2014"

><td id="2014"><a href="#2014">2014</a></td></tr
><tr id="gr_svn198_2015"

><td id="2015"><a href="#2015">2015</a></td></tr
><tr id="gr_svn198_2016"

><td id="2016"><a href="#2016">2016</a></td></tr
><tr id="gr_svn198_2017"

><td id="2017"><a href="#2017">2017</a></td></tr
><tr id="gr_svn198_2018"

><td id="2018"><a href="#2018">2018</a></td></tr
><tr id="gr_svn198_2019"

><td id="2019"><a href="#2019">2019</a></td></tr
><tr id="gr_svn198_2020"

><td id="2020"><a href="#2020">2020</a></td></tr
><tr id="gr_svn198_2021"

><td id="2021"><a href="#2021">2021</a></td></tr
><tr id="gr_svn198_2022"

><td id="2022"><a href="#2022">2022</a></td></tr
><tr id="gr_svn198_2023"

><td id="2023"><a href="#2023">2023</a></td></tr
><tr id="gr_svn198_2024"

><td id="2024"><a href="#2024">2024</a></td></tr
><tr id="gr_svn198_2025"

><td id="2025"><a href="#2025">2025</a></td></tr
><tr id="gr_svn198_2026"

><td id="2026"><a href="#2026">2026</a></td></tr
><tr id="gr_svn198_2027"

><td id="2027"><a href="#2027">2027</a></td></tr
><tr id="gr_svn198_2028"

><td id="2028"><a href="#2028">2028</a></td></tr
><tr id="gr_svn198_2029"

><td id="2029"><a href="#2029">2029</a></td></tr
><tr id="gr_svn198_2030"

><td id="2030"><a href="#2030">2030</a></td></tr
><tr id="gr_svn198_2031"

><td id="2031"><a href="#2031">2031</a></td></tr
><tr id="gr_svn198_2032"

><td id="2032"><a href="#2032">2032</a></td></tr
><tr id="gr_svn198_2033"

><td id="2033"><a href="#2033">2033</a></td></tr
><tr id="gr_svn198_2034"

><td id="2034"><a href="#2034">2034</a></td></tr
><tr id="gr_svn198_2035"

><td id="2035"><a href="#2035">2035</a></td></tr
><tr id="gr_svn198_2036"

><td id="2036"><a href="#2036">2036</a></td></tr
><tr id="gr_svn198_2037"

><td id="2037"><a href="#2037">2037</a></td></tr
><tr id="gr_svn198_2038"

><td id="2038"><a href="#2038">2038</a></td></tr
><tr id="gr_svn198_2039"

><td id="2039"><a href="#2039">2039</a></td></tr
><tr id="gr_svn198_2040"

><td id="2040"><a href="#2040">2040</a></td></tr
><tr id="gr_svn198_2041"

><td id="2041"><a href="#2041">2041</a></td></tr
><tr id="gr_svn198_2042"

><td id="2042"><a href="#2042">2042</a></td></tr
><tr id="gr_svn198_2043"

><td id="2043"><a href="#2043">2043</a></td></tr
><tr id="gr_svn198_2044"

><td id="2044"><a href="#2044">2044</a></td></tr
><tr id="gr_svn198_2045"

><td id="2045"><a href="#2045">2045</a></td></tr
><tr id="gr_svn198_2046"

><td id="2046"><a href="#2046">2046</a></td></tr
><tr id="gr_svn198_2047"

><td id="2047"><a href="#2047">2047</a></td></tr
><tr id="gr_svn198_2048"

><td id="2048"><a href="#2048">2048</a></td></tr
><tr id="gr_svn198_2049"

><td id="2049"><a href="#2049">2049</a></td></tr
><tr id="gr_svn198_2050"

><td id="2050"><a href="#2050">2050</a></td></tr
><tr id="gr_svn198_2051"

><td id="2051"><a href="#2051">2051</a></td></tr
><tr id="gr_svn198_2052"

><td id="2052"><a href="#2052">2052</a></td></tr
><tr id="gr_svn198_2053"

><td id="2053"><a href="#2053">2053</a></td></tr
><tr id="gr_svn198_2054"

><td id="2054"><a href="#2054">2054</a></td></tr
><tr id="gr_svn198_2055"

><td id="2055"><a href="#2055">2055</a></td></tr
><tr id="gr_svn198_2056"

><td id="2056"><a href="#2056">2056</a></td></tr
><tr id="gr_svn198_2057"

><td id="2057"><a href="#2057">2057</a></td></tr
><tr id="gr_svn198_2058"

><td id="2058"><a href="#2058">2058</a></td></tr
><tr id="gr_svn198_2059"

><td id="2059"><a href="#2059">2059</a></td></tr
><tr id="gr_svn198_2060"

><td id="2060"><a href="#2060">2060</a></td></tr
><tr id="gr_svn198_2061"

><td id="2061"><a href="#2061">2061</a></td></tr
><tr id="gr_svn198_2062"

><td id="2062"><a href="#2062">2062</a></td></tr
><tr id="gr_svn198_2063"

><td id="2063"><a href="#2063">2063</a></td></tr
><tr id="gr_svn198_2064"

><td id="2064"><a href="#2064">2064</a></td></tr
><tr id="gr_svn198_2065"

><td id="2065"><a href="#2065">2065</a></td></tr
><tr id="gr_svn198_2066"

><td id="2066"><a href="#2066">2066</a></td></tr
><tr id="gr_svn198_2067"

><td id="2067"><a href="#2067">2067</a></td></tr
><tr id="gr_svn198_2068"

><td id="2068"><a href="#2068">2068</a></td></tr
><tr id="gr_svn198_2069"

><td id="2069"><a href="#2069">2069</a></td></tr
><tr id="gr_svn198_2070"

><td id="2070"><a href="#2070">2070</a></td></tr
><tr id="gr_svn198_2071"

><td id="2071"><a href="#2071">2071</a></td></tr
><tr id="gr_svn198_2072"

><td id="2072"><a href="#2072">2072</a></td></tr
><tr id="gr_svn198_2073"

><td id="2073"><a href="#2073">2073</a></td></tr
><tr id="gr_svn198_2074"

><td id="2074"><a href="#2074">2074</a></td></tr
><tr id="gr_svn198_2075"

><td id="2075"><a href="#2075">2075</a></td></tr
><tr id="gr_svn198_2076"

><td id="2076"><a href="#2076">2076</a></td></tr
><tr id="gr_svn198_2077"

><td id="2077"><a href="#2077">2077</a></td></tr
><tr id="gr_svn198_2078"

><td id="2078"><a href="#2078">2078</a></td></tr
><tr id="gr_svn198_2079"

><td id="2079"><a href="#2079">2079</a></td></tr
><tr id="gr_svn198_2080"

><td id="2080"><a href="#2080">2080</a></td></tr
><tr id="gr_svn198_2081"

><td id="2081"><a href="#2081">2081</a></td></tr
><tr id="gr_svn198_2082"

><td id="2082"><a href="#2082">2082</a></td></tr
><tr id="gr_svn198_2083"

><td id="2083"><a href="#2083">2083</a></td></tr
><tr id="gr_svn198_2084"

><td id="2084"><a href="#2084">2084</a></td></tr
><tr id="gr_svn198_2085"

><td id="2085"><a href="#2085">2085</a></td></tr
><tr id="gr_svn198_2086"

><td id="2086"><a href="#2086">2086</a></td></tr
><tr id="gr_svn198_2087"

><td id="2087"><a href="#2087">2087</a></td></tr
><tr id="gr_svn198_2088"

><td id="2088"><a href="#2088">2088</a></td></tr
><tr id="gr_svn198_2089"

><td id="2089"><a href="#2089">2089</a></td></tr
><tr id="gr_svn198_2090"

><td id="2090"><a href="#2090">2090</a></td></tr
><tr id="gr_svn198_2091"

><td id="2091"><a href="#2091">2091</a></td></tr
><tr id="gr_svn198_2092"

><td id="2092"><a href="#2092">2092</a></td></tr
><tr id="gr_svn198_2093"

><td id="2093"><a href="#2093">2093</a></td></tr
><tr id="gr_svn198_2094"

><td id="2094"><a href="#2094">2094</a></td></tr
><tr id="gr_svn198_2095"

><td id="2095"><a href="#2095">2095</a></td></tr
><tr id="gr_svn198_2096"

><td id="2096"><a href="#2096">2096</a></td></tr
><tr id="gr_svn198_2097"

><td id="2097"><a href="#2097">2097</a></td></tr
><tr id="gr_svn198_2098"

><td id="2098"><a href="#2098">2098</a></td></tr
><tr id="gr_svn198_2099"

><td id="2099"><a href="#2099">2099</a></td></tr
><tr id="gr_svn198_2100"

><td id="2100"><a href="#2100">2100</a></td></tr
><tr id="gr_svn198_2101"

><td id="2101"><a href="#2101">2101</a></td></tr
><tr id="gr_svn198_2102"

><td id="2102"><a href="#2102">2102</a></td></tr
><tr id="gr_svn198_2103"

><td id="2103"><a href="#2103">2103</a></td></tr
><tr id="gr_svn198_2104"

><td id="2104"><a href="#2104">2104</a></td></tr
><tr id="gr_svn198_2105"

><td id="2105"><a href="#2105">2105</a></td></tr
><tr id="gr_svn198_2106"

><td id="2106"><a href="#2106">2106</a></td></tr
><tr id="gr_svn198_2107"

><td id="2107"><a href="#2107">2107</a></td></tr
><tr id="gr_svn198_2108"

><td id="2108"><a href="#2108">2108</a></td></tr
><tr id="gr_svn198_2109"

><td id="2109"><a href="#2109">2109</a></td></tr
><tr id="gr_svn198_2110"

><td id="2110"><a href="#2110">2110</a></td></tr
><tr id="gr_svn198_2111"

><td id="2111"><a href="#2111">2111</a></td></tr
><tr id="gr_svn198_2112"

><td id="2112"><a href="#2112">2112</a></td></tr
><tr id="gr_svn198_2113"

><td id="2113"><a href="#2113">2113</a></td></tr
><tr id="gr_svn198_2114"

><td id="2114"><a href="#2114">2114</a></td></tr
><tr id="gr_svn198_2115"

><td id="2115"><a href="#2115">2115</a></td></tr
><tr id="gr_svn198_2116"

><td id="2116"><a href="#2116">2116</a></td></tr
><tr id="gr_svn198_2117"

><td id="2117"><a href="#2117">2117</a></td></tr
><tr id="gr_svn198_2118"

><td id="2118"><a href="#2118">2118</a></td></tr
><tr id="gr_svn198_2119"

><td id="2119"><a href="#2119">2119</a></td></tr
><tr id="gr_svn198_2120"

><td id="2120"><a href="#2120">2120</a></td></tr
><tr id="gr_svn198_2121"

><td id="2121"><a href="#2121">2121</a></td></tr
><tr id="gr_svn198_2122"

><td id="2122"><a href="#2122">2122</a></td></tr
><tr id="gr_svn198_2123"

><td id="2123"><a href="#2123">2123</a></td></tr
><tr id="gr_svn198_2124"

><td id="2124"><a href="#2124">2124</a></td></tr
><tr id="gr_svn198_2125"

><td id="2125"><a href="#2125">2125</a></td></tr
><tr id="gr_svn198_2126"

><td id="2126"><a href="#2126">2126</a></td></tr
><tr id="gr_svn198_2127"

><td id="2127"><a href="#2127">2127</a></td></tr
><tr id="gr_svn198_2128"

><td id="2128"><a href="#2128">2128</a></td></tr
><tr id="gr_svn198_2129"

><td id="2129"><a href="#2129">2129</a></td></tr
><tr id="gr_svn198_2130"

><td id="2130"><a href="#2130">2130</a></td></tr
><tr id="gr_svn198_2131"

><td id="2131"><a href="#2131">2131</a></td></tr
><tr id="gr_svn198_2132"

><td id="2132"><a href="#2132">2132</a></td></tr
><tr id="gr_svn198_2133"

><td id="2133"><a href="#2133">2133</a></td></tr
><tr id="gr_svn198_2134"

><td id="2134"><a href="#2134">2134</a></td></tr
><tr id="gr_svn198_2135"

><td id="2135"><a href="#2135">2135</a></td></tr
><tr id="gr_svn198_2136"

><td id="2136"><a href="#2136">2136</a></td></tr
><tr id="gr_svn198_2137"

><td id="2137"><a href="#2137">2137</a></td></tr
><tr id="gr_svn198_2138"

><td id="2138"><a href="#2138">2138</a></td></tr
><tr id="gr_svn198_2139"

><td id="2139"><a href="#2139">2139</a></td></tr
><tr id="gr_svn198_2140"

><td id="2140"><a href="#2140">2140</a></td></tr
><tr id="gr_svn198_2141"

><td id="2141"><a href="#2141">2141</a></td></tr
><tr id="gr_svn198_2142"

><td id="2142"><a href="#2142">2142</a></td></tr
><tr id="gr_svn198_2143"

><td id="2143"><a href="#2143">2143</a></td></tr
><tr id="gr_svn198_2144"

><td id="2144"><a href="#2144">2144</a></td></tr
><tr id="gr_svn198_2145"

><td id="2145"><a href="#2145">2145</a></td></tr
><tr id="gr_svn198_2146"

><td id="2146"><a href="#2146">2146</a></td></tr
><tr id="gr_svn198_2147"

><td id="2147"><a href="#2147">2147</a></td></tr
><tr id="gr_svn198_2148"

><td id="2148"><a href="#2148">2148</a></td></tr
><tr id="gr_svn198_2149"

><td id="2149"><a href="#2149">2149</a></td></tr
><tr id="gr_svn198_2150"

><td id="2150"><a href="#2150">2150</a></td></tr
><tr id="gr_svn198_2151"

><td id="2151"><a href="#2151">2151</a></td></tr
><tr id="gr_svn198_2152"

><td id="2152"><a href="#2152">2152</a></td></tr
><tr id="gr_svn198_2153"

><td id="2153"><a href="#2153">2153</a></td></tr
><tr id="gr_svn198_2154"

><td id="2154"><a href="#2154">2154</a></td></tr
><tr id="gr_svn198_2155"

><td id="2155"><a href="#2155">2155</a></td></tr
><tr id="gr_svn198_2156"

><td id="2156"><a href="#2156">2156</a></td></tr
><tr id="gr_svn198_2157"

><td id="2157"><a href="#2157">2157</a></td></tr
><tr id="gr_svn198_2158"

><td id="2158"><a href="#2158">2158</a></td></tr
><tr id="gr_svn198_2159"

><td id="2159"><a href="#2159">2159</a></td></tr
><tr id="gr_svn198_2160"

><td id="2160"><a href="#2160">2160</a></td></tr
><tr id="gr_svn198_2161"

><td id="2161"><a href="#2161">2161</a></td></tr
><tr id="gr_svn198_2162"

><td id="2162"><a href="#2162">2162</a></td></tr
><tr id="gr_svn198_2163"

><td id="2163"><a href="#2163">2163</a></td></tr
><tr id="gr_svn198_2164"

><td id="2164"><a href="#2164">2164</a></td></tr
><tr id="gr_svn198_2165"

><td id="2165"><a href="#2165">2165</a></td></tr
><tr id="gr_svn198_2166"

><td id="2166"><a href="#2166">2166</a></td></tr
><tr id="gr_svn198_2167"

><td id="2167"><a href="#2167">2167</a></td></tr
><tr id="gr_svn198_2168"

><td id="2168"><a href="#2168">2168</a></td></tr
><tr id="gr_svn198_2169"

><td id="2169"><a href="#2169">2169</a></td></tr
><tr id="gr_svn198_2170"

><td id="2170"><a href="#2170">2170</a></td></tr
><tr id="gr_svn198_2171"

><td id="2171"><a href="#2171">2171</a></td></tr
><tr id="gr_svn198_2172"

><td id="2172"><a href="#2172">2172</a></td></tr
><tr id="gr_svn198_2173"

><td id="2173"><a href="#2173">2173</a></td></tr
><tr id="gr_svn198_2174"

><td id="2174"><a href="#2174">2174</a></td></tr
><tr id="gr_svn198_2175"

><td id="2175"><a href="#2175">2175</a></td></tr
><tr id="gr_svn198_2176"

><td id="2176"><a href="#2176">2176</a></td></tr
><tr id="gr_svn198_2177"

><td id="2177"><a href="#2177">2177</a></td></tr
><tr id="gr_svn198_2178"

><td id="2178"><a href="#2178">2178</a></td></tr
><tr id="gr_svn198_2179"

><td id="2179"><a href="#2179">2179</a></td></tr
><tr id="gr_svn198_2180"

><td id="2180"><a href="#2180">2180</a></td></tr
><tr id="gr_svn198_2181"

><td id="2181"><a href="#2181">2181</a></td></tr
><tr id="gr_svn198_2182"

><td id="2182"><a href="#2182">2182</a></td></tr
><tr id="gr_svn198_2183"

><td id="2183"><a href="#2183">2183</a></td></tr
><tr id="gr_svn198_2184"

><td id="2184"><a href="#2184">2184</a></td></tr
><tr id="gr_svn198_2185"

><td id="2185"><a href="#2185">2185</a></td></tr
><tr id="gr_svn198_2186"

><td id="2186"><a href="#2186">2186</a></td></tr
><tr id="gr_svn198_2187"

><td id="2187"><a href="#2187">2187</a></td></tr
><tr id="gr_svn198_2188"

><td id="2188"><a href="#2188">2188</a></td></tr
><tr id="gr_svn198_2189"

><td id="2189"><a href="#2189">2189</a></td></tr
><tr id="gr_svn198_2190"

><td id="2190"><a href="#2190">2190</a></td></tr
><tr id="gr_svn198_2191"

><td id="2191"><a href="#2191">2191</a></td></tr
><tr id="gr_svn198_2192"

><td id="2192"><a href="#2192">2192</a></td></tr
><tr id="gr_svn198_2193"

><td id="2193"><a href="#2193">2193</a></td></tr
><tr id="gr_svn198_2194"

><td id="2194"><a href="#2194">2194</a></td></tr
><tr id="gr_svn198_2195"

><td id="2195"><a href="#2195">2195</a></td></tr
><tr id="gr_svn198_2196"

><td id="2196"><a href="#2196">2196</a></td></tr
><tr id="gr_svn198_2197"

><td id="2197"><a href="#2197">2197</a></td></tr
><tr id="gr_svn198_2198"

><td id="2198"><a href="#2198">2198</a></td></tr
><tr id="gr_svn198_2199"

><td id="2199"><a href="#2199">2199</a></td></tr
><tr id="gr_svn198_2200"

><td id="2200"><a href="#2200">2200</a></td></tr
><tr id="gr_svn198_2201"

><td id="2201"><a href="#2201">2201</a></td></tr
><tr id="gr_svn198_2202"

><td id="2202"><a href="#2202">2202</a></td></tr
><tr id="gr_svn198_2203"

><td id="2203"><a href="#2203">2203</a></td></tr
><tr id="gr_svn198_2204"

><td id="2204"><a href="#2204">2204</a></td></tr
><tr id="gr_svn198_2205"

><td id="2205"><a href="#2205">2205</a></td></tr
><tr id="gr_svn198_2206"

><td id="2206"><a href="#2206">2206</a></td></tr
><tr id="gr_svn198_2207"

><td id="2207"><a href="#2207">2207</a></td></tr
><tr id="gr_svn198_2208"

><td id="2208"><a href="#2208">2208</a></td></tr
><tr id="gr_svn198_2209"

><td id="2209"><a href="#2209">2209</a></td></tr
><tr id="gr_svn198_2210"

><td id="2210"><a href="#2210">2210</a></td></tr
><tr id="gr_svn198_2211"

><td id="2211"><a href="#2211">2211</a></td></tr
><tr id="gr_svn198_2212"

><td id="2212"><a href="#2212">2212</a></td></tr
><tr id="gr_svn198_2213"

><td id="2213"><a href="#2213">2213</a></td></tr
><tr id="gr_svn198_2214"

><td id="2214"><a href="#2214">2214</a></td></tr
><tr id="gr_svn198_2215"

><td id="2215"><a href="#2215">2215</a></td></tr
><tr id="gr_svn198_2216"

><td id="2216"><a href="#2216">2216</a></td></tr
><tr id="gr_svn198_2217"

><td id="2217"><a href="#2217">2217</a></td></tr
><tr id="gr_svn198_2218"

><td id="2218"><a href="#2218">2218</a></td></tr
><tr id="gr_svn198_2219"

><td id="2219"><a href="#2219">2219</a></td></tr
><tr id="gr_svn198_2220"

><td id="2220"><a href="#2220">2220</a></td></tr
><tr id="gr_svn198_2221"

><td id="2221"><a href="#2221">2221</a></td></tr
><tr id="gr_svn198_2222"

><td id="2222"><a href="#2222">2222</a></td></tr
><tr id="gr_svn198_2223"

><td id="2223"><a href="#2223">2223</a></td></tr
><tr id="gr_svn198_2224"

><td id="2224"><a href="#2224">2224</a></td></tr
><tr id="gr_svn198_2225"

><td id="2225"><a href="#2225">2225</a></td></tr
><tr id="gr_svn198_2226"

><td id="2226"><a href="#2226">2226</a></td></tr
><tr id="gr_svn198_2227"

><td id="2227"><a href="#2227">2227</a></td></tr
><tr id="gr_svn198_2228"

><td id="2228"><a href="#2228">2228</a></td></tr
><tr id="gr_svn198_2229"

><td id="2229"><a href="#2229">2229</a></td></tr
><tr id="gr_svn198_2230"

><td id="2230"><a href="#2230">2230</a></td></tr
><tr id="gr_svn198_2231"

><td id="2231"><a href="#2231">2231</a></td></tr
><tr id="gr_svn198_2232"

><td id="2232"><a href="#2232">2232</a></td></tr
><tr id="gr_svn198_2233"

><td id="2233"><a href="#2233">2233</a></td></tr
><tr id="gr_svn198_2234"

><td id="2234"><a href="#2234">2234</a></td></tr
><tr id="gr_svn198_2235"

><td id="2235"><a href="#2235">2235</a></td></tr
><tr id="gr_svn198_2236"

><td id="2236"><a href="#2236">2236</a></td></tr
><tr id="gr_svn198_2237"

><td id="2237"><a href="#2237">2237</a></td></tr
><tr id="gr_svn198_2238"

><td id="2238"><a href="#2238">2238</a></td></tr
><tr id="gr_svn198_2239"

><td id="2239"><a href="#2239">2239</a></td></tr
><tr id="gr_svn198_2240"

><td id="2240"><a href="#2240">2240</a></td></tr
><tr id="gr_svn198_2241"

><td id="2241"><a href="#2241">2241</a></td></tr
><tr id="gr_svn198_2242"

><td id="2242"><a href="#2242">2242</a></td></tr
><tr id="gr_svn198_2243"

><td id="2243"><a href="#2243">2243</a></td></tr
><tr id="gr_svn198_2244"

><td id="2244"><a href="#2244">2244</a></td></tr
><tr id="gr_svn198_2245"

><td id="2245"><a href="#2245">2245</a></td></tr
><tr id="gr_svn198_2246"

><td id="2246"><a href="#2246">2246</a></td></tr
><tr id="gr_svn198_2247"

><td id="2247"><a href="#2247">2247</a></td></tr
><tr id="gr_svn198_2248"

><td id="2248"><a href="#2248">2248</a></td></tr
><tr id="gr_svn198_2249"

><td id="2249"><a href="#2249">2249</a></td></tr
><tr id="gr_svn198_2250"

><td id="2250"><a href="#2250">2250</a></td></tr
><tr id="gr_svn198_2251"

><td id="2251"><a href="#2251">2251</a></td></tr
><tr id="gr_svn198_2252"

><td id="2252"><a href="#2252">2252</a></td></tr
><tr id="gr_svn198_2253"

><td id="2253"><a href="#2253">2253</a></td></tr
><tr id="gr_svn198_2254"

><td id="2254"><a href="#2254">2254</a></td></tr
><tr id="gr_svn198_2255"

><td id="2255"><a href="#2255">2255</a></td></tr
><tr id="gr_svn198_2256"

><td id="2256"><a href="#2256">2256</a></td></tr
><tr id="gr_svn198_2257"

><td id="2257"><a href="#2257">2257</a></td></tr
><tr id="gr_svn198_2258"

><td id="2258"><a href="#2258">2258</a></td></tr
><tr id="gr_svn198_2259"

><td id="2259"><a href="#2259">2259</a></td></tr
><tr id="gr_svn198_2260"

><td id="2260"><a href="#2260">2260</a></td></tr
><tr id="gr_svn198_2261"

><td id="2261"><a href="#2261">2261</a></td></tr
><tr id="gr_svn198_2262"

><td id="2262"><a href="#2262">2262</a></td></tr
><tr id="gr_svn198_2263"

><td id="2263"><a href="#2263">2263</a></td></tr
><tr id="gr_svn198_2264"

><td id="2264"><a href="#2264">2264</a></td></tr
><tr id="gr_svn198_2265"

><td id="2265"><a href="#2265">2265</a></td></tr
><tr id="gr_svn198_2266"

><td id="2266"><a href="#2266">2266</a></td></tr
><tr id="gr_svn198_2267"

><td id="2267"><a href="#2267">2267</a></td></tr
><tr id="gr_svn198_2268"

><td id="2268"><a href="#2268">2268</a></td></tr
><tr id="gr_svn198_2269"

><td id="2269"><a href="#2269">2269</a></td></tr
><tr id="gr_svn198_2270"

><td id="2270"><a href="#2270">2270</a></td></tr
><tr id="gr_svn198_2271"

><td id="2271"><a href="#2271">2271</a></td></tr
><tr id="gr_svn198_2272"

><td id="2272"><a href="#2272">2272</a></td></tr
><tr id="gr_svn198_2273"

><td id="2273"><a href="#2273">2273</a></td></tr
><tr id="gr_svn198_2274"

><td id="2274"><a href="#2274">2274</a></td></tr
><tr id="gr_svn198_2275"

><td id="2275"><a href="#2275">2275</a></td></tr
><tr id="gr_svn198_2276"

><td id="2276"><a href="#2276">2276</a></td></tr
><tr id="gr_svn198_2277"

><td id="2277"><a href="#2277">2277</a></td></tr
><tr id="gr_svn198_2278"

><td id="2278"><a href="#2278">2278</a></td></tr
><tr id="gr_svn198_2279"

><td id="2279"><a href="#2279">2279</a></td></tr
><tr id="gr_svn198_2280"

><td id="2280"><a href="#2280">2280</a></td></tr
><tr id="gr_svn198_2281"

><td id="2281"><a href="#2281">2281</a></td></tr
><tr id="gr_svn198_2282"

><td id="2282"><a href="#2282">2282</a></td></tr
><tr id="gr_svn198_2283"

><td id="2283"><a href="#2283">2283</a></td></tr
><tr id="gr_svn198_2284"

><td id="2284"><a href="#2284">2284</a></td></tr
><tr id="gr_svn198_2285"

><td id="2285"><a href="#2285">2285</a></td></tr
><tr id="gr_svn198_2286"

><td id="2286"><a href="#2286">2286</a></td></tr
><tr id="gr_svn198_2287"

><td id="2287"><a href="#2287">2287</a></td></tr
><tr id="gr_svn198_2288"

><td id="2288"><a href="#2288">2288</a></td></tr
><tr id="gr_svn198_2289"

><td id="2289"><a href="#2289">2289</a></td></tr
><tr id="gr_svn198_2290"

><td id="2290"><a href="#2290">2290</a></td></tr
><tr id="gr_svn198_2291"

><td id="2291"><a href="#2291">2291</a></td></tr
><tr id="gr_svn198_2292"

><td id="2292"><a href="#2292">2292</a></td></tr
><tr id="gr_svn198_2293"

><td id="2293"><a href="#2293">2293</a></td></tr
><tr id="gr_svn198_2294"

><td id="2294"><a href="#2294">2294</a></td></tr
><tr id="gr_svn198_2295"

><td id="2295"><a href="#2295">2295</a></td></tr
><tr id="gr_svn198_2296"

><td id="2296"><a href="#2296">2296</a></td></tr
><tr id="gr_svn198_2297"

><td id="2297"><a href="#2297">2297</a></td></tr
><tr id="gr_svn198_2298"

><td id="2298"><a href="#2298">2298</a></td></tr
><tr id="gr_svn198_2299"

><td id="2299"><a href="#2299">2299</a></td></tr
><tr id="gr_svn198_2300"

><td id="2300"><a href="#2300">2300</a></td></tr
><tr id="gr_svn198_2301"

><td id="2301"><a href="#2301">2301</a></td></tr
><tr id="gr_svn198_2302"

><td id="2302"><a href="#2302">2302</a></td></tr
><tr id="gr_svn198_2303"

><td id="2303"><a href="#2303">2303</a></td></tr
><tr id="gr_svn198_2304"

><td id="2304"><a href="#2304">2304</a></td></tr
><tr id="gr_svn198_2305"

><td id="2305"><a href="#2305">2305</a></td></tr
><tr id="gr_svn198_2306"

><td id="2306"><a href="#2306">2306</a></td></tr
><tr id="gr_svn198_2307"

><td id="2307"><a href="#2307">2307</a></td></tr
><tr id="gr_svn198_2308"

><td id="2308"><a href="#2308">2308</a></td></tr
><tr id="gr_svn198_2309"

><td id="2309"><a href="#2309">2309</a></td></tr
><tr id="gr_svn198_2310"

><td id="2310"><a href="#2310">2310</a></td></tr
><tr id="gr_svn198_2311"

><td id="2311"><a href="#2311">2311</a></td></tr
><tr id="gr_svn198_2312"

><td id="2312"><a href="#2312">2312</a></td></tr
><tr id="gr_svn198_2313"

><td id="2313"><a href="#2313">2313</a></td></tr
><tr id="gr_svn198_2314"

><td id="2314"><a href="#2314">2314</a></td></tr
><tr id="gr_svn198_2315"

><td id="2315"><a href="#2315">2315</a></td></tr
><tr id="gr_svn198_2316"

><td id="2316"><a href="#2316">2316</a></td></tr
><tr id="gr_svn198_2317"

><td id="2317"><a href="#2317">2317</a></td></tr
><tr id="gr_svn198_2318"

><td id="2318"><a href="#2318">2318</a></td></tr
><tr id="gr_svn198_2319"

><td id="2319"><a href="#2319">2319</a></td></tr
><tr id="gr_svn198_2320"

><td id="2320"><a href="#2320">2320</a></td></tr
><tr id="gr_svn198_2321"

><td id="2321"><a href="#2321">2321</a></td></tr
><tr id="gr_svn198_2322"

><td id="2322"><a href="#2322">2322</a></td></tr
><tr id="gr_svn198_2323"

><td id="2323"><a href="#2323">2323</a></td></tr
><tr id="gr_svn198_2324"

><td id="2324"><a href="#2324">2324</a></td></tr
><tr id="gr_svn198_2325"

><td id="2325"><a href="#2325">2325</a></td></tr
><tr id="gr_svn198_2326"

><td id="2326"><a href="#2326">2326</a></td></tr
><tr id="gr_svn198_2327"

><td id="2327"><a href="#2327">2327</a></td></tr
><tr id="gr_svn198_2328"

><td id="2328"><a href="#2328">2328</a></td></tr
><tr id="gr_svn198_2329"

><td id="2329"><a href="#2329">2329</a></td></tr
><tr id="gr_svn198_2330"

><td id="2330"><a href="#2330">2330</a></td></tr
><tr id="gr_svn198_2331"

><td id="2331"><a href="#2331">2331</a></td></tr
><tr id="gr_svn198_2332"

><td id="2332"><a href="#2332">2332</a></td></tr
><tr id="gr_svn198_2333"

><td id="2333"><a href="#2333">2333</a></td></tr
><tr id="gr_svn198_2334"

><td id="2334"><a href="#2334">2334</a></td></tr
><tr id="gr_svn198_2335"

><td id="2335"><a href="#2335">2335</a></td></tr
><tr id="gr_svn198_2336"

><td id="2336"><a href="#2336">2336</a></td></tr
><tr id="gr_svn198_2337"

><td id="2337"><a href="#2337">2337</a></td></tr
><tr id="gr_svn198_2338"

><td id="2338"><a href="#2338">2338</a></td></tr
><tr id="gr_svn198_2339"

><td id="2339"><a href="#2339">2339</a></td></tr
><tr id="gr_svn198_2340"

><td id="2340"><a href="#2340">2340</a></td></tr
><tr id="gr_svn198_2341"

><td id="2341"><a href="#2341">2341</a></td></tr
><tr id="gr_svn198_2342"

><td id="2342"><a href="#2342">2342</a></td></tr
><tr id="gr_svn198_2343"

><td id="2343"><a href="#2343">2343</a></td></tr
><tr id="gr_svn198_2344"

><td id="2344"><a href="#2344">2344</a></td></tr
><tr id="gr_svn198_2345"

><td id="2345"><a href="#2345">2345</a></td></tr
><tr id="gr_svn198_2346"

><td id="2346"><a href="#2346">2346</a></td></tr
><tr id="gr_svn198_2347"

><td id="2347"><a href="#2347">2347</a></td></tr
><tr id="gr_svn198_2348"

><td id="2348"><a href="#2348">2348</a></td></tr
><tr id="gr_svn198_2349"

><td id="2349"><a href="#2349">2349</a></td></tr
><tr id="gr_svn198_2350"

><td id="2350"><a href="#2350">2350</a></td></tr
><tr id="gr_svn198_2351"

><td id="2351"><a href="#2351">2351</a></td></tr
><tr id="gr_svn198_2352"

><td id="2352"><a href="#2352">2352</a></td></tr
><tr id="gr_svn198_2353"

><td id="2353"><a href="#2353">2353</a></td></tr
><tr id="gr_svn198_2354"

><td id="2354"><a href="#2354">2354</a></td></tr
><tr id="gr_svn198_2355"

><td id="2355"><a href="#2355">2355</a></td></tr
><tr id="gr_svn198_2356"

><td id="2356"><a href="#2356">2356</a></td></tr
><tr id="gr_svn198_2357"

><td id="2357"><a href="#2357">2357</a></td></tr
><tr id="gr_svn198_2358"

><td id="2358"><a href="#2358">2358</a></td></tr
><tr id="gr_svn198_2359"

><td id="2359"><a href="#2359">2359</a></td></tr
><tr id="gr_svn198_2360"

><td id="2360"><a href="#2360">2360</a></td></tr
><tr id="gr_svn198_2361"

><td id="2361"><a href="#2361">2361</a></td></tr
><tr id="gr_svn198_2362"

><td id="2362"><a href="#2362">2362</a></td></tr
><tr id="gr_svn198_2363"

><td id="2363"><a href="#2363">2363</a></td></tr
><tr id="gr_svn198_2364"

><td id="2364"><a href="#2364">2364</a></td></tr
><tr id="gr_svn198_2365"

><td id="2365"><a href="#2365">2365</a></td></tr
><tr id="gr_svn198_2366"

><td id="2366"><a href="#2366">2366</a></td></tr
><tr id="gr_svn198_2367"

><td id="2367"><a href="#2367">2367</a></td></tr
><tr id="gr_svn198_2368"

><td id="2368"><a href="#2368">2368</a></td></tr
><tr id="gr_svn198_2369"

><td id="2369"><a href="#2369">2369</a></td></tr
><tr id="gr_svn198_2370"

><td id="2370"><a href="#2370">2370</a></td></tr
><tr id="gr_svn198_2371"

><td id="2371"><a href="#2371">2371</a></td></tr
><tr id="gr_svn198_2372"

><td id="2372"><a href="#2372">2372</a></td></tr
><tr id="gr_svn198_2373"

><td id="2373"><a href="#2373">2373</a></td></tr
><tr id="gr_svn198_2374"

><td id="2374"><a href="#2374">2374</a></td></tr
><tr id="gr_svn198_2375"

><td id="2375"><a href="#2375">2375</a></td></tr
><tr id="gr_svn198_2376"

><td id="2376"><a href="#2376">2376</a></td></tr
><tr id="gr_svn198_2377"

><td id="2377"><a href="#2377">2377</a></td></tr
><tr id="gr_svn198_2378"

><td id="2378"><a href="#2378">2378</a></td></tr
><tr id="gr_svn198_2379"

><td id="2379"><a href="#2379">2379</a></td></tr
><tr id="gr_svn198_2380"

><td id="2380"><a href="#2380">2380</a></td></tr
><tr id="gr_svn198_2381"

><td id="2381"><a href="#2381">2381</a></td></tr
><tr id="gr_svn198_2382"

><td id="2382"><a href="#2382">2382</a></td></tr
><tr id="gr_svn198_2383"

><td id="2383"><a href="#2383">2383</a></td></tr
><tr id="gr_svn198_2384"

><td id="2384"><a href="#2384">2384</a></td></tr
><tr id="gr_svn198_2385"

><td id="2385"><a href="#2385">2385</a></td></tr
><tr id="gr_svn198_2386"

><td id="2386"><a href="#2386">2386</a></td></tr
><tr id="gr_svn198_2387"

><td id="2387"><a href="#2387">2387</a></td></tr
><tr id="gr_svn198_2388"

><td id="2388"><a href="#2388">2388</a></td></tr
><tr id="gr_svn198_2389"

><td id="2389"><a href="#2389">2389</a></td></tr
><tr id="gr_svn198_2390"

><td id="2390"><a href="#2390">2390</a></td></tr
><tr id="gr_svn198_2391"

><td id="2391"><a href="#2391">2391</a></td></tr
><tr id="gr_svn198_2392"

><td id="2392"><a href="#2392">2392</a></td></tr
><tr id="gr_svn198_2393"

><td id="2393"><a href="#2393">2393</a></td></tr
><tr id="gr_svn198_2394"

><td id="2394"><a href="#2394">2394</a></td></tr
><tr id="gr_svn198_2395"

><td id="2395"><a href="#2395">2395</a></td></tr
><tr id="gr_svn198_2396"

><td id="2396"><a href="#2396">2396</a></td></tr
><tr id="gr_svn198_2397"

><td id="2397"><a href="#2397">2397</a></td></tr
><tr id="gr_svn198_2398"

><td id="2398"><a href="#2398">2398</a></td></tr
><tr id="gr_svn198_2399"

><td id="2399"><a href="#2399">2399</a></td></tr
><tr id="gr_svn198_2400"

><td id="2400"><a href="#2400">2400</a></td></tr
><tr id="gr_svn198_2401"

><td id="2401"><a href="#2401">2401</a></td></tr
><tr id="gr_svn198_2402"

><td id="2402"><a href="#2402">2402</a></td></tr
><tr id="gr_svn198_2403"

><td id="2403"><a href="#2403">2403</a></td></tr
><tr id="gr_svn198_2404"

><td id="2404"><a href="#2404">2404</a></td></tr
><tr id="gr_svn198_2405"

><td id="2405"><a href="#2405">2405</a></td></tr
><tr id="gr_svn198_2406"

><td id="2406"><a href="#2406">2406</a></td></tr
><tr id="gr_svn198_2407"

><td id="2407"><a href="#2407">2407</a></td></tr
><tr id="gr_svn198_2408"

><td id="2408"><a href="#2408">2408</a></td></tr
><tr id="gr_svn198_2409"

><td id="2409"><a href="#2409">2409</a></td></tr
><tr id="gr_svn198_2410"

><td id="2410"><a href="#2410">2410</a></td></tr
><tr id="gr_svn198_2411"

><td id="2411"><a href="#2411">2411</a></td></tr
><tr id="gr_svn198_2412"

><td id="2412"><a href="#2412">2412</a></td></tr
><tr id="gr_svn198_2413"

><td id="2413"><a href="#2413">2413</a></td></tr
><tr id="gr_svn198_2414"

><td id="2414"><a href="#2414">2414</a></td></tr
><tr id="gr_svn198_2415"

><td id="2415"><a href="#2415">2415</a></td></tr
><tr id="gr_svn198_2416"

><td id="2416"><a href="#2416">2416</a></td></tr
><tr id="gr_svn198_2417"

><td id="2417"><a href="#2417">2417</a></td></tr
><tr id="gr_svn198_2418"

><td id="2418"><a href="#2418">2418</a></td></tr
><tr id="gr_svn198_2419"

><td id="2419"><a href="#2419">2419</a></td></tr
><tr id="gr_svn198_2420"

><td id="2420"><a href="#2420">2420</a></td></tr
><tr id="gr_svn198_2421"

><td id="2421"><a href="#2421">2421</a></td></tr
><tr id="gr_svn198_2422"

><td id="2422"><a href="#2422">2422</a></td></tr
><tr id="gr_svn198_2423"

><td id="2423"><a href="#2423">2423</a></td></tr
><tr id="gr_svn198_2424"

><td id="2424"><a href="#2424">2424</a></td></tr
><tr id="gr_svn198_2425"

><td id="2425"><a href="#2425">2425</a></td></tr
><tr id="gr_svn198_2426"

><td id="2426"><a href="#2426">2426</a></td></tr
><tr id="gr_svn198_2427"

><td id="2427"><a href="#2427">2427</a></td></tr
><tr id="gr_svn198_2428"

><td id="2428"><a href="#2428">2428</a></td></tr
><tr id="gr_svn198_2429"

><td id="2429"><a href="#2429">2429</a></td></tr
><tr id="gr_svn198_2430"

><td id="2430"><a href="#2430">2430</a></td></tr
><tr id="gr_svn198_2431"

><td id="2431"><a href="#2431">2431</a></td></tr
><tr id="gr_svn198_2432"

><td id="2432"><a href="#2432">2432</a></td></tr
><tr id="gr_svn198_2433"

><td id="2433"><a href="#2433">2433</a></td></tr
><tr id="gr_svn198_2434"

><td id="2434"><a href="#2434">2434</a></td></tr
><tr id="gr_svn198_2435"

><td id="2435"><a href="#2435">2435</a></td></tr
><tr id="gr_svn198_2436"

><td id="2436"><a href="#2436">2436</a></td></tr
><tr id="gr_svn198_2437"

><td id="2437"><a href="#2437">2437</a></td></tr
><tr id="gr_svn198_2438"

><td id="2438"><a href="#2438">2438</a></td></tr
></table></pre>
<pre><table width="100%"><tr class="nocursor"><td></td></tr></table></pre>
</td>
<td id="lines">
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
<pre class="prettyprint lang-el"><table id="src_table_0"><tr
id=sl_svn198_1

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_2

><td class="source">;;  Copyright 2011 Yusuke KAWAKAMI, Akihiro ARISAWA<br></td></tr
><tr
id=sl_svn198_3

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_4

><td class="source">;;   Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);<br></td></tr
><tr
id=sl_svn198_5

><td class="source">;;   you may not use this file except in compliance with the License.<br></td></tr
><tr
id=sl_svn198_6

><td class="source">;;   You may obtain a copy of the License at<br></td></tr
><tr
id=sl_svn198_7

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_8

><td class="source">;;       http://www.apache.org/licenses/LICENSE-2.0<br></td></tr
><tr
id=sl_svn198_9

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_10

><td class="source">;;   Unless required by applicable law or agreed to in writing, software<br></td></tr
><tr
id=sl_svn198_11

><td class="source">;;   distributed under the License is distributed on an &quot;AS IS&quot; BASIS,<br></td></tr
><tr
id=sl_svn198_12

><td class="source">;;   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.<br></td></tr
><tr
id=sl_svn198_13

><td class="source">;;   See the License for the specific language governing permissions and<br></td></tr
><tr
id=sl_svn198_14

><td class="source">;;   limitations under the License.<br></td></tr
><tr
id=sl_svn198_15

><td class="source"><br></td></tr
><tr
id=sl_svn198_16

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_17

><td class="source">;; evernote-mode home page is at: http://code.google.com/p/emacs-evernote-mode/<br></td></tr
><tr
id=sl_svn198_18

><td class="source">;; Author: Yusuke KAWAKAMI, Akihiro ARISAWA<br></td></tr
><tr
id=sl_svn198_19

><td class="source">;; Version: 0.41<br></td></tr
><tr
id=sl_svn198_20

><td class="source">;; Keywords: tools, emacs, evernote, bookmark<br></td></tr
><tr
id=sl_svn198_21

><td class="source"><br></td></tr
><tr
id=sl_svn198_22

><td class="source">;; This emacs lisp offers the interactive functions to open, edit, and update notes of Evernote.<br></td></tr
><tr
id=sl_svn198_23

><td class="source">;; The minor mode Evernote-mode is applied to the buffer editing a note of Evernote.<br></td></tr
><tr
id=sl_svn198_24

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_25

><td class="source">;; Please copy this file into emacs lisp library directory or place it in<br></td></tr
><tr
id=sl_svn198_26

><td class="source">;; a directory (for example &quot;~/lisp&quot;) and write $HOME/.emacs like this.<br></td></tr
><tr
id=sl_svn198_27

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_28

><td class="source">;;      (add-to-list &#39;load-path &quot;~/lisp&quot;)<br></td></tr
><tr
id=sl_svn198_29

><td class="source">;;      (require &#39;evernote-mode)<br></td></tr
><tr
id=sl_svn198_30

><td class="source">;;      (setq evernote-enml-formatter-command &#39;(&quot;w3m&quot; &quot;-dump&quot; &quot;-I&quot; &quot;UTF8&quot; &quot;-O&quot; &quot;UTF8&quot;))<br></td></tr
><tr
id=sl_svn198_31

><td class="source">;;      (global-set-key &quot;\C-cec&quot; &#39;evernote-create-note)<br></td></tr
><tr
id=sl_svn198_32

><td class="source">;;      (global-set-key &quot;\C-ceo&quot; &#39;evernote-open-note)<br></td></tr
><tr
id=sl_svn198_33

><td class="source">;;      (global-set-key &quot;\C-ces&quot; &#39;evernote-search-notes)<br></td></tr
><tr
id=sl_svn198_34

><td class="source">;;      (global-set-key &quot;\C-ceS&quot; &#39;evernote-do-saved-search)<br></td></tr
><tr
id=sl_svn198_35

><td class="source">;;      (global-set-key &quot;\C-cew&quot; &#39;evernote-write-note)<br></td></tr
><tr
id=sl_svn198_36

><td class="source">;;      (global-set-key &quot;\C-cep&quot; &#39;evernote-post-region)<br></td></tr
><tr
id=sl_svn198_37

><td class="source">;;      (global-set-key &quot;\C-ceb&quot; &#39;evernote-browser)<br></td></tr
><tr
id=sl_svn198_38

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_39

><td class="source">;; There is one hooks, evernotes-mode-hook.<br></td></tr
><tr
id=sl_svn198_40

><td class="source">;; The usage of the hook is shown as follows.<br></td></tr
><tr
id=sl_svn198_41

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_42

><td class="source">;; (setq evernote-mode-hook<br></td></tr
><tr
id=sl_svn198_43

><td class="source">;;   &#39;(lambda ()<br></td></tr
><tr
id=sl_svn198_44

><td class="source">;;      (...)))<br></td></tr
><tr
id=sl_svn198_45

><td class="source"><br></td></tr
><tr
id=sl_svn198_46

><td class="source">;;; Code<br></td></tr
><tr
id=sl_svn198_47

><td class="source"><br></td></tr
><tr
id=sl_svn198_48

><td class="source">(require &#39;tree-widget)<br></td></tr
><tr
id=sl_svn198_49

><td class="source"><br></td></tr
><tr
id=sl_svn198_50

><td class="source">(defun enh-bookmark-supported ()<br></td></tr
><tr
id=sl_svn198_51

><td class="source">  (or (&gt; emacs-major-version 23)<br></td></tr
><tr
id=sl_svn198_52

><td class="source">      (and (= emacs-major-version 23)<br></td></tr
><tr
id=sl_svn198_53

><td class="source">           (&gt;= emacs-minor-version 1))))<br></td></tr
><tr
id=sl_svn198_54

><td class="source"><br></td></tr
><tr
id=sl_svn198_55

><td class="source">(when (enh-bookmark-supported)<br></td></tr
><tr
id=sl_svn198_56

><td class="source">  (declare-function bookmark-default-handler &quot;bookmark&quot; (bmk-record))<br></td></tr
><tr
id=sl_svn198_57

><td class="source">  (declare-function bookmark-get-bookmark-record &quot;bookmark&quot; (bookmark))<br></td></tr
><tr
id=sl_svn198_58

><td class="source">  (declare-function bookmark-make-record-default<br></td></tr
><tr
id=sl_svn198_59

><td class="source">                    &quot;bookmark&quot; (&amp;optional no-file no-context posn))<br></td></tr
><tr
id=sl_svn198_60

><td class="source">  (declare-function bookmark-name-from-full-record<br></td></tr
><tr
id=sl_svn198_61

><td class="source">                    &quot;bookmark&quot; (full-record)))<br></td></tr
><tr
id=sl_svn198_62

><td class="source"><br></td></tr
><tr
id=sl_svn198_63

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_64

><td class="source">;; Macros<br></td></tr
><tr
id=sl_svn198_65

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_66

><td class="source"><br></td></tr
><tr
id=sl_svn198_67

><td class="source"><br></td></tr
><tr
id=sl_svn198_68

><td class="source">(defmacro enh-command-with-auth (&amp;rest body)<br></td></tr
><tr
id=sl_svn198_69

><td class="source">  `(let (error-code<br></td></tr
><tr
id=sl_svn198_70

><td class="source">         (try-func (lambda () ,@body)))<br></td></tr
><tr
id=sl_svn198_71

><td class="source">     (setq error-code<br></td></tr
><tr
id=sl_svn198_72

><td class="source">           (catch &#39;error<br></td></tr
><tr
id=sl_svn198_73

><td class="source">             (progn<br></td></tr
><tr
id=sl_svn198_74

><td class="source">               (funcall try-func)<br></td></tr
><tr
id=sl_svn198_75

><td class="source">               t)))<br></td></tr
><tr
id=sl_svn198_76

><td class="source">     (cond<br></td></tr
><tr
id=sl_svn198_77

><td class="source">      ((eq error-code t)<br></td></tr
><tr
id=sl_svn198_78

><td class="source">       t)<br></td></tr
><tr
id=sl_svn198_79

><td class="source">      ((or (eq error-code enh-command-error-not-authed)<br></td></tr
><tr
id=sl_svn198_80

><td class="source">           (eq error-code enh-command-error-invalid-auth)<br></td></tr
><tr
id=sl_svn198_81

><td class="source">           (eq error-code enh-command-error-auth-expired))<br></td></tr
><tr
id=sl_svn198_82

><td class="source">       (let ((error-code<br></td></tr
><tr
id=sl_svn198_83

><td class="source">              (catch &#39;error<br></td></tr
><tr
id=sl_svn198_84

><td class="source">                (progn<br></td></tr
><tr
id=sl_svn198_85

><td class="source">                  (evernote-login)<br></td></tr
><tr
id=sl_svn198_86

><td class="source">                  t))))<br></td></tr
><tr
id=sl_svn198_87

><td class="source">         (if (eq error-code t)<br></td></tr
><tr
id=sl_svn198_88

><td class="source">             (progn<br></td></tr
><tr
id=sl_svn198_89

><td class="source">               (let (error-code)<br></td></tr
><tr
id=sl_svn198_90

><td class="source">                 (setq error-code<br></td></tr
><tr
id=sl_svn198_91

><td class="source">                       (catch &#39;error<br></td></tr
><tr
id=sl_svn198_92

><td class="source">                         (progn<br></td></tr
><tr
id=sl_svn198_93

><td class="source">                           (funcall try-func)<br></td></tr
><tr
id=sl_svn198_94

><td class="source">                           t)))<br></td></tr
><tr
id=sl_svn198_95

><td class="source">                 (unless (eq error-code t)<br></td></tr
><tr
id=sl_svn198_96

><td class="source">                   (message enh-command-last-error-message))))<br></td></tr
><tr
id=sl_svn198_97

><td class="source">           (message enh-command-last-error-message))))<br></td></tr
><tr
id=sl_svn198_98

><td class="source">      (t<br></td></tr
><tr
id=sl_svn198_99

><td class="source">       (message enh-command-last-error-message)))))<br></td></tr
><tr
id=sl_svn198_100

><td class="source"><br></td></tr
><tr
id=sl_svn198_101

><td class="source"><br></td></tr
><tr
id=sl_svn198_102

><td class="source">(defmacro enh-base-create-note-interactive (ask-notebook)<br></td></tr
><tr
id=sl_svn198_103

><td class="source">  &quot;Common interactive procecure of creating a note&quot;<br></td></tr
><tr
id=sl_svn198_104

><td class="source">  `(progn<br></td></tr
><tr
id=sl_svn198_105

><td class="source">     (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_106

><td class="source">     (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_107

><td class="source">      (switch-to-buffer (enh-base-create-note-common &quot;&quot; ,ask-notebook t t nil)))))<br></td></tr
><tr
id=sl_svn198_108

><td class="source"><br></td></tr
><tr
id=sl_svn198_109

><td class="source"><br></td></tr
><tr
id=sl_svn198_110

><td class="source">(defmacro enh-base-write-note-interactive (ask-notebook)<br></td></tr
><tr
id=sl_svn198_111

><td class="source">  &quot;Common interactive procecure of writing a note&quot;<br></td></tr
><tr
id=sl_svn198_112

><td class="source">  `(progn<br></td></tr
><tr
id=sl_svn198_113

><td class="source">     (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_114

><td class="source">     (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_115

><td class="source">      (enh-base-create-note-common (buffer-name) ,ask-notebook ,nil t t))))<br></td></tr
><tr
id=sl_svn198_116

><td class="source"><br></td></tr
><tr
id=sl_svn198_117

><td class="source"><br></td></tr
><tr
id=sl_svn198_118

><td class="source">(defmacro enh-base-post-region-interactive (begin end arg ask-notebook)<br></td></tr
><tr
id=sl_svn198_119

><td class="source">  &quot;Common interactive procedure of posting a note&quot;<br></td></tr
><tr
id=sl_svn198_120

><td class="source">  `(progn<br></td></tr
><tr
id=sl_svn198_121

><td class="source">     (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_122

><td class="source">     (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_123

><td class="source">      (save-excursion<br></td></tr
><tr
id=sl_svn198_124

><td class="source">        (save-restriction<br></td></tr
><tr
id=sl_svn198_125

><td class="source">          (narrow-to-region ,begin ,end)<br></td></tr
><tr
id=sl_svn198_126

><td class="source">          (if (and (enutil-neq ,arg nil) (enutil-neq ,arg 1))<br></td></tr
><tr
id=sl_svn198_127

><td class="source">              (pop-to-buffer (enh-base-create-note-common (buffer-name) ,ask-notebook t t t))<br></td></tr
><tr
id=sl_svn198_128

><td class="source">            (enh-base-create-note-common (buffer-name) ,ask-notebook nil nil t)))))))<br></td></tr
><tr
id=sl_svn198_129

><td class="source"><br></td></tr
><tr
id=sl_svn198_130

><td class="source">(defmacro enutil-neq (&amp;rest exprs)<br></td></tr
><tr
id=sl_svn198_131

><td class="source">  `(not (eq ,@exprs)))<br></td></tr
><tr
id=sl_svn198_132

><td class="source"><br></td></tr
><tr
id=sl_svn198_133

><td class="source"><br></td></tr
><tr
id=sl_svn198_134

><td class="source">(defmacro enutil-nequal (&amp;rest exprs)<br></td></tr
><tr
id=sl_svn198_135

><td class="source">  `(not (equal ,@exprs)))<br></td></tr
><tr
id=sl_svn198_136

><td class="source"><br></td></tr
><tr
id=sl_svn198_137

><td class="source"><br></td></tr
><tr
id=sl_svn198_138

><td class="source">(defmacro enutil-push (elem list)<br></td></tr
><tr
id=sl_svn198_139

><td class="source">  `(setq ,list (cons ,elem ,list)))<br></td></tr
><tr
id=sl_svn198_140

><td class="source"><br></td></tr
><tr
id=sl_svn198_141

><td class="source"><br></td></tr
><tr
id=sl_svn198_142

><td class="source">(defmacro enutil-pop (list)<br></td></tr
><tr
id=sl_svn198_143

><td class="source">  `(prog1<br></td></tr
><tr
id=sl_svn198_144

><td class="source">       (car ,list)<br></td></tr
><tr
id=sl_svn198_145

><td class="source">     (setq ,list (cdr ,list))))<br></td></tr
><tr
id=sl_svn198_146

><td class="source"><br></td></tr
><tr
id=sl_svn198_147

><td class="source"><br></td></tr
><tr
id=sl_svn198_148

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_149

><td class="source">;; User options<br></td></tr
><tr
id=sl_svn198_150

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_151

><td class="source"><br></td></tr
><tr
id=sl_svn198_152

><td class="source">(defvar evernote-username nil<br></td></tr
><tr
id=sl_svn198_153

><td class="source">  &quot;*An username of your evernote&quot;)<br></td></tr
><tr
id=sl_svn198_154

><td class="source"><br></td></tr
><tr
id=sl_svn198_155

><td class="source">(defvar evernote-enml-formatter-command nil<br></td></tr
><tr
id=sl_svn198_156

><td class="source">  &quot;*Formatter for xhtml&quot;)<br></td></tr
><tr
id=sl_svn198_157

><td class="source"><br></td></tr
><tr
id=sl_svn198_158

><td class="source">(defvar evernote-ruby-command &quot;ruby&quot;<br></td></tr
><tr
id=sl_svn198_159

><td class="source">  &quot;*Path of the ruby command&quot;)<br></td></tr
><tr
id=sl_svn198_160

><td class="source"><br></td></tr
><tr
id=sl_svn198_161

><td class="source">(defvar evernote-password-cache nil<br></td></tr
><tr
id=sl_svn198_162

><td class="source">  &quot;*Non-nil means that password cache is enabled.<br></td></tr
><tr
id=sl_svn198_163

><td class="source">It is recommended to encrypt the file with EasyPG.&quot;)<br></td></tr
><tr
id=sl_svn198_164

><td class="source"><br></td></tr
><tr
id=sl_svn198_165

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_166

><td class="source">;; Interface for evernote-browsing-mode.<br></td></tr
><tr
id=sl_svn198_167

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_168

><td class="source"><br></td></tr
><tr
id=sl_svn198_169

><td class="source"><br></td></tr
><tr
id=sl_svn198_170

><td class="source">(defvar evernote-browsing-page-list nil<br></td></tr
><tr
id=sl_svn198_171

><td class="source">  &quot;Buffer list of evernote browsing mode.&quot;)<br></td></tr
><tr
id=sl_svn198_172

><td class="source"><br></td></tr
><tr
id=sl_svn198_173

><td class="source">(defvar evernote-browsing-current-page nil<br></td></tr
><tr
id=sl_svn198_174

><td class="source">  &quot;Current buffer of evernote browsing mode.&quot;)<br></td></tr
><tr
id=sl_svn198_175

><td class="source"><br></td></tr
><tr
id=sl_svn198_176

><td class="source"><br></td></tr
><tr
id=sl_svn198_177

><td class="source">(defvar evernote-browsing-mode-map<br></td></tr
><tr
id=sl_svn198_178

><td class="source">  (let ((map (make-sparse-keymap)))<br></td></tr
><tr
id=sl_svn198_179

><td class="source">    (set-keymap-parent map widget-keymap)<br></td></tr
><tr
id=sl_svn198_180

><td class="source">    map)<br></td></tr
><tr
id=sl_svn198_181

><td class="source">  &quot;Keymap used in evernote browsing mode.&quot;)<br></td></tr
><tr
id=sl_svn198_182

><td class="source">(define-key evernote-browsing-mode-map &quot;o&quot;    &#39;widget-button-press)<br></td></tr
><tr
id=sl_svn198_183

><td class="source">(define-key evernote-browsing-mode-map &quot;n&quot;    &#39;evernote-browsing-open-next-note)<br></td></tr
><tr
id=sl_svn198_184

><td class="source">(define-key evernote-browsing-mode-map &quot;p&quot;    &#39;evernote-browsing-open-previous-note)<br></td></tr
><tr
id=sl_svn198_185

><td class="source">(define-key evernote-browsing-mode-map &quot;N&quot;    &#39;evernote-browsing-list-notebooks)<br></td></tr
><tr
id=sl_svn198_186

><td class="source">(define-key evernote-browsing-mode-map &quot;t&quot;    &#39;evernote-browsing-list-tags)<br></td></tr
><tr
id=sl_svn198_187

><td class="source">(define-key evernote-browsing-mode-map &quot;S&quot;    &#39;evernote-browsing-list-searches)<br></td></tr
><tr
id=sl_svn198_188

><td class="source">(define-key evernote-browsing-mode-map &quot;s&quot;    &#39;evernote-browsing-search-notes)<br></td></tr
><tr
id=sl_svn198_189

><td class="source">(define-key evernote-browsing-mode-map &quot;b&quot;    &#39;evernote-browsing-prev-page)<br></td></tr
><tr
id=sl_svn198_190

><td class="source">(define-key evernote-browsing-mode-map &quot;f&quot;    &#39;evernote-browsing-next-page)<br></td></tr
><tr
id=sl_svn198_191

><td class="source">(define-key evernote-browsing-mode-map &quot;d&quot;    &#39;evernote-browsing-delete-page)<br></td></tr
><tr
id=sl_svn198_192

><td class="source">(define-key evernote-browsing-mode-map &quot;l&quot;    &#39;evernote-browsing-reflesh)<br></td></tr
><tr
id=sl_svn198_193

><td class="source">;(define-key evernote-browsing-mode-map &quot;e&quot;    &#39;evernote-browsing-change-edit-mode)<br></td></tr
><tr
id=sl_svn198_194

><td class="source">;(define-key evernote-browsing-mode-map &quot;r&quot;    &#39;evernote-browsing-rename-note)<br></td></tr
><tr
id=sl_svn198_195

><td class="source">;(define-key evernote-browsing-mode-map &quot;d&quot;    &#39;evernote-browsing-delete-note)<br></td></tr
><tr
id=sl_svn198_196

><td class="source"><br></td></tr
><tr
id=sl_svn198_197

><td class="source"><br></td></tr
><tr
id=sl_svn198_198

><td class="source">(defun evernote-browsing-mode ()<br></td></tr
><tr
id=sl_svn198_199

><td class="source">  &quot;Major mode for browsing notes.&quot;<br></td></tr
><tr
id=sl_svn198_200

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_201

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_202

><td class="source">  (setq evernote-browsing-mode t)<br></td></tr
><tr
id=sl_svn198_203

><td class="source">  (use-local-map evernote-browsing-mode-map)<br></td></tr
><tr
id=sl_svn198_204

><td class="source">  (setq truncate-lines t<br></td></tr
><tr
id=sl_svn198_205

><td class="source">        major-mode &#39;evernote-browsing-mode<br></td></tr
><tr
id=sl_svn198_206

><td class="source">        mode-name &quot;Evernote-Browsing&quot;)<br></td></tr
><tr
id=sl_svn198_207

><td class="source">  (goto-char (point-min)))<br></td></tr
><tr
id=sl_svn198_208

><td class="source"><br></td></tr
><tr
id=sl_svn198_209

><td class="source"><br></td></tr
><tr
id=sl_svn198_210

><td class="source">(defun evernote-browser ()<br></td></tr
><tr
id=sl_svn198_211

><td class="source">  &quot;Open an evernote browser&quot;<br></td></tr
><tr
id=sl_svn198_212

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_213

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_214

><td class="source">  (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_215

><td class="source">  (if evernote-browsing-current-page<br></td></tr
><tr
id=sl_svn198_216

><td class="source">      (enutil-move-cursor-to-window evernote-browsing-current-page)<br></td></tr
><tr
id=sl_svn198_217

><td class="source">    (evernote-browsing-list-tags)))<br></td></tr
><tr
id=sl_svn198_218

><td class="source"><br></td></tr
><tr
id=sl_svn198_219

><td class="source"><br></td></tr
><tr
id=sl_svn198_220

><td class="source">(defun evernote-browsing-open-next-note ()<br></td></tr
><tr
id=sl_svn198_221

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_222

><td class="source">  (next-line)<br></td></tr
><tr
id=sl_svn198_223

><td class="source">  (when (eq enh-browsing-page-type &#39;note-list)<br></td></tr
><tr
id=sl_svn198_224

><td class="source">    (condition-case nil<br></td></tr
><tr
id=sl_svn198_225

><td class="source">        (widget-button-press (point))<br></td></tr
><tr
id=sl_svn198_226

><td class="source">      (error nil))))<br></td></tr
><tr
id=sl_svn198_227

><td class="source"><br></td></tr
><tr
id=sl_svn198_228

><td class="source"><br></td></tr
><tr
id=sl_svn198_229

><td class="source">(defun evernote-browsing-open-previous-note ()<br></td></tr
><tr
id=sl_svn198_230

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_231

><td class="source">  (previous-line)<br></td></tr
><tr
id=sl_svn198_232

><td class="source">  (when (eq enh-browsing-page-type &#39;note-list)<br></td></tr
><tr
id=sl_svn198_233

><td class="source">    (condition-case nil<br></td></tr
><tr
id=sl_svn198_234

><td class="source">        (widget-button-press (point))<br></td></tr
><tr
id=sl_svn198_235

><td class="source">      (error nil))))<br></td></tr
><tr
id=sl_svn198_236

><td class="source"><br></td></tr
><tr
id=sl_svn198_237

><td class="source"><br></td></tr
><tr
id=sl_svn198_238

><td class="source">(defun evernote-browsing-list-notebooks ()<br></td></tr
><tr
id=sl_svn198_239

><td class="source">  &quot;List tags&quot;<br></td></tr
><tr
id=sl_svn198_240

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_241

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_242

><td class="source">  (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_243

><td class="source">  (let ((page (enh-browsing-get-page-of-type &#39;notebook-list)))<br></td></tr
><tr
id=sl_svn198_244

><td class="source">    (if page<br></td></tr
><tr
id=sl_svn198_245

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn198_246

><td class="source">          (setq evernote-browsing-current-page page)<br></td></tr
><tr
id=sl_svn198_247

><td class="source">          (switch-to-buffer page))<br></td></tr
><tr
id=sl_svn198_248

><td class="source">      (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_249

><td class="source">       (enh-browsing-create-page &#39;notebook-list &quot;All Notebooks&quot;)))))<br></td></tr
><tr
id=sl_svn198_250

><td class="source"><br></td></tr
><tr
id=sl_svn198_251

><td class="source"><br></td></tr
><tr
id=sl_svn198_252

><td class="source">(defun evernote-browsing-list-tags ()<br></td></tr
><tr
id=sl_svn198_253

><td class="source">  &quot;List tags&quot;<br></td></tr
><tr
id=sl_svn198_254

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_255

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_256

><td class="source">  (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_257

><td class="source">  (let ((page (enh-browsing-get-page-of-type &#39;tag-list)))<br></td></tr
><tr
id=sl_svn198_258

><td class="source">    (if page<br></td></tr
><tr
id=sl_svn198_259

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn198_260

><td class="source">          (setq evernote-browsing-current-page page)<br></td></tr
><tr
id=sl_svn198_261

><td class="source">          (switch-to-buffer page))<br></td></tr
><tr
id=sl_svn198_262

><td class="source">      (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_263

><td class="source">       (enh-browsing-create-page &#39;tag-list &quot;All Tags&quot;)))))<br></td></tr
><tr
id=sl_svn198_264

><td class="source"><br></td></tr
><tr
id=sl_svn198_265

><td class="source"><br></td></tr
><tr
id=sl_svn198_266

><td class="source">(defun evernote-browsing-list-searches ()<br></td></tr
><tr
id=sl_svn198_267

><td class="source">  &quot;List saved searches&quot;<br></td></tr
><tr
id=sl_svn198_268

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_269

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_270

><td class="source">  (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_271

><td class="source">  (let ((page (enh-browsing-get-page-of-type &#39;search-list)))<br></td></tr
><tr
id=sl_svn198_272

><td class="source">    (if page<br></td></tr
><tr
id=sl_svn198_273

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn198_274

><td class="source">          (setq evernote-browsing-current-page page)<br></td></tr
><tr
id=sl_svn198_275

><td class="source">          (switch-to-buffer page))<br></td></tr
><tr
id=sl_svn198_276

><td class="source">      (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_277

><td class="source">       (enh-browsing-create-page &#39;search-list &quot;All Saved Searches&quot;)))))<br></td></tr
><tr
id=sl_svn198_278

><td class="source"><br></td></tr
><tr
id=sl_svn198_279

><td class="source"><br></td></tr
><tr
id=sl_svn198_280

><td class="source">(defun evernote-browsing-search-notes ()<br></td></tr
><tr
id=sl_svn198_281

><td class="source">  &quot;Search notes&quot;<br></td></tr
><tr
id=sl_svn198_282

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_283

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_284

><td class="source">  (let (note-attrs (query (read-string &quot;Query:&quot;)))<br></td></tr
><tr
id=sl_svn198_285

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_286

><td class="source">     (setq note-attrs<br></td></tr
><tr
id=sl_svn198_287

><td class="source">           (enh-command-get-note-attrs-from-query query)))<br></td></tr
><tr
id=sl_svn198_288

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_289

><td class="source">    (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_290

><td class="source">     (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_291

><td class="source">                               (format &quot;Query Result of: %s&quot; query)<br></td></tr
><tr
id=sl_svn198_292

><td class="source">                               note-attrs<br></td></tr
><tr
id=sl_svn198_293

><td class="source">                               `(lambda () (enh-command-get-note-attrs-from-query ,query))))))<br></td></tr
><tr
id=sl_svn198_294

><td class="source"><br></td></tr
><tr
id=sl_svn198_295

><td class="source"><br></td></tr
><tr
id=sl_svn198_296

><td class="source">(defun evernote-browsing-prev-page ()<br></td></tr
><tr
id=sl_svn198_297

><td class="source">  &quot;Move to the prev page&quot;<br></td></tr
><tr
id=sl_svn198_298

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_299

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_300

><td class="source">  (when (eq major-mode &#39;evernote-browsing-mode)<br></td></tr
><tr
id=sl_svn198_301

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_302

><td class="source">    (let ((prev-page (enh-browsing-get-prev-page)))<br></td></tr
><tr
id=sl_svn198_303

><td class="source">      (if prev-page<br></td></tr
><tr
id=sl_svn198_304

><td class="source">          (progn<br></td></tr
><tr
id=sl_svn198_305

><td class="source">            (setq evernote-browsing-current-page prev-page)<br></td></tr
><tr
id=sl_svn198_306

><td class="source">            (switch-to-buffer prev-page))<br></td></tr
><tr
id=sl_svn198_307

><td class="source">        (message &quot;[No more previous page]&quot;)))))<br></td></tr
><tr
id=sl_svn198_308

><td class="source"><br></td></tr
><tr
id=sl_svn198_309

><td class="source"><br></td></tr
><tr
id=sl_svn198_310

><td class="source">(defun evernote-browsing-next-page ()<br></td></tr
><tr
id=sl_svn198_311

><td class="source">  &quot;Move to the next page&quot;<br></td></tr
><tr
id=sl_svn198_312

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_313

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_314

><td class="source">  (when (eq major-mode &#39;evernote-browsing-mode)<br></td></tr
><tr
id=sl_svn198_315

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_316

><td class="source">    (let ((next-page (enh-browsing-get-next-page)))<br></td></tr
><tr
id=sl_svn198_317

><td class="source">      (if next-page<br></td></tr
><tr
id=sl_svn198_318

><td class="source">          (progn<br></td></tr
><tr
id=sl_svn198_319

><td class="source">            (setq evernote-browsing-current-page next-page)<br></td></tr
><tr
id=sl_svn198_320

><td class="source">            (switch-to-buffer next-page))<br></td></tr
><tr
id=sl_svn198_321

><td class="source">        (message &quot;[No more next page]&quot;)))))<br></td></tr
><tr
id=sl_svn198_322

><td class="source"><br></td></tr
><tr
id=sl_svn198_323

><td class="source"><br></td></tr
><tr
id=sl_svn198_324

><td class="source">(defun evernote-browsing-delete-page ()<br></td></tr
><tr
id=sl_svn198_325

><td class="source">  &quot;Delete current page&quot;<br></td></tr
><tr
id=sl_svn198_326

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_327

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_328

><td class="source">  (when (eq major-mode &#39;evernote-browsing-mode)<br></td></tr
><tr
id=sl_svn198_329

><td class="source">    (kill-buffer (current-buffer))<br></td></tr
><tr
id=sl_svn198_330

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_331

><td class="source">    (switch-to-buffer evernote-browsing-current-page)))<br></td></tr
><tr
id=sl_svn198_332

><td class="source"><br></td></tr
><tr
id=sl_svn198_333

><td class="source"><br></td></tr
><tr
id=sl_svn198_334

><td class="source">(defun evernote-browsing-reflesh ()<br></td></tr
><tr
id=sl_svn198_335

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_336

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_337

><td class="source">  (when (eq major-mode &#39;evernote-browsing-mode)<br></td></tr
><tr
id=sl_svn198_338

><td class="source">    (when enh-browsing-page-data-refresh-closure<br></td></tr
><tr
id=sl_svn198_339

><td class="source">      (setq enh-browsing-page-data nil))<br></td></tr
><tr
id=sl_svn198_340

><td class="source">    (funcall enh-browsing-page-setup-func)))<br></td></tr
><tr
id=sl_svn198_341

><td class="source"><br></td></tr
><tr
id=sl_svn198_342

><td class="source"><br></td></tr
><tr
id=sl_svn198_343

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_344

><td class="source">;; Interface for evernote-mode<br></td></tr
><tr
id=sl_svn198_345

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_346

><td class="source"><br></td></tr
><tr
id=sl_svn198_347

><td class="source">(defvar evernote-mode nil<br></td></tr
><tr
id=sl_svn198_348

><td class="source">  &quot;Non-nil if Evernote mode is enabled.&quot;)<br></td></tr
><tr
id=sl_svn198_349

><td class="source">(make-variable-buffer-local &#39;evernote-mode)<br></td></tr
><tr
id=sl_svn198_350

><td class="source"><br></td></tr
><tr
id=sl_svn198_351

><td class="source">(defvar evernote-note-guid nil<br></td></tr
><tr
id=sl_svn198_352

><td class="source">  &quot;Note guid of the buffer&quot;)<br></td></tr
><tr
id=sl_svn198_353

><td class="source">(make-variable-buffer-local &#39;evernote-note-guid)<br></td></tr
><tr
id=sl_svn198_354

><td class="source"><br></td></tr
><tr
id=sl_svn198_355

><td class="source">(defvar evernote-note-modified-name nil<br></td></tr
><tr
id=sl_svn198_356

><td class="source">  &quot;Modified name of the note before saving&quot;)<br></td></tr
><tr
id=sl_svn198_357

><td class="source">(make-variable-buffer-local &#39;evernote-note-modified-name)<br></td></tr
><tr
id=sl_svn198_358

><td class="source"><br></td></tr
><tr
id=sl_svn198_359

><td class="source">(defvar evernote-note-modified-notebook-guid nil<br></td></tr
><tr
id=sl_svn198_360

><td class="source">  &quot;Modified noteobok guid of the note before saving&quot;)<br></td></tr
><tr
id=sl_svn198_361

><td class="source">(make-variable-buffer-local &#39;evernote-note-modified-notebook-guid)<br></td></tr
><tr
id=sl_svn198_362

><td class="source"><br></td></tr
><tr
id=sl_svn198_363

><td class="source">(defvar evernote-note-modified-edit-mode nil<br></td></tr
><tr
id=sl_svn198_364

><td class="source">  &quot;Modified edit-mode of the note before saving&quot;)<br></td></tr
><tr
id=sl_svn198_365

><td class="source">(make-variable-buffer-local &#39;evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_366

><td class="source"><br></td></tr
><tr
id=sl_svn198_367

><td class="source">(defvar evernote-note-is-modified-tag-names nil<br></td></tr
><tr
id=sl_svn198_368

><td class="source">  &quot;Modified tag-names of the note before saving&quot;)<br></td></tr
><tr
id=sl_svn198_369

><td class="source">(make-variable-buffer-local &#39;evernote-note-is-modified-tag-names)<br></td></tr
><tr
id=sl_svn198_370

><td class="source"><br></td></tr
><tr
id=sl_svn198_371

><td class="source">(defvar evernote-note-modified-tag-names nil<br></td></tr
><tr
id=sl_svn198_372

><td class="source">  &quot;Modified tag-names of the note before saving&quot;)<br></td></tr
><tr
id=sl_svn198_373

><td class="source">(make-variable-buffer-local &#39;evernote-note-modified-tag-names)<br></td></tr
><tr
id=sl_svn198_374

><td class="source"><br></td></tr
><tr
id=sl_svn198_375

><td class="source">(defvar evernote-note-xhtml-mode-content nil<br></td></tr
><tr
id=sl_svn198_376

><td class="source">  &quot;Note contents as a string of XHTML&quot;)<br></td></tr
><tr
id=sl_svn198_377

><td class="source">(make-variable-buffer-local &#39;evernote-note-xhtml-mode-content)<br></td></tr
><tr
id=sl_svn198_378

><td class="source"><br></td></tr
><tr
id=sl_svn198_379

><td class="source"><br></td></tr
><tr
id=sl_svn198_380

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_381

><td class="source">;; Menu Settings<br></td></tr
><tr
id=sl_svn198_382

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_383

><td class="source"><br></td></tr
><tr
id=sl_svn198_384

><td class="source">(defvar evernote-mode-display-menu t<br></td></tr
><tr
id=sl_svn198_385

><td class="source">  &quot;display the evernote menu on the menubar if this variable is not nil&quot;)<br></td></tr
><tr
id=sl_svn198_386

><td class="source"><br></td></tr
><tr
id=sl_svn198_387

><td class="source">(defvar evernote-mode-map (make-sparse-keymap)<br></td></tr
><tr
id=sl_svn198_388

><td class="source">  &quot;Keymap used in evernote mode.&quot;)<br></td></tr
><tr
id=sl_svn198_389

><td class="source">(define-key evernote-mode-map &quot;\C-x\C-s&quot; &#39;evernote-save-note)<br></td></tr
><tr
id=sl_svn198_390

><td class="source">(define-key evernote-mode-map &quot;\C-cen&quot;   &#39;evernote-change-notebook)<br></td></tr
><tr
id=sl_svn198_391

><td class="source">(define-key evernote-mode-map &quot;\C-cet&quot;   &#39;evernote-edit-tags)<br></td></tr
><tr
id=sl_svn198_392

><td class="source">(define-key evernote-mode-map &quot;\C-cee&quot;   &#39;evernote-change-edit-mode)<br></td></tr
><tr
id=sl_svn198_393

><td class="source">(define-key evernote-mode-map &quot;\C-cer&quot;   &#39;evernote-rename-note)<br></td></tr
><tr
id=sl_svn198_394

><td class="source">(define-key evernote-mode-map &quot;\C-ced&quot;   &#39;evernote-delete-note)<br></td></tr
><tr
id=sl_svn198_395

><td class="source">(define-key evernote-mode-map &quot;\C-x\C-q&quot; &#39;evernote-toggle-read-only)<br></td></tr
><tr
id=sl_svn198_396

><td class="source"><br></td></tr
><tr
id=sl_svn198_397

><td class="source"><br></td></tr
><tr
id=sl_svn198_398

><td class="source">(defun enh-menu-is-visible-on-ordinary-mode ()<br></td></tr
><tr
id=sl_svn198_399

><td class="source">  (not evernote-browsing-mode))<br></td></tr
><tr
id=sl_svn198_400

><td class="source"><br></td></tr
><tr
id=sl_svn198_401

><td class="source">(defun enh-menu-is-visible-on-evernote-mode ()<br></td></tr
><tr
id=sl_svn198_402

><td class="source">  (and evernote-mode (not evernote-browsing-mode)))<br></td></tr
><tr
id=sl_svn198_403

><td class="source"><br></td></tr
><tr
id=sl_svn198_404

><td class="source">(defun enh-menu-is-visible-on-evernote-browsing-mode ()<br></td></tr
><tr
id=sl_svn198_405

><td class="source">  evernote-browsing-mode)<br></td></tr
><tr
id=sl_svn198_406

><td class="source"><br></td></tr
><tr
id=sl_svn198_407

><td class="source">(let ((menu-bar-map (make-sparse-keymap &quot;Evernote&quot;)))<br></td></tr
><tr
id=sl_svn198_408

><td class="source">  (define-key-after global-map [menu-bar evernote]<br></td></tr
><tr
id=sl_svn198_409

><td class="source">    `(menu-item &quot;Evernote&quot; ,menu-bar-map<br></td></tr
><tr
id=sl_svn198_410

><td class="source">                :visible evernote-mode-display-menu)<br></td></tr
><tr
id=sl_svn198_411

><td class="source">    &#39;tools)<br></td></tr
><tr
id=sl_svn198_412

><td class="source">  (define-key menu-bar-map [browser]<br></td></tr
><tr
id=sl_svn198_413

><td class="source">    &#39;(menu-item &quot;Evernote Browser&quot; evernote-browser<br></td></tr
><tr
id=sl_svn198_414

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_415

><td class="source">  (define-key menu-bar-map [seperator-0]<br></td></tr
><tr
id=sl_svn198_416

><td class="source">    &#39;(menu-item &quot;--&quot; nil<br></td></tr
><tr
id=sl_svn198_417

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_418

><td class="source">  (define-key menu-bar-map [toggle-read-only]<br></td></tr
><tr
id=sl_svn198_419

><td class="source">    &#39;(menu-item &quot;Toggle Read Only&quot; evernote-toggle-read-only<br></td></tr
><tr
id=sl_svn198_420

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_421

><td class="source">  (define-key menu-bar-map [delete-note]<br></td></tr
><tr
id=sl_svn198_422

><td class="source">    &#39;(menu-item &quot;Delete Note&quot; evernote-delete-note<br></td></tr
><tr
id=sl_svn198_423

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_424

><td class="source">  (define-key menu-bar-map [rename-note]<br></td></tr
><tr
id=sl_svn198_425

><td class="source">    &#39;(menu-item &quot;Rename Note&quot; evernote-rename-note<br></td></tr
><tr
id=sl_svn198_426

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_427

><td class="source">  (define-key menu-bar-map [change-notebook]<br></td></tr
><tr
id=sl_svn198_428

><td class="source">    &#39;(menu-item &quot;Change Notebook&quot; evernote-change-notebook<br></td></tr
><tr
id=sl_svn198_429

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_430

><td class="source">  (define-key menu-bar-map [change-edit-mode]<br></td></tr
><tr
id=sl_svn198_431

><td class="source">    &#39;(menu-item &quot;Change Edit Mode&quot; evernote-change-edit-mode<br></td></tr
><tr
id=sl_svn198_432

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_433

><td class="source">  (define-key menu-bar-map [edit-tag]<br></td></tr
><tr
id=sl_svn198_434

><td class="source">    &#39;(menu-item &quot;Edit Tag&quot; evernote-edit-tags<br></td></tr
><tr
id=sl_svn198_435

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_436

><td class="source">  (define-key menu-bar-map [save-note]<br></td></tr
><tr
id=sl_svn198_437

><td class="source">    &#39;(menu-item &quot;Save Note&quot; evernote-save-note<br></td></tr
><tr
id=sl_svn198_438

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_439

><td class="source">  (define-key menu-bar-map [seperator-1]<br></td></tr
><tr
id=sl_svn198_440

><td class="source">    &#39;(menu-item &quot;--&quot; nil<br></td></tr
><tr
id=sl_svn198_441

><td class="source">                :visible (enh-menu-is-visible-on-evernote-mode)))<br></td></tr
><tr
id=sl_svn198_442

><td class="source">  (define-key menu-bar-map [edit-notebook]<br></td></tr
><tr
id=sl_svn198_443

><td class="source">    &#39;(menu-item &quot;Edit Notebook&quot; evernote-edit-notebook<br></td></tr
><tr
id=sl_svn198_444

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_445

><td class="source">  (define-key menu-bar-map [create-notebook]<br></td></tr
><tr
id=sl_svn198_446

><td class="source">    &#39;(menu-item &quot;Create Notebook&quot; evernote-create-notebook<br></td></tr
><tr
id=sl_svn198_447

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_448

><td class="source">  (define-key menu-bar-map [seperator-2]<br></td></tr
><tr
id=sl_svn198_449

><td class="source">    &#39;(menu-item &quot;--&quot; nil<br></td></tr
><tr
id=sl_svn198_450

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_451

><td class="source">  (define-key menu-bar-map [edit-search]<br></td></tr
><tr
id=sl_svn198_452

><td class="source">    &#39;(menu-item &quot;Edit Saved Search&quot; evernote-edit-search<br></td></tr
><tr
id=sl_svn198_453

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_454

><td class="source">  (define-key menu-bar-map [create-search]<br></td></tr
><tr
id=sl_svn198_455

><td class="source">    &#39;(menu-item &quot;Create Saved Search&quot; evernote-create-search<br></td></tr
><tr
id=sl_svn198_456

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_457

><td class="source">  (define-key menu-bar-map [do-saved-search]<br></td></tr
><tr
id=sl_svn198_458

><td class="source">    &#39;(menu-item &quot;Do Saved Search&quot; evernote-do-saved-search<br></td></tr
><tr
id=sl_svn198_459

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_460

><td class="source">  (define-key menu-bar-map [search-note]<br></td></tr
><tr
id=sl_svn198_461

><td class="source">    &#39;(menu-item &quot;Search Note&quot; evernote-search-notes<br></td></tr
><tr
id=sl_svn198_462

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_463

><td class="source">  (define-key menu-bar-map [seperator-3]<br></td></tr
><tr
id=sl_svn198_464

><td class="source">    &#39;(menu-item &quot;--&quot; nil<br></td></tr
><tr
id=sl_svn198_465

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_466

><td class="source">  (define-key menu-bar-map [post-region-in-notebook]<br></td></tr
><tr
id=sl_svn198_467

><td class="source">    &#39;(menu-item &quot;Post Region (w/ notebook param)&quot; evernote-post-region-in-notebook<br></td></tr
><tr
id=sl_svn198_468

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_469

><td class="source">  (define-key menu-bar-map [post-region]<br></td></tr
><tr
id=sl_svn198_470

><td class="source">    &#39;(menu-item &quot;Post Region&quot; evernote-post-region<br></td></tr
><tr
id=sl_svn198_471

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_472

><td class="source">  (define-key menu-bar-map [write-note-in-notebook]<br></td></tr
><tr
id=sl_svn198_473

><td class="source">    &#39;(menu-item &quot;Write Note (w/ notebook param)&quot; evernote-write-note-in-notebook<br></td></tr
><tr
id=sl_svn198_474

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_475

><td class="source">  (define-key menu-bar-map [write-note]<br></td></tr
><tr
id=sl_svn198_476

><td class="source">    &#39;(menu-item &quot;Write Note&quot; evernote-write-note<br></td></tr
><tr
id=sl_svn198_477

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_478

><td class="source">  (define-key menu-bar-map [create-note-in-notebook]<br></td></tr
><tr
id=sl_svn198_479

><td class="source">    &#39;(menu-item &quot;Create Note (w/ notebook param)&quot; evernote-create-note-in-notebook<br></td></tr
><tr
id=sl_svn198_480

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_481

><td class="source">  (define-key menu-bar-map [create-note]<br></td></tr
><tr
id=sl_svn198_482

><td class="source">    &#39;(menu-item &quot;Create Note&quot; evernote-create-note<br></td></tr
><tr
id=sl_svn198_483

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_484

><td class="source">  (define-key menu-bar-map [open-note-in-notebook]<br></td></tr
><tr
id=sl_svn198_485

><td class="source">    &#39;(menu-item &quot;Open Note (w/ notebook param)&quot; evernote-open-note-in-notebook<br></td></tr
><tr
id=sl_svn198_486

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_487

><td class="source">  (define-key menu-bar-map [open-note]<br></td></tr
><tr
id=sl_svn198_488

><td class="source">    &#39;(menu-item &quot;Open Note&quot; evernote-open-note<br></td></tr
><tr
id=sl_svn198_489

><td class="source">                :visible (enh-menu-is-visible-on-ordinary-mode)))<br></td></tr
><tr
id=sl_svn198_490

><td class="source">  (define-key menu-bar-map [browsing-prev-page]<br></td></tr
><tr
id=sl_svn198_491

><td class="source">    &#39;(menu-item &quot;Prev Page&quot; evernote-browsing-prev-page<br></td></tr
><tr
id=sl_svn198_492

><td class="source">                :visible (enh-menu-is-visible-on-evernote-browsing-mode)))<br></td></tr
><tr
id=sl_svn198_493

><td class="source">  (define-key menu-bar-map [browsing-next-page]<br></td></tr
><tr
id=sl_svn198_494

><td class="source">    &#39;(menu-item &quot;Next Page&quot; evernote-browsing-next-page<br></td></tr
><tr
id=sl_svn198_495

><td class="source">                :visible (enh-menu-is-visible-on-evernote-browsing-mode)))<br></td></tr
><tr
id=sl_svn198_496

><td class="source">  (define-key menu-bar-map [browsing-search-notes]<br></td></tr
><tr
id=sl_svn198_497

><td class="source">    &#39;(menu-item &quot;Searche Notes&quot; evernote-browsing-search-notes<br></td></tr
><tr
id=sl_svn198_498

><td class="source">                :visible (enh-menu-is-visible-on-evernote-browsing-mode)))<br></td></tr
><tr
id=sl_svn198_499

><td class="source">  (define-key menu-bar-map [browsing-list-searches]<br></td></tr
><tr
id=sl_svn198_500

><td class="source">    &#39;(menu-item &quot;List Saved Searches&quot; evernote-browsing-list-searches<br></td></tr
><tr
id=sl_svn198_501

><td class="source">                :visible (enh-menu-is-visible-on-evernote-browsing-mode)))<br></td></tr
><tr
id=sl_svn198_502

><td class="source">  (define-key menu-bar-map [browsing-list-tags]<br></td></tr
><tr
id=sl_svn198_503

><td class="source">    &#39;(menu-item &quot;List Tags&quot; evernote-browsing-list-tags<br></td></tr
><tr
id=sl_svn198_504

><td class="source">                :visible (enh-menu-is-visible-on-evernote-browsing-mode)))<br></td></tr
><tr
id=sl_svn198_505

><td class="source">  (define-key menu-bar-map [browsing-list-notebooks]<br></td></tr
><tr
id=sl_svn198_506

><td class="source">    &#39;(menu-item &quot;List Notebooks&quot; evernote-browsing-list-notebooks<br></td></tr
><tr
id=sl_svn198_507

><td class="source">                :visible (enh-menu-is-visible-on-evernote-browsing-mode))))<br></td></tr
><tr
id=sl_svn198_508

><td class="source"><br></td></tr
><tr
id=sl_svn198_509

><td class="source"><br></td></tr
><tr
id=sl_svn198_510

><td class="source">(defun evernote-mode (&amp;optional guid)<br></td></tr
><tr
id=sl_svn198_511

><td class="source">  &quot;Toggle Evernote mode, a minor mode for using evernote functions.&quot;<br></td></tr
><tr
id=sl_svn198_512

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_513

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_514

><td class="source">  (or (assq &#39;evernote-mode minor-mode-alist)<br></td></tr
><tr
id=sl_svn198_515

><td class="source">      (setq minor-mode-alist (cons &#39;(evernote-mode &quot; Evernote&quot;) minor-mode-alist)))<br></td></tr
><tr
id=sl_svn198_516

><td class="source">  (or (assq &#39;evernote-mode minor-mode-map-alist)<br></td></tr
><tr
id=sl_svn198_517

><td class="source">      (setq minor-mode-map-alist<br></td></tr
><tr
id=sl_svn198_518

><td class="source">            (cons (cons &#39;evernote-mode evernote-mode-map) minor-mode-map-alist)))<br></td></tr
><tr
id=sl_svn198_519

><td class="source">  (let ((modified (buffer-modified-p)))<br></td></tr
><tr
id=sl_svn198_520

><td class="source">    (set-buffer-file-coding-system &#39;utf-8)<br></td></tr
><tr
id=sl_svn198_521

><td class="source">    (set-buffer-modified-p modified))<br></td></tr
><tr
id=sl_svn198_522

><td class="source">  (setq evernote-mode (not evernote-mode))<br></td></tr
><tr
id=sl_svn198_523

><td class="source">  (if evernote-mode<br></td></tr
><tr
id=sl_svn198_524

><td class="source">      (progn<br></td></tr
><tr
id=sl_svn198_525

><td class="source">        (when guid (setq evernote-note-guid guid))<br></td></tr
><tr
id=sl_svn198_526

><td class="source">        (enh-base-update-mode-line<br></td></tr
><tr
id=sl_svn198_527

><td class="source">         evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_528

><td class="source">         evernote-note-is-modified-tag-names<br></td></tr
><tr
id=sl_svn198_529

><td class="source">         evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_530

><td class="source">         evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_531

><td class="source">        (add-hook &#39;after-save-hook<br></td></tr
><tr
id=sl_svn198_532

><td class="source">                  &#39;evernote-mode-after-save-hook<br></td></tr
><tr
id=sl_svn198_533

><td class="source">                  nil t)<br></td></tr
><tr
id=sl_svn198_534

><td class="source">        (add-hook &#39;change-major-mode-hook<br></td></tr
><tr
id=sl_svn198_535

><td class="source">                  &#39;evernote-mode-change-major-mode-hook<br></td></tr
><tr
id=sl_svn198_536

><td class="source">                  nil t)<br></td></tr
><tr
id=sl_svn198_537

><td class="source">        (when (enh-bookmark-supported)<br></td></tr
><tr
id=sl_svn198_538

><td class="source">          (enh-bookmark-prepare))<br></td></tr
><tr
id=sl_svn198_539

><td class="source">        (run-hooks &#39;evernote-mode-hook))<br></td></tr
><tr
id=sl_svn198_540

><td class="source">    (progn<br></td></tr
><tr
id=sl_svn198_541

><td class="source">      (setq evernote-note-guid nil)<br></td></tr
><tr
id=sl_svn198_542

><td class="source">      (setq vc-mode nil)<br></td></tr
><tr
id=sl_svn198_543

><td class="source">      (remove-hook &#39;after-save-hook<br></td></tr
><tr
id=sl_svn198_544

><td class="source">                   &#39;evernote-mode-after-save-hook)<br></td></tr
><tr
id=sl_svn198_545

><td class="source">      (remove-hook &#39;change-major-mode-hook<br></td></tr
><tr
id=sl_svn198_546

><td class="source">                   &#39;evernote-mode-change-major-mode-hook))))<br></td></tr
><tr
id=sl_svn198_547

><td class="source"><br></td></tr
><tr
id=sl_svn198_548

><td class="source"><br></td></tr
><tr
id=sl_svn198_549

><td class="source">(defun evernote-login ()<br></td></tr
><tr
id=sl_svn198_550

><td class="source">  &quot;Login&quot;<br></td></tr
><tr
id=sl_svn198_551

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_552

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_553

><td class="source">  (unwind-protect<br></td></tr
><tr
id=sl_svn198_554

><td class="source">      (let* ((cache (enh-password-cache-load))<br></td></tr
><tr
id=sl_svn198_555

><td class="source">             (usernames (mapcar #&#39;car cache))<br></td></tr
><tr
id=sl_svn198_556

><td class="source">             (username (or evernote-username<br></td></tr
><tr
id=sl_svn198_557

><td class="source">                           (read-string &quot;Evernote user name:&quot;<br></td></tr
><tr
id=sl_svn198_558

><td class="source">                                        (car usernames) &#39;usernames)))<br></td></tr
><tr
id=sl_svn198_559

><td class="source">             (cache-passwd (enutil-aget username cache)))<br></td></tr
><tr
id=sl_svn198_560

><td class="source">        (unless (and cache-passwd<br></td></tr
><tr
id=sl_svn198_561

><td class="source">                     (eq (catch &#39;error <br></td></tr
><tr
id=sl_svn198_562

><td class="source">                           (progn <br></td></tr
><tr
id=sl_svn198_563

><td class="source">                             (enh-command-login username cache-passwd)<br></td></tr
><tr
id=sl_svn198_564

><td class="source">                             t))<br></td></tr
><tr
id=sl_svn198_565

><td class="source">                         t))<br></td></tr
><tr
id=sl_svn198_566

><td class="source">          (let* ((passwd (read-passwd &quot;Passwd:&quot;)))<br></td></tr
><tr
id=sl_svn198_567

><td class="source">            (enh-command-login username passwd)<br></td></tr
><tr
id=sl_svn198_568

><td class="source">            (setq evernote-username username)<br></td></tr
><tr
id=sl_svn198_569

><td class="source">            (enh-password-cache-save (enutil-aset username cache passwd)))))<br></td></tr
><tr
id=sl_svn198_570

><td class="source">    (enh-password-cache-close)))<br></td></tr
><tr
id=sl_svn198_571

><td class="source"><br></td></tr
><tr
id=sl_svn198_572

><td class="source"><br></td></tr
><tr
id=sl_svn198_573

><td class="source">(defun evernote-open-note (&amp;optional ask-notebook)<br></td></tr
><tr
id=sl_svn198_574

><td class="source">  &quot;Open a note&quot;<br></td></tr
><tr
id=sl_svn198_575

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_576

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_577

><td class="source">  (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_578

><td class="source">   (let* ((notebook-guid (and ask-notebook<br></td></tr
><tr
id=sl_svn198_579

><td class="source">                              (enutil-aget &#39;guid (enh-read-notebook))))<br></td></tr
><tr
id=sl_svn198_580

><td class="source">          (tag-guids (enh-read-tag-guids<br></td></tr
><tr
id=sl_svn198_581

><td class="source">                      &quot;Tags used for search (comma separated form. default search all tags):&quot;))<br></td></tr
><tr
id=sl_svn198_582

><td class="source">          (note-attrs<br></td></tr
><tr
id=sl_svn198_583

><td class="source">           (enh-command-get-note-attrs-from-notebook-and-tag-guids notebook-guid tag-guids)))<br></td></tr
><tr
id=sl_svn198_584

><td class="source">     (enh-base-open-note-common (enh-base-read-note-attr note-attrs))<br></td></tr
><tr
id=sl_svn198_585

><td class="source">     (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_586

><td class="source">     (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_587

><td class="source">      (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_588

><td class="source">                                (if tag-guids<br></td></tr
><tr
id=sl_svn198_589

><td class="source">                                    (format &quot;Notes with tag: %s&quot;<br></td></tr
><tr
id=sl_svn198_590

><td class="source">                                            (enh-tag-guids-to-comma-separated-names tag-guids))<br></td></tr
><tr
id=sl_svn198_591

><td class="source">                                  &quot;All notes&quot;)<br></td></tr
><tr
id=sl_svn198_592

><td class="source">                                note-attrs<br></td></tr
><tr
id=sl_svn198_593

><td class="source">                                `(lambda () (enh-command-get-note-attrs-from-notebook-and-tag-guids<br></td></tr
><tr
id=sl_svn198_594

><td class="source">                                             ,notebook-guid &#39;,tag-guids)))<br></td></tr
><tr
id=sl_svn198_595

><td class="source">      t))))<br></td></tr
><tr
id=sl_svn198_596

><td class="source"><br></td></tr
><tr
id=sl_svn198_597

><td class="source"><br></td></tr
><tr
id=sl_svn198_598

><td class="source">(defun evernote-open-note-in-notebook ()<br></td></tr
><tr
id=sl_svn198_599

><td class="source">  &quot;Open a note in the specified notebook&quot;<br></td></tr
><tr
id=sl_svn198_600

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_601

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_602

><td class="source">  (evernote-open-note t))<br></td></tr
><tr
id=sl_svn198_603

><td class="source"><br></td></tr
><tr
id=sl_svn198_604

><td class="source"><br></td></tr
><tr
id=sl_svn198_605

><td class="source">(defun evernote-search-notes ()<br></td></tr
><tr
id=sl_svn198_606

><td class="source">  &quot;Search notes with query and open a note among them&quot;<br></td></tr
><tr
id=sl_svn198_607

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_608

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_609

><td class="source">  (let ((query (read-string &quot;Query:&quot;)))<br></td></tr
><tr
id=sl_svn198_610

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_611

><td class="source">     (let ((note-attrs<br></td></tr
><tr
id=sl_svn198_612

><td class="source">            (enh-command-get-note-attrs-from-query<br></td></tr
><tr
id=sl_svn198_613

><td class="source">             query)))<br></td></tr
><tr
id=sl_svn198_614

><td class="source">       (enh-base-open-note-common (enh-base-read-note-attr note-attrs))<br></td></tr
><tr
id=sl_svn198_615

><td class="source">       (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_616

><td class="source">       (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_617

><td class="source">        (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_618

><td class="source">                                  (format &quot;Query Result of: %s&quot; query)<br></td></tr
><tr
id=sl_svn198_619

><td class="source">                                  note-attrs<br></td></tr
><tr
id=sl_svn198_620

><td class="source">                                  `(lambda () (enh-command-get-note-attrs-from-query ,query)))<br></td></tr
><tr
id=sl_svn198_621

><td class="source">        t)))))<br></td></tr
><tr
id=sl_svn198_622

><td class="source"><br></td></tr
><tr
id=sl_svn198_623

><td class="source"><br></td></tr
><tr
id=sl_svn198_624

><td class="source">(defun evernote-do-saved-search ()<br></td></tr
><tr
id=sl_svn198_625

><td class="source">  &quot;Do a saved search and open a note&quot;<br></td></tr
><tr
id=sl_svn198_626

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_627

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_628

><td class="source">  (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_629

><td class="source">   (let* ((search-attr (enh-read-saved-search))<br></td></tr
><tr
id=sl_svn198_630

><td class="source">          (note-attrs<br></td></tr
><tr
id=sl_svn198_631

><td class="source">           (enh-command-get-note-attrs-from-query<br></td></tr
><tr
id=sl_svn198_632

><td class="source">            (enutil-aget &#39;query search-attr))))<br></td></tr
><tr
id=sl_svn198_633

><td class="source">     (enh-base-open-note-common (enh-base-read-note-attr note-attrs))<br></td></tr
><tr
id=sl_svn198_634

><td class="source">     (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_635

><td class="source">     (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_636

><td class="source">      (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_637

><td class="source">                                (format &quot;Query Result of Saved Search: %s&quot;<br></td></tr
><tr
id=sl_svn198_638

><td class="source">                                        (enutil-aget &#39;name search-attr))<br></td></tr
><tr
id=sl_svn198_639

><td class="source">                                note-attrs<br></td></tr
><tr
id=sl_svn198_640

><td class="source">                                `(lambda () (enh-command-get-note-attrs-from-query<br></td></tr
><tr
id=sl_svn198_641

><td class="source">                                             ,(enutil-aget &#39;query search-attr))))<br></td></tr
><tr
id=sl_svn198_642

><td class="source">      t))))<br></td></tr
><tr
id=sl_svn198_643

><td class="source"><br></td></tr
><tr
id=sl_svn198_644

><td class="source"><br></td></tr
><tr
id=sl_svn198_645

><td class="source">(defun evernote-create-note ()<br></td></tr
><tr
id=sl_svn198_646

><td class="source">  &quot;Create a note&quot;<br></td></tr
><tr
id=sl_svn198_647

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_648

><td class="source">  (enh-base-create-note-interactive nil))<br></td></tr
><tr
id=sl_svn198_649

><td class="source"><br></td></tr
><tr
id=sl_svn198_650

><td class="source"><br></td></tr
><tr
id=sl_svn198_651

><td class="source">(defun evernote-create-note-in-notebook ()<br></td></tr
><tr
id=sl_svn198_652

><td class="source">  &quot;Create a note in the specified notebook&quot;<br></td></tr
><tr
id=sl_svn198_653

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_654

><td class="source">  (enh-base-create-note-interactive t))<br></td></tr
><tr
id=sl_svn198_655

><td class="source"><br></td></tr
><tr
id=sl_svn198_656

><td class="source"><br></td></tr
><tr
id=sl_svn198_657

><td class="source">(defun evernote-write-note ()<br></td></tr
><tr
id=sl_svn198_658

><td class="source">  &quot;Write buffer to a note&quot;<br></td></tr
><tr
id=sl_svn198_659

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_660

><td class="source">  (enh-base-write-note-interactive nil))<br></td></tr
><tr
id=sl_svn198_661

><td class="source"><br></td></tr
><tr
id=sl_svn198_662

><td class="source"><br></td></tr
><tr
id=sl_svn198_663

><td class="source">(defun evernote-write-note-in-notebook ()<br></td></tr
><tr
id=sl_svn198_664

><td class="source">  &quot;Write buffer to a note in the specified notebook&quot;<br></td></tr
><tr
id=sl_svn198_665

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_666

><td class="source">  (enh-base-write-note-interactive t))<br></td></tr
><tr
id=sl_svn198_667

><td class="source"><br></td></tr
><tr
id=sl_svn198_668

><td class="source"><br></td></tr
><tr
id=sl_svn198_669

><td class="source">(defun evernote-post-region (begin end arg)<br></td></tr
><tr
id=sl_svn198_670

><td class="source">  &quot;Post the region as a note&quot;<br></td></tr
><tr
id=sl_svn198_671

><td class="source">  (interactive &quot;r\np&quot;)<br></td></tr
><tr
id=sl_svn198_672

><td class="source">  (enh-base-post-region-interactive begin end arg nil))<br></td></tr
><tr
id=sl_svn198_673

><td class="source"><br></td></tr
><tr
id=sl_svn198_674

><td class="source"><br></td></tr
><tr
id=sl_svn198_675

><td class="source">(defun evernote-post-region-in-notebook (begin end arg)<br></td></tr
><tr
id=sl_svn198_676

><td class="source">  &quot;Post the region as a note in the specified notebook&quot;<br></td></tr
><tr
id=sl_svn198_677

><td class="source">  (interactive &quot;r\np&quot;)<br></td></tr
><tr
id=sl_svn198_678

><td class="source">  (enh-base-post-region-interactive begin end arg t))<br></td></tr
><tr
id=sl_svn198_679

><td class="source"><br></td></tr
><tr
id=sl_svn198_680

><td class="source"><br></td></tr
><tr
id=sl_svn198_681

><td class="source">(defun evernote-save-note ()<br></td></tr
><tr
id=sl_svn198_682

><td class="source">  &quot;Save a note&quot;<br></td></tr
><tr
id=sl_svn198_683

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_684

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_685

><td class="source">  (cond<br></td></tr
><tr
id=sl_svn198_686

><td class="source">   ((not evernote-mode)<br></td></tr
><tr
id=sl_svn198_687

><td class="source">    nil) ; do nothing<br></td></tr
><tr
id=sl_svn198_688

><td class="source">   ((not (buffer-modified-p))<br></td></tr
><tr
id=sl_svn198_689

><td class="source">    (message &quot;(No changes need to be saved)&quot;))<br></td></tr
><tr
id=sl_svn198_690

><td class="source">   (buffer-read-only<br></td></tr
><tr
id=sl_svn198_691

><td class="source">    (ding)<br></td></tr
><tr
id=sl_svn198_692

><td class="source">    (message &quot;Unset read-only before you save&quot;))<br></td></tr
><tr
id=sl_svn198_693

><td class="source">   (t<br></td></tr
><tr
id=sl_svn198_694

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_695

><td class="source">     (enh-base-update-note-common<br></td></tr
><tr
id=sl_svn198_696

><td class="source">      (current-buffer)   ; contents<br></td></tr
><tr
id=sl_svn198_697

><td class="source">      evernote-note-guid ; guid<br></td></tr
><tr
id=sl_svn198_698

><td class="source">      (if evernote-note-modified-name ; name<br></td></tr
><tr
id=sl_svn198_699

><td class="source">          evernote-note-modified-name<br></td></tr
><tr
id=sl_svn198_700

><td class="source">        nil)<br></td></tr
><tr
id=sl_svn198_701

><td class="source">      evernote-note-modified-notebook-guid ; notebook-guid<br></td></tr
><tr
id=sl_svn198_702

><td class="source">      evernote-note-is-modified-tag-names ; is-tag-updated<br></td></tr
><tr
id=sl_svn198_703

><td class="source">      (if evernote-note-is-modified-tag-names ; tag-names<br></td></tr
><tr
id=sl_svn198_704

><td class="source">          evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_705

><td class="source">        nil)<br></td></tr
><tr
id=sl_svn198_706

><td class="source">      (if evernote-note-modified-edit-mode ; edit-mode<br></td></tr
><tr
id=sl_svn198_707

><td class="source">          evernote-note-modified-edit-mode<br></td></tr
><tr
id=sl_svn198_708

><td class="source">        nil))<br></td></tr
><tr
id=sl_svn198_709

><td class="source">     (if (or evernote-note-modified-name<br></td></tr
><tr
id=sl_svn198_710

><td class="source">             evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_711

><td class="source">             evernote-note-is-modified-tag-names<br></td></tr
><tr
id=sl_svn198_712

><td class="source">             evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_713

><td class="source">         (enh-browsing-reflesh-page &#39;note-list))<br></td></tr
><tr
id=sl_svn198_714

><td class="source">     (setq evernote-note-modified-name nil<br></td></tr
><tr
id=sl_svn198_715

><td class="source">           evernote-note-modified-notebook-guid nil<br></td></tr
><tr
id=sl_svn198_716

><td class="source">           evernote-note-is-modified-tag-names nil<br></td></tr
><tr
id=sl_svn198_717

><td class="source">           evernote-note-modified-tag-names nil<br></td></tr
><tr
id=sl_svn198_718

><td class="source">           evernote-note-modified-edit-mode nil)<br></td></tr
><tr
id=sl_svn198_719

><td class="source">     (set-buffer-modified-p nil)))))<br></td></tr
><tr
id=sl_svn198_720

><td class="source"><br></td></tr
><tr
id=sl_svn198_721

><td class="source"><br></td></tr
><tr
id=sl_svn198_722

><td class="source">(defun evernote-change-notebook ()<br></td></tr
><tr
id=sl_svn198_723

><td class="source">  &quot;Change notebook to which this note belongs&quot;<br></td></tr
><tr
id=sl_svn198_724

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_725

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_726

><td class="source">  (when evernote-mode<br></td></tr
><tr
id=sl_svn198_727

><td class="source">    (let* (current-notebook-guid current-notebook-name next-notebook-guid)<br></td></tr
><tr
id=sl_svn198_728

><td class="source">      (setq current-notebook-guid<br></td></tr
><tr
id=sl_svn198_729

><td class="source">            (or evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_730

><td class="source">                (enutil-aget &#39;notebookGuid (enh-get-note-attr evernote-note-guid))))<br></td></tr
><tr
id=sl_svn198_731

><td class="source">      (setq current-notebook-name<br></td></tr
><tr
id=sl_svn198_732

><td class="source">            (enutil-aget &#39;name (enh-get-notebook-attr current-notebook-guid)))<br></td></tr
><tr
id=sl_svn198_733

><td class="source">      (setq next-notebook-guid<br></td></tr
><tr
id=sl_svn198_734

><td class="source">            (enutil-aget &#39;guid (enh-read-notebook current-notebook-name)))<br></td></tr
><tr
id=sl_svn198_735

><td class="source">      (when (not (string= current-notebook-guid next-notebook-guid))<br></td></tr
><tr
id=sl_svn198_736

><td class="source">        (setq evernote-note-modified-notebook-guid next-notebook-guid)<br></td></tr
><tr
id=sl_svn198_737

><td class="source">        (enh-base-update-mode-line evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_738

><td class="source">                                   evernote-note-is-modified-tag-names<br></td></tr
><tr
id=sl_svn198_739

><td class="source">                                   evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_740

><td class="source">                                   evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_741

><td class="source">        (set-buffer-modified-p t)))))<br></td></tr
><tr
id=sl_svn198_742

><td class="source"><br></td></tr
><tr
id=sl_svn198_743

><td class="source"><br></td></tr
><tr
id=sl_svn198_744

><td class="source">(defun evernote-edit-tags ()<br></td></tr
><tr
id=sl_svn198_745

><td class="source">  &quot;Add or remove tags from/to the note&quot;<br></td></tr
><tr
id=sl_svn198_746

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_747

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_748

><td class="source">  (when evernote-mode<br></td></tr
><tr
id=sl_svn198_749

><td class="source">    (setq evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_750

><td class="source">          (enh-read-tag-names<br></td></tr
><tr
id=sl_svn198_751

><td class="source">           &quot;Change attached Tags (comma separated form):&quot;<br></td></tr
><tr
id=sl_svn198_752

><td class="source">           evernote-note-guid))<br></td></tr
><tr
id=sl_svn198_753

><td class="source">    (setq evernote-note-is-modified-tag-names t) ; this must be after enh-read-tag-names<br></td></tr
><tr
id=sl_svn198_754

><td class="source">    (enh-base-update-mode-line evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_755

><td class="source">                               evernote-note-is-modified-tag-names<br></td></tr
><tr
id=sl_svn198_756

><td class="source">                               evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_757

><td class="source">                               evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_758

><td class="source">    (set-buffer-modified-p t)))<br></td></tr
><tr
id=sl_svn198_759

><td class="source"><br></td></tr
><tr
id=sl_svn198_760

><td class="source"><br></td></tr
><tr
id=sl_svn198_761

><td class="source">(defun evernote-change-edit-mode ()<br></td></tr
><tr
id=sl_svn198_762

><td class="source">  &quot;Change edit mode of the note&quot;<br></td></tr
><tr
id=sl_svn198_763

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_764

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_765

><td class="source">  (when evernote-mode<br></td></tr
><tr
id=sl_svn198_766

><td class="source">    (let* ((current-edit-mode<br></td></tr
><tr
id=sl_svn198_767

><td class="source">            (or evernote-note-modified-edit-mode<br></td></tr
><tr
id=sl_svn198_768

><td class="source">                (enutil-aget &#39;editMode (enh-get-note-attr evernote-note-guid))))<br></td></tr
><tr
id=sl_svn198_769

><td class="source">           (next-edit-mode (enh-read-edit-mode current-edit-mode))<br></td></tr
><tr
id=sl_svn198_770

><td class="source">           (need-change nil))<br></td></tr
><tr
id=sl_svn198_771

><td class="source">      (when (not (string= current-edit-mode next-edit-mode))<br></td></tr
><tr
id=sl_svn198_772

><td class="source">        (cond<br></td></tr
><tr
id=sl_svn198_773

><td class="source">         ;; XHTML mode, Confirm the buffer is saved.<br></td></tr
><tr
id=sl_svn198_774

><td class="source">         ((and (string= current-edit-mode &quot;XHTML&quot;)<br></td></tr
><tr
id=sl_svn198_775

><td class="source">               (buffer-modified-p))<br></td></tr
><tr
id=sl_svn198_776

><td class="source">          (ding)<br></td></tr
><tr
id=sl_svn198_777

><td class="source">          (message &quot;Save the buffer before you change edit mode&quot;))<br></td></tr
><tr
id=sl_svn198_778

><td class="source">         ;; XHTML mode, Formatted xml.<br></td></tr
><tr
id=sl_svn198_779

><td class="source">         ((and (string= current-edit-mode &quot;XHTML&quot;)<br></td></tr
><tr
id=sl_svn198_780

><td class="source">               buffer-read-only)<br></td></tr
><tr
id=sl_svn198_781

><td class="source">          (when (y-or-n-p &quot;Changing text mode will remove all format information. Continue? &quot;)<br></td></tr
><tr
id=sl_svn198_782

><td class="source">            (setq evernote-note-xhtml-mode-content nil)<br></td></tr
><tr
id=sl_svn198_783

><td class="source">            (setq buffer-read-only nil)<br></td></tr
><tr
id=sl_svn198_784

><td class="source">            (setq need-change t)))<br></td></tr
><tr
id=sl_svn198_785

><td class="source">         ;; XHTML mode, raw xml.<br></td></tr
><tr
id=sl_svn198_786

><td class="source">         ((and (string= current-edit-mode &quot;XHTML&quot;)<br></td></tr
><tr
id=sl_svn198_787

><td class="source">               (not buffer-read-only))<br></td></tr
><tr
id=sl_svn198_788

><td class="source">          (setq evernote-note-xhtml-mode-content nil)<br></td></tr
><tr
id=sl_svn198_789

><td class="source">          (setq need-change t))<br></td></tr
><tr
id=sl_svn198_790

><td class="source">         ;; HTML mode.<br></td></tr
><tr
id=sl_svn198_791

><td class="source">         ((string= current-edit-mode &quot;TEXT&quot;)<br></td></tr
><tr
id=sl_svn198_792

><td class="source">          (setq buffer-read-only nil)<br></td></tr
><tr
id=sl_svn198_793

><td class="source">          (setq need-change t))))<br></td></tr
><tr
id=sl_svn198_794

><td class="source">      (when need-change<br></td></tr
><tr
id=sl_svn198_795

><td class="source">        (setq evernote-note-modified-edit-mode next-edit-mode)<br></td></tr
><tr
id=sl_svn198_796

><td class="source">        (enh-base-update-mode-line<br></td></tr
><tr
id=sl_svn198_797

><td class="source">         evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_798

><td class="source">         evernote-note-is-modified-tag-names<br></td></tr
><tr
id=sl_svn198_799

><td class="source">         evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_800

><td class="source">         evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_801

><td class="source">        (set-buffer-modified-p t)))))<br></td></tr
><tr
id=sl_svn198_802

><td class="source"><br></td></tr
><tr
id=sl_svn198_803

><td class="source"><br></td></tr
><tr
id=sl_svn198_804

><td class="source">(defun evernote-rename-note ()<br></td></tr
><tr
id=sl_svn198_805

><td class="source">  &quot;Rename a note&quot;<br></td></tr
><tr
id=sl_svn198_806

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_807

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_808

><td class="source">  (when evernote-mode<br></td></tr
><tr
id=sl_svn198_809

><td class="source">    (setq evernote-note-modified-name<br></td></tr
><tr
id=sl_svn198_810

><td class="source">          (read-string &quot;New note name:&quot;<br></td></tr
><tr
id=sl_svn198_811

><td class="source">                       (enutil-aget &#39;title (enh-get-note-attr evernote-note-guid))))<br></td></tr
><tr
id=sl_svn198_812

><td class="source">    (rename-buffer evernote-note-modified-name t)<br></td></tr
><tr
id=sl_svn198_813

><td class="source">    (enh-base-change-major-mode-from-note-name evernote-note-modified-name)<br></td></tr
><tr
id=sl_svn198_814

><td class="source">    (set-buffer-modified-p t)))<br></td></tr
><tr
id=sl_svn198_815

><td class="source"><br></td></tr
><tr
id=sl_svn198_816

><td class="source"><br></td></tr
><tr
id=sl_svn198_817

><td class="source">(defun evernote-delete-note ()<br></td></tr
><tr
id=sl_svn198_818

><td class="source">  &quot;Delete a note&quot;<br></td></tr
><tr
id=sl_svn198_819

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_820

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_821

><td class="source">  (if (and evernote-mode<br></td></tr
><tr
id=sl_svn198_822

><td class="source">           (y-or-n-p &quot;Do you really want to remove this note? &quot;))<br></td></tr
><tr
id=sl_svn198_823

><td class="source">      (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_824

><td class="source">       (enh-command-delete-note evernote-note-guid)<br></td></tr
><tr
id=sl_svn198_825

><td class="source">       (kill-buffer (current-buffer)))))<br></td></tr
><tr
id=sl_svn198_826

><td class="source"><br></td></tr
><tr
id=sl_svn198_827

><td class="source"><br></td></tr
><tr
id=sl_svn198_828

><td class="source">(defun evernote-create-notebook ()<br></td></tr
><tr
id=sl_svn198_829

><td class="source">  &quot;Create a notebook&quot;<br></td></tr
><tr
id=sl_svn198_830

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_831

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_832

><td class="source">  (let ((name (read-string &quot;Notebook Name:&quot;)))<br></td></tr
><tr
id=sl_svn198_833

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_834

><td class="source">     (enh-command-create-notebook name nil))<br></td></tr
><tr
id=sl_svn198_835

><td class="source">    (enh-browsing-reflesh-page &#39;notebook-list)))<br></td></tr
><tr
id=sl_svn198_836

><td class="source"><br></td></tr
><tr
id=sl_svn198_837

><td class="source"><br></td></tr
><tr
id=sl_svn198_838

><td class="source">(defun evernote-edit-notebook ()<br></td></tr
><tr
id=sl_svn198_839

><td class="source">  &quot;Create a notebook&quot;<br></td></tr
><tr
id=sl_svn198_840

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_841

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_842

><td class="source">  (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_843

><td class="source">   (let* ((notebook-alist (enh-get-notebook-name-attr-alist))<br></td></tr
><tr
id=sl_svn198_844

><td class="source">          (notebook-attr<br></td></tr
><tr
id=sl_svn198_845

><td class="source">           (enutil-aget<br></td></tr
><tr
id=sl_svn198_846

><td class="source">            (completing-read<br></td></tr
><tr
id=sl_svn198_847

><td class="source">             &quot;Notebook:&quot;<br></td></tr
><tr
id=sl_svn198_848

><td class="source">             notebook-alist<br></td></tr
><tr
id=sl_svn198_849

><td class="source">             nil t)<br></td></tr
><tr
id=sl_svn198_850

><td class="source">            notebook-alist)))<br></td></tr
><tr
id=sl_svn198_851

><td class="source">     (enh-command-update-notebook<br></td></tr
><tr
id=sl_svn198_852

><td class="source">      (enutil-aget &#39;guid notebook-attr)<br></td></tr
><tr
id=sl_svn198_853

><td class="source">      (read-string &quot;New notebook name:&quot;<br></td></tr
><tr
id=sl_svn198_854

><td class="source">                   (enutil-aget &#39;name notebook-attr))<br></td></tr
><tr
id=sl_svn198_855

><td class="source">      (yes-or-no-p &quot;Use as the default notebook:&quot;))))<br></td></tr
><tr
id=sl_svn198_856

><td class="source">  (clrhash enh-notebook-info)<br></td></tr
><tr
id=sl_svn198_857

><td class="source">  (enh-browsing-reflesh-page &#39;notebook-list))<br></td></tr
><tr
id=sl_svn198_858

><td class="source"><br></td></tr
><tr
id=sl_svn198_859

><td class="source"><br></td></tr
><tr
id=sl_svn198_860

><td class="source">(defun evernote-create-search ()<br></td></tr
><tr
id=sl_svn198_861

><td class="source">  &quot;Create a saved search&quot;<br></td></tr
><tr
id=sl_svn198_862

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_863

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_864

><td class="source">  (let ((name (read-string &quot;Saved Search Name:&quot;))<br></td></tr
><tr
id=sl_svn198_865

><td class="source">        (query (read-string &quot;Query:&quot;)))<br></td></tr
><tr
id=sl_svn198_866

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_867

><td class="source">     (enh-command-create-search name query))<br></td></tr
><tr
id=sl_svn198_868

><td class="source">    (enh-browsing-reflesh-page &#39;search-list)))<br></td></tr
><tr
id=sl_svn198_869

><td class="source"><br></td></tr
><tr
id=sl_svn198_870

><td class="source"><br></td></tr
><tr
id=sl_svn198_871

><td class="source">(defun evernote-edit-search ()<br></td></tr
><tr
id=sl_svn198_872

><td class="source">  &quot;Create a saved search&quot;<br></td></tr
><tr
id=sl_svn198_873

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_874

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_875

><td class="source">  (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_876

><td class="source">   (let* ((search-alist (enh-get-search-name-attr-alist))<br></td></tr
><tr
id=sl_svn198_877

><td class="source">          (search-attr<br></td></tr
><tr
id=sl_svn198_878

><td class="source">           (enutil-aget<br></td></tr
><tr
id=sl_svn198_879

><td class="source">            (completing-read<br></td></tr
><tr
id=sl_svn198_880

><td class="source">             &quot;Saved search:&quot;<br></td></tr
><tr
id=sl_svn198_881

><td class="source">             search-alist<br></td></tr
><tr
id=sl_svn198_882

><td class="source">             nil t)<br></td></tr
><tr
id=sl_svn198_883

><td class="source">            search-alist)))<br></td></tr
><tr
id=sl_svn198_884

><td class="source">     (enh-command-update-search<br></td></tr
><tr
id=sl_svn198_885

><td class="source">      (enutil-aget &#39;guid search-attr)<br></td></tr
><tr
id=sl_svn198_886

><td class="source">      (read-string &quot;New Saved search name:&quot;<br></td></tr
><tr
id=sl_svn198_887

><td class="source">                   (enutil-aget &#39;name search-attr))<br></td></tr
><tr
id=sl_svn198_888

><td class="source">      (read-string &quot;New Query:&quot;<br></td></tr
><tr
id=sl_svn198_889

><td class="source">                   (enutil-aget &#39;query search-attr)))))<br></td></tr
><tr
id=sl_svn198_890

><td class="source">  (clrhash enh-search-info)<br></td></tr
><tr
id=sl_svn198_891

><td class="source">  (enh-browsing-reflesh-page &#39;search-list))<br></td></tr
><tr
id=sl_svn198_892

><td class="source"><br></td></tr
><tr
id=sl_svn198_893

><td class="source"><br></td></tr
><tr
id=sl_svn198_894

><td class="source">(defun evernote-toggle-read-only ()<br></td></tr
><tr
id=sl_svn198_895

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_896

><td class="source">  (if (called-interactively-p) (enh-clear-onmem-cache))<br></td></tr
><tr
id=sl_svn198_897

><td class="source">  (when evernote-mode<br></td></tr
><tr
id=sl_svn198_898

><td class="source">    (if (string= (or evernote-note-modified-edit-mode<br></td></tr
><tr
id=sl_svn198_899

><td class="source">                     (enutil-aget &#39;editMode (enh-get-note-attr evernote-note-guid)))<br></td></tr
><tr
id=sl_svn198_900

><td class="source">                 &quot;XHTML&quot;)<br></td></tr
><tr
id=sl_svn198_901

><td class="source">        (if buffer-read-only<br></td></tr
><tr
id=sl_svn198_902

><td class="source">            (progn<br></td></tr
><tr
id=sl_svn198_903

><td class="source">              (setq buffer-read-only nil)<br></td></tr
><tr
id=sl_svn198_904

><td class="source">              (let ((orig-buffer-modified-p (buffer-modified-p)))<br></td></tr
><tr
id=sl_svn198_905

><td class="source">                (erase-buffer)<br></td></tr
><tr
id=sl_svn198_906

><td class="source">                (insert evernote-note-xhtml-mode-content)<br></td></tr
><tr
id=sl_svn198_907

><td class="source">                (goto-char (point-min))<br></td></tr
><tr
id=sl_svn198_908

><td class="source">                (set-buffer-modified-p orig-buffer-modified-p)))<br></td></tr
><tr
id=sl_svn198_909

><td class="source">          (if (buffer-modified-p)<br></td></tr
><tr
id=sl_svn198_910

><td class="source">              (progn<br></td></tr
><tr
id=sl_svn198_911

><td class="source">                (ding)<br></td></tr
><tr
id=sl_svn198_912

><td class="source">                (message &quot;Save the buffer before you toggle read only&quot;))<br></td></tr
><tr
id=sl_svn198_913

><td class="source">            (setq evernote-note-xhtml-mode-content<br></td></tr
><tr
id=sl_svn198_914

><td class="source">                  (buffer-substring (point-min) (point-max)))<br></td></tr
><tr
id=sl_svn198_915

><td class="source">            (erase-buffer)<br></td></tr
><tr
id=sl_svn198_916

><td class="source">            (enh-format-enml evernote-note-xhtml-mode-content (current-buffer))<br></td></tr
><tr
id=sl_svn198_917

><td class="source">            (goto-char (point-min))<br></td></tr
><tr
id=sl_svn198_918

><td class="source">            (set-buffer-modified-p nil)<br></td></tr
><tr
id=sl_svn198_919

><td class="source">            (setq buffer-read-only t)))<br></td></tr
><tr
id=sl_svn198_920

><td class="source">      (setq buffer-read-only (not buffer-read-only)))<br></td></tr
><tr
id=sl_svn198_921

><td class="source">    (force-mode-line-update)))<br></td></tr
><tr
id=sl_svn198_922

><td class="source"><br></td></tr
><tr
id=sl_svn198_923

><td class="source"><br></td></tr
><tr
id=sl_svn198_924

><td class="source">(defvar evernote-mode-info-for-changing-major-mode nil<br></td></tr
><tr
id=sl_svn198_925

><td class="source">  &quot;Temporal values used when changing the major mode&quot;)<br></td></tr
><tr
id=sl_svn198_926

><td class="source"><br></td></tr
><tr
id=sl_svn198_927

><td class="source"><br></td></tr
><tr
id=sl_svn198_928

><td class="source">(defun evernote-mode-after-save-hook ()<br></td></tr
><tr
id=sl_svn198_929

><td class="source">  &quot;After save hook for evernote mode. This invalid evernote-mode&quot;<br></td></tr
><tr
id=sl_svn198_930

><td class="source">  (if evernote-mode<br></td></tr
><tr
id=sl_svn198_931

><td class="source">      (evernote-mode)))<br></td></tr
><tr
id=sl_svn198_932

><td class="source"><br></td></tr
><tr
id=sl_svn198_933

><td class="source"><br></td></tr
><tr
id=sl_svn198_934

><td class="source">(defun evernote-mode-change-major-mode-hook ()<br></td></tr
><tr
id=sl_svn198_935

><td class="source">  &quot;Change major mode hook for evernote mode. This records the note info to the global variable to restore them after changing the major mode&quot;<br></td></tr
><tr
id=sl_svn198_936

><td class="source">  (if evernote-mode<br></td></tr
><tr
id=sl_svn198_937

><td class="source">      (setq evernote-mode-info-for-changing-major-mode<br></td></tr
><tr
id=sl_svn198_938

><td class="source">            (list<br></td></tr
><tr
id=sl_svn198_939

><td class="source">             (cons &#39;guid  evernote-note-guid)<br></td></tr
><tr
id=sl_svn198_940

><td class="source">             (cons &#39;modified-name evernote-note-modified-name)<br></td></tr
><tr
id=sl_svn198_941

><td class="source">             (cons &#39;modified-notebook-guid evernote-note-modified-notebook-guid)<br></td></tr
><tr
id=sl_svn198_942

><td class="source">             (cons &#39;is-modified-tag-names evernote-note-is-modified-tag-names)<br></td></tr
><tr
id=sl_svn198_943

><td class="source">             (cons &#39;modified-tag-names evernote-note-modified-tag-names)<br></td></tr
><tr
id=sl_svn198_944

><td class="source">             (cons &#39;modified-edit-mode evernote-note-modified-edit-mode)<br></td></tr
><tr
id=sl_svn198_945

><td class="source">             (cons &#39;note-xhtml-mode-content evernote-note-xhtml-mode-content)))))<br></td></tr
><tr
id=sl_svn198_946

><td class="source"><br></td></tr
><tr
id=sl_svn198_947

><td class="source"><br></td></tr
><tr
id=sl_svn198_948

><td class="source">(defun evernote-mode-after-change-major-mode-hook ()<br></td></tr
><tr
id=sl_svn198_949

><td class="source">  &quot;After change major mode hook for evernote mode. This restore the note info after changing the major mode&quot;<br></td></tr
><tr
id=sl_svn198_950

><td class="source">  (if evernote-mode-info-for-changing-major-mode<br></td></tr
><tr
id=sl_svn198_951

><td class="source">      (progn<br></td></tr
><tr
id=sl_svn198_952

><td class="source">        (setq evernote-note-modified-name<br></td></tr
><tr
id=sl_svn198_953

><td class="source">              (enutil-aget &#39;modified-name evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_954

><td class="source">        (setq evernote-note-modified-notebook-guid<br></td></tr
><tr
id=sl_svn198_955

><td class="source">              (enutil-aget &#39;modified-notebook-guid evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_956

><td class="source">        (setq evernote-note-is-modified-tag-names<br></td></tr
><tr
id=sl_svn198_957

><td class="source">              (enutil-aget &#39;is-modified-tag-names evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_958

><td class="source">        (setq evernote-note-modified-tag-names<br></td></tr
><tr
id=sl_svn198_959

><td class="source">              (enutil-aget &#39;modified-tag-names evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_960

><td class="source">        (setq evernote-note-modified-edit-mode<br></td></tr
><tr
id=sl_svn198_961

><td class="source">              (enutil-aget &#39;modified-edit-mode evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_962

><td class="source">        (evernote-mode ; this must be after setting evernote-note-modified-xxx<br></td></tr
><tr
id=sl_svn198_963

><td class="source">         (enutil-aget &#39;guid evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_964

><td class="source">        (setq evernote-note-xhtml-mode-content<br></td></tr
><tr
id=sl_svn198_965

><td class="source">              (enutil-aget &#39;note-xhtml-mode-content evernote-mode-info-for-changing-major-mode))<br></td></tr
><tr
id=sl_svn198_966

><td class="source">        (setq evernote-mode-info-for-changing-major-mode nil))))<br></td></tr
><tr
id=sl_svn198_967

><td class="source"><br></td></tr
><tr
id=sl_svn198_968

><td class="source"><br></td></tr
><tr
id=sl_svn198_969

><td class="source">(add-hook &#39;after-change-major-mode-hook<br></td></tr
><tr
id=sl_svn198_970

><td class="source">          &#39;evernote-mode-after-change-major-mode-hook)<br></td></tr
><tr
id=sl_svn198_971

><td class="source"><br></td></tr
><tr
id=sl_svn198_972

><td class="source"><br></td></tr
><tr
id=sl_svn198_973

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_974

><td class="source">;; Interface for inputing the note name in the minibuffer.<br></td></tr
><tr
id=sl_svn198_975

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_976

><td class="source"><br></td></tr
><tr
id=sl_svn198_977

><td class="source">(defvar evernote-read-note-map<br></td></tr
><tr
id=sl_svn198_978

><td class="source">  (let ((map (make-sparse-keymap)))<br></td></tr
><tr
id=sl_svn198_979

><td class="source">    (set-keymap-parent map minibuffer-local-completion-map)<br></td></tr
><tr
id=sl_svn198_980

><td class="source">    map))<br></td></tr
><tr
id=sl_svn198_981

><td class="source">(define-key evernote-read-note-map [tab] &#39;evernote-read-note-completion)<br></td></tr
><tr
id=sl_svn198_982

><td class="source">(define-key evernote-read-note-map &quot;\C-i&quot; &#39;evernote-read-note-completion)<br></td></tr
><tr
id=sl_svn198_983

><td class="source">(define-key evernote-read-note-map &quot;\C-m&quot; &#39;evernote-read-note-finish)<br></td></tr
><tr
id=sl_svn198_984

><td class="source">(define-key evernote-read-note-map  &quot; &quot;   &#39;self-insert-command)<br></td></tr
><tr
id=sl_svn198_985

><td class="source"><br></td></tr
><tr
id=sl_svn198_986

><td class="source"><br></td></tr
><tr
id=sl_svn198_987

><td class="source">(defun evernote-read-note-completion ()<br></td></tr
><tr
id=sl_svn198_988

><td class="source">  &quot;Complete note name and display completion list&quot;<br></td></tr
><tr
id=sl_svn198_989

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_990

><td class="source">  (let (word result start)<br></td></tr
><tr
id=sl_svn198_991

><td class="source">    (setq word (enutil-get-minibuffer-string))<br></td></tr
><tr
id=sl_svn198_992

><td class="source">    (setq result (try-completion word enh-base-displayed-name-attr-alist))<br></td></tr
><tr
id=sl_svn198_993

><td class="source">    (cond<br></td></tr
><tr
id=sl_svn198_994

><td class="source">     ((eq result t)<br></td></tr
><tr
id=sl_svn198_995

><td class="source">      (enutil-minibuffer-tmp-message &quot;[Sole Completion]&quot;))<br></td></tr
><tr
id=sl_svn198_996

><td class="source">     ((eq result nil)<br></td></tr
><tr
id=sl_svn198_997

><td class="source">      (ding)<br></td></tr
><tr
id=sl_svn198_998

><td class="source">      (enutil-minibuffer-tmp-message &quot;[No Match]&quot;))<br></td></tr
><tr
id=sl_svn198_999

><td class="source">     ((string= result word)<br></td></tr
><tr
id=sl_svn198_1000

><td class="source">      (enh-base-display-note-completion-buf<br></td></tr
><tr
id=sl_svn198_1001

><td class="source">       enh-base-displayed-name-formatted-name-alist<br></td></tr
><tr
id=sl_svn198_1002

><td class="source">       word))<br></td></tr
><tr
id=sl_svn198_1003

><td class="source">     (t (enutil-set-minibuffer-string result)<br></td></tr
><tr
id=sl_svn198_1004

><td class="source">        (end-of-buffer)<br></td></tr
><tr
id=sl_svn198_1005

><td class="source">        (if (eq t<br></td></tr
><tr
id=sl_svn198_1006

><td class="source">                (try-completion result<br></td></tr
><tr
id=sl_svn198_1007

><td class="source">                                enh-base-displayed-name-attr-alist))<br></td></tr
><tr
id=sl_svn198_1008

><td class="source">            nil<br></td></tr
><tr
id=sl_svn198_1009

><td class="source">          (enutil-minibuffer-tmp-message &quot;[Complete, but not unique]&quot;))))))<br></td></tr
><tr
id=sl_svn198_1010

><td class="source"><br></td></tr
><tr
id=sl_svn198_1011

><td class="source"><br></td></tr
><tr
id=sl_svn198_1012

><td class="source">(defun evernote-read-note-finish ()<br></td></tr
><tr
id=sl_svn198_1013

><td class="source">  &quot;Finish input note name&quot;<br></td></tr
><tr
id=sl_svn198_1014

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_1015

><td class="source">  (if (assoc<br></td></tr
><tr
id=sl_svn198_1016

><td class="source">       (enutil-get-minibuffer-string)<br></td></tr
><tr
id=sl_svn198_1017

><td class="source">       enh-base-displayed-name-attr-alist)<br></td></tr
><tr
id=sl_svn198_1018

><td class="source">      (progn<br></td></tr
><tr
id=sl_svn198_1019

><td class="source">        (let ((completion-buf (get-buffer &quot;*Evernote-Completions*&quot;)))<br></td></tr
><tr
id=sl_svn198_1020

><td class="source">          (if completion-buf<br></td></tr
><tr
id=sl_svn198_1021

><td class="source">              (kill-buffer completion-buf)))<br></td></tr
><tr
id=sl_svn198_1022

><td class="source">        (exit-minibuffer))<br></td></tr
><tr
id=sl_svn198_1023

><td class="source">    (enutil-minibuffer-tmp-message &quot;[No Match]&quot;)))<br></td></tr
><tr
id=sl_svn198_1024

><td class="source"><br></td></tr
><tr
id=sl_svn198_1025

><td class="source"><br></td></tr
><tr
id=sl_svn198_1026

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1027

><td class="source">;; Interface for evernote-search-mode.<br></td></tr
><tr
id=sl_svn198_1028

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1029

><td class="source"><br></td></tr
><tr
id=sl_svn198_1030

><td class="source">(defvar evernote-search-mode-map<br></td></tr
><tr
id=sl_svn198_1031

><td class="source">  (let ((map (make-sparse-keymap)))<br></td></tr
><tr
id=sl_svn198_1032

><td class="source">    (set-keymap-parent map global-map)<br></td></tr
><tr
id=sl_svn198_1033

><td class="source">    map)<br></td></tr
><tr
id=sl_svn198_1034

><td class="source">  &quot;Keymap used in evernote search mode.&quot;)<br></td></tr
><tr
id=sl_svn198_1035

><td class="source">(define-key evernote-search-mode-map &quot;\C-m&quot; &#39;evernote-select-note-in-search-mode)<br></td></tr
><tr
id=sl_svn198_1036

><td class="source"><br></td></tr
><tr
id=sl_svn198_1037

><td class="source">(defvar evernote-search-mode-formatted-name-displayed-name-alist nil<br></td></tr
><tr
id=sl_svn198_1038

><td class="source">  &quot;Alist from formatted names to names used only in evernote-search-mode buffer&quot;)<br></td></tr
><tr
id=sl_svn198_1039

><td class="source">(make-variable-buffer-local &#39;evernote-search-mode-formatted-name-displayed-name-alist)<br></td></tr
><tr
id=sl_svn198_1040

><td class="source"><br></td></tr
><tr
id=sl_svn198_1041

><td class="source"><br></td></tr
><tr
id=sl_svn198_1042

><td class="source">(defun evernote-search-mode ()<br></td></tr
><tr
id=sl_svn198_1043

><td class="source">  &quot;Major mode for selecting a note.&quot;<br></td></tr
><tr
id=sl_svn198_1044

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_1045

><td class="source">  (use-local-map evernote-search-mode-map)<br></td></tr
><tr
id=sl_svn198_1046

><td class="source">  (setq buffer-read-only t<br></td></tr
><tr
id=sl_svn198_1047

><td class="source">        truncate-lines t<br></td></tr
><tr
id=sl_svn198_1048

><td class="source">        major-mode &#39;evernote-search-mode<br></td></tr
><tr
id=sl_svn198_1049

><td class="source">        mode-name &quot;Evernote-Search&quot;)<br></td></tr
><tr
id=sl_svn198_1050

><td class="source">  (goto-char (point-min)))<br></td></tr
><tr
id=sl_svn198_1051

><td class="source"><br></td></tr
><tr
id=sl_svn198_1052

><td class="source"><br></td></tr
><tr
id=sl_svn198_1053

><td class="source">(defun evernote-select-note-in-search-mode ()<br></td></tr
><tr
id=sl_svn198_1054

><td class="source">  &quot;Select a note name on this buffer and input it into the mini buffer&quot;<br></td></tr
><tr
id=sl_svn198_1055

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_1056

><td class="source">  (if (active-minibuffer-window)<br></td></tr
><tr
id=sl_svn198_1057

><td class="source">      (save-excursion<br></td></tr
><tr
id=sl_svn198_1058

><td class="source">        (let (displayed-name)<br></td></tr
><tr
id=sl_svn198_1059

><td class="source">          (setq displayed-name<br></td></tr
><tr
id=sl_svn198_1060

><td class="source">                (enutil-aget<br></td></tr
><tr
id=sl_svn198_1061

><td class="source">                 (enutil-get-current-line-string)<br></td></tr
><tr
id=sl_svn198_1062

><td class="source">                 evernote-search-mode-formatted-name-displayed-name-alist))<br></td></tr
><tr
id=sl_svn198_1063

><td class="source">          (if displayed-name<br></td></tr
><tr
id=sl_svn198_1064

><td class="source">              (progn<br></td></tr
><tr
id=sl_svn198_1065

><td class="source">                (kill-buffer (current-buffer))<br></td></tr
><tr
id=sl_svn198_1066

><td class="source">                (enutil-set-minibuffer-string displayed-name)<br></td></tr
><tr
id=sl_svn198_1067

><td class="source">                (exit-minibuffer)))))<br></td></tr
><tr
id=sl_svn198_1068

><td class="source">    (kill-buffer (current-buffer))))<br></td></tr
><tr
id=sl_svn198_1069

><td class="source"><br></td></tr
><tr
id=sl_svn198_1070

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1071

><td class="source">;; For Anything<br></td></tr
><tr
id=sl_svn198_1072

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1073

><td class="source"><br></td></tr
><tr
id=sl_svn198_1074

><td class="source">(defun anything-c-evernote-title-set-candidates ()<br></td></tr
><tr
id=sl_svn198_1075

><td class="source">  (let ((buffer (get-buffer enh-command-output-buffer-name))<br></td></tr
><tr
id=sl_svn198_1076

><td class="source">        candidates)<br></td></tr
><tr
id=sl_svn198_1077

><td class="source">    (when buffer ; create candidates only when logined.<br></td></tr
><tr
id=sl_svn198_1078

><td class="source">      (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_1079

><td class="source">       (setq candidates<br></td></tr
><tr
id=sl_svn198_1080

><td class="source">             (enh-command-get-note-attrs-from-query<br></td></tr
><tr
id=sl_svn198_1081

><td class="source">               ; Put &#39;*&#39; to match the start of a word.<br></td></tr
><tr
id=sl_svn198_1082

><td class="source">               ; Note: A wildcard is only permitted at the end of the term,<br></td></tr
><tr
id=sl_svn198_1083

><td class="source">               ;       not at the beginning or middle for scalability reasons on the service<br></td></tr
><tr
id=sl_svn198_1084

><td class="source">              (format &quot;intitle:\&quot;%s\&quot;*&quot; anything-input))))<br></td></tr
><tr
id=sl_svn198_1085

><td class="source">      candidates)))<br></td></tr
><tr
id=sl_svn198_1086

><td class="source"><br></td></tr
><tr
id=sl_svn198_1087

><td class="source"><br></td></tr
><tr
id=sl_svn198_1088

><td class="source">(defun anything-c-evernote-title-candidate-transformer (candidates)<br></td></tr
><tr
id=sl_svn198_1089

><td class="source">  (mapcar (lambda (cand)<br></td></tr
><tr
id=sl_svn198_1090

><td class="source">            (cons (enutil-aget &#39;title cand) cand))<br></td></tr
><tr
id=sl_svn198_1091

><td class="source">          candidates))<br></td></tr
><tr
id=sl_svn198_1092

><td class="source"><br></td></tr
><tr
id=sl_svn198_1093

><td class="source"><br></td></tr
><tr
id=sl_svn198_1094

><td class="source">(defun anything-c-evernote-title-action (candidate)<br></td></tr
><tr
id=sl_svn198_1095

><td class="source">  (enh-base-open-note-common candidate))<br></td></tr
><tr
id=sl_svn198_1096

><td class="source"><br></td></tr
><tr
id=sl_svn198_1097

><td class="source"><br></td></tr
><tr
id=sl_svn198_1098

><td class="source">(defvar anything-c-source-evernote-title<br></td></tr
><tr
id=sl_svn198_1099

><td class="source">  &#39;((name . &quot;Evernote Title&quot;)<br></td></tr
><tr
id=sl_svn198_1100

><td class="source">    (candidates . anything-c-evernote-title-set-candidates)<br></td></tr
><tr
id=sl_svn198_1101

><td class="source">    (candidate-transformer . anything-c-evernote-title-candidate-transformer)<br></td></tr
><tr
id=sl_svn198_1102

><td class="source">    (action . ((&quot;Open&quot; . anything-c-evernote-title-action)))<br></td></tr
><tr
id=sl_svn198_1103

><td class="source">    (volatile)<br></td></tr
><tr
id=sl_svn198_1104

><td class="source">    (requires-pattern . 3)<br></td></tr
><tr
id=sl_svn198_1105

><td class="source">    (delayed)))<br></td></tr
><tr
id=sl_svn198_1106

><td class="source"><br></td></tr
><tr
id=sl_svn198_1107

><td class="source"><br></td></tr
><tr
id=sl_svn198_1108

><td class="source">(defun anything-evernote-title ()<br></td></tr
><tr
id=sl_svn198_1109

><td class="source">  &quot;Preconfigured `anything&#39; for searching notes with the note names.&quot;<br></td></tr
><tr
id=sl_svn198_1110

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_1111

><td class="source">  (anything-other-buffer &#39;anything-c-source-evernote-title &quot;*anything evernote title*&quot;))<br></td></tr
><tr
id=sl_svn198_1112

><td class="source"><br></td></tr
><tr
id=sl_svn198_1113

><td class="source"><br></td></tr
><tr
id=sl_svn198_1114

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1115

><td class="source">;; Helper functions for evernote-mode (enh-base-xxx)<br></td></tr
><tr
id=sl_svn198_1116

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1117

><td class="source"><br></td></tr
><tr
id=sl_svn198_1118

><td class="source">(defconst enh-base-enml-template<br></td></tr
><tr
id=sl_svn198_1119

><td class="source">  (concat<br></td></tr
><tr
id=sl_svn198_1120

><td class="source">   &quot;&lt;?xml version=\&quot;1.0\&quot; encoding=\&quot;UTF-8\&quot;?&gt;\n&quot;<br></td></tr
><tr
id=sl_svn198_1121

><td class="source">   &quot;&lt;!DOCTYPE en-note SYSTEM \&quot;http://xml.evernote.com/pub/enml2.dtd\&quot;&gt;\n&quot;<br></td></tr
><tr
id=sl_svn198_1122

><td class="source">   &quot;&lt;en-note&gt;\n&quot;<br></td></tr
><tr
id=sl_svn198_1123

><td class="source">   &quot;&lt;/en-note&gt;\n&quot;))<br></td></tr
><tr
id=sl_svn198_1124

><td class="source"><br></td></tr
><tr
id=sl_svn198_1125

><td class="source"><br></td></tr
><tr
id=sl_svn198_1126

><td class="source">(defun enh-base-open-note-common (note-attr)<br></td></tr
><tr
id=sl_svn198_1127

><td class="source">  &quot;Common procedure of opening a note&quot;<br></td></tr
><tr
id=sl_svn198_1128

><td class="source">  (let* ((note-guid (enutil-aget &#39;guid note-attr))<br></td></tr
><tr
id=sl_svn198_1129

><td class="source">         (note-name (enutil-aget &#39;title note-attr))<br></td></tr
><tr
id=sl_svn198_1130

><td class="source">         (note-edit-mode (enutil-aget &#39;editMode note-attr))<br></td></tr
><tr
id=sl_svn198_1131

><td class="source">         (note-content-file (enutil-aget &#39;contentFile note-attr))<br></td></tr
><tr
id=sl_svn198_1132

><td class="source">         (opened-buf (enh-base-find-opened-buffer note-guid)))<br></td></tr
><tr
id=sl_svn198_1133

><td class="source">    (unless note-content-file<br></td></tr
><tr
id=sl_svn198_1134

><td class="source">      (setq note-attr (enh-get-note-attr note-guid))<br></td></tr
><tr
id=sl_svn198_1135

><td class="source">      (setq note-content-file (enutil-aget &#39;contentFile note-attr)))<br></td></tr
><tr
id=sl_svn198_1136

><td class="source">    (if opened-buf<br></td></tr
><tr
id=sl_svn198_1137

><td class="source">        (enutil-move-cursor-to-window opened-buf t)<br></td></tr
><tr
id=sl_svn198_1138

><td class="source">      (let ((buf (generate-new-buffer note-name)))<br></td></tr
><tr
id=sl_svn198_1139

><td class="source">        (set-buffer buf)<br></td></tr
><tr
id=sl_svn198_1140

><td class="source">        (insert-file-contents note-content-file)<br></td></tr
><tr
id=sl_svn198_1141

><td class="source">        (when (string= note-edit-mode &quot;XHTML&quot;)<br></td></tr
><tr
id=sl_svn198_1142

><td class="source">          (setq evernote-note-xhtml-mode-content (buffer-string))<br></td></tr
><tr
id=sl_svn198_1143

><td class="source">          (erase-buffer)<br></td></tr
><tr
id=sl_svn198_1144

><td class="source">          (enh-format-enml evernote-note-xhtml-mode-content (current-buffer))<br></td></tr
><tr
id=sl_svn198_1145

><td class="source">          (setq buffer-read-only t))<br></td></tr
><tr
id=sl_svn198_1146

><td class="source">        (evernote-mode note-guid)<br></td></tr
><tr
id=sl_svn198_1147

><td class="source">        ; this must be after (evernote-mode) that setup the change major mode hooks.<br></td></tr
><tr
id=sl_svn198_1148

><td class="source">        (enh-base-change-major-mode-from-note-name note-name)<br></td></tr
><tr
id=sl_svn198_1149

><td class="source">        (goto-char (point-min))<br></td></tr
><tr
id=sl_svn198_1150

><td class="source">        (set-buffer-modified-p nil)<br></td></tr
><tr
id=sl_svn198_1151

><td class="source">        (pop-to-buffer buf)))))<br></td></tr
><tr
id=sl_svn198_1152

><td class="source"><br></td></tr
><tr
id=sl_svn198_1153

><td class="source"><br></td></tr
><tr
id=sl_svn198_1154

><td class="source">(defun enh-base-create-note-common (default-note-name<br></td></tr
><tr
id=sl_svn198_1155

><td class="source">                                     ask-notebook<br></td></tr
><tr
id=sl_svn198_1156

><td class="source">                                     create-new-buffer<br></td></tr
><tr
id=sl_svn198_1157

><td class="source">                                     change-to-evernote-mode<br></td></tr
><tr
id=sl_svn198_1158

><td class="source">                                     &amp;optional<br></td></tr
><tr
id=sl_svn198_1159

><td class="source">                                     use-current-buffer-content)<br></td></tr
><tr
id=sl_svn198_1160

><td class="source">  &quot;Common procedure of creating a note&quot;<br></td></tr
><tr
id=sl_svn198_1161

><td class="source">  (let ((notebook-guid (and ask-notebook<br></td></tr
><tr
id=sl_svn198_1162

><td class="source">                            (enutil-aget &#39;guid (enh-read-notebook))))<br></td></tr
><tr
id=sl_svn198_1163

><td class="source">        (tag-names (enh-read-tag-names))<br></td></tr
><tr
id=sl_svn198_1164

><td class="source">        (name (read-string &quot;Note name:&quot; default-note-name))<br></td></tr
><tr
id=sl_svn198_1165

><td class="source">        (edit-mode (enh-read-edit-mode &quot;TEXT&quot;))<br></td></tr
><tr
id=sl_svn198_1166

><td class="source">        content<br></td></tr
><tr
id=sl_svn198_1167

><td class="source">        note-attr)<br></td></tr
><tr
id=sl_svn198_1168

><td class="source">    (if use-current-buffer-content<br></td></tr
><tr
id=sl_svn198_1169

><td class="source">        ;; create a note from a buffer.<br></td></tr
><tr
id=sl_svn198_1170

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn198_1171

><td class="source">          (setq note-attr<br></td></tr
><tr
id=sl_svn198_1172

><td class="source">                (enh-command-create-note (current-buffer)<br></td></tr
><tr
id=sl_svn198_1173

><td class="source">                                         name<br></td></tr
><tr
id=sl_svn198_1174

><td class="source">                                         notebook-guid<br></td></tr
><tr
id=sl_svn198_1175

><td class="source">                                         tag-names<br></td></tr
><tr
id=sl_svn198_1176

><td class="source">                                         edit-mode))<br></td></tr
><tr
id=sl_svn198_1177

><td class="source">          (setq content (buffer-substring (point-min) (point-max))))<br></td></tr
><tr
id=sl_svn198_1178

><td class="source">      ;; create a note from scratch.<br></td></tr
><tr
id=sl_svn198_1179

><td class="source">      (if (string= edit-mode &quot;TEXT&quot;) ;; edit-mode = TEXT<br></td></tr
><tr
id=sl_svn198_1180

><td class="source">          (with-temp-buffer<br></td></tr
><tr
id=sl_svn198_1181

><td class="source">            (setq note-attr<br></td></tr
><tr
id=sl_svn198_1182

><td class="source">                  (enh-command-create-note (current-buffer)<br></td></tr
><tr
id=sl_svn198_1183

><td class="source">                                           name<br></td></tr
><tr
id=sl_svn198_1184

><td class="source">                                           notebook-guid<br></td></tr
><tr
id=sl_svn198_1185

><td class="source">                                           tag-names<br></td></tr
><tr
id=sl_svn198_1186

><td class="source">                                           edit-mode)))<br></td></tr
><tr
id=sl_svn198_1187

><td class="source">        (with-temp-buffer ;; edit-mode = XHTML<br></td></tr
><tr
id=sl_svn198_1188

><td class="source">          (insert enh-base-enml-template)<br></td></tr
><tr
id=sl_svn198_1189

><td class="source">          (setq note-attr<br></td></tr
><tr
id=sl_svn198_1190

><td class="source">                (enh-command-create-note (current-buffer)<br></td></tr
><tr
id=sl_svn198_1191

><td class="source">                                         name<br></td></tr
><tr
id=sl_svn198_1192

><td class="source">                                         notebook-guid<br></td></tr
><tr
id=sl_svn198_1193

><td class="source">                                         tag-names<br></td></tr
><tr
id=sl_svn198_1194

><td class="source">                                         edit-mode))<br></td></tr
><tr
id=sl_svn198_1195

><td class="source">          (setq content (buffer-substring (point-min) (point-max))))))<br></td></tr
><tr
id=sl_svn198_1196

><td class="source">    (enh-update-note-and-new-tag-attrs note-attr)<br></td></tr
><tr
id=sl_svn198_1197

><td class="source">    (let ((buf nil))<br></td></tr
><tr
id=sl_svn198_1198

><td class="source">      (save-excursion<br></td></tr
><tr
id=sl_svn198_1199

><td class="source">        (if create-new-buffer<br></td></tr
><tr
id=sl_svn198_1200

><td class="source">            (progn<br></td></tr
><tr
id=sl_svn198_1201

><td class="source">              (setq buf (generate-new-buffer name))<br></td></tr
><tr
id=sl_svn198_1202

><td class="source">              (set-buffer buf)<br></td></tr
><tr
id=sl_svn198_1203

><td class="source">              (when content (insert content)))<br></td></tr
><tr
id=sl_svn198_1204

><td class="source">          (when change-to-evernote-mode<br></td></tr
><tr
id=sl_svn198_1205

><td class="source">            (rename-buffer name t)))<br></td></tr
><tr
id=sl_svn198_1206

><td class="source">        (when change-to-evernote-mode<br></td></tr
><tr
id=sl_svn198_1207

><td class="source">          (set-visited-file-name nil) ; set-visited-file-name must be before (evernote-mode) because it changes the mode line.<br></td></tr
><tr
id=sl_svn198_1208

><td class="source">          (enh-base-change-major-mode-from-note-name name)<br></td></tr
><tr
id=sl_svn198_1209

><td class="source">          (if (not evernote-mode)<br></td></tr
><tr
id=sl_svn198_1210

><td class="source">              (evernote-mode (enutil-aget &#39;guid note-attr))<br></td></tr
><tr
id=sl_svn198_1211

><td class="source">            (setq evernote-note-guid (enutil-aget &#39;guid note-attr))<br></td></tr
><tr
id=sl_svn198_1212

><td class="source">            (enh-base-update-mode-line))<br></td></tr
><tr
id=sl_svn198_1213

><td class="source">          (set-buffer-modified-p nil)))<br></td></tr
><tr
id=sl_svn198_1214

><td class="source">      buf)))<br></td></tr
><tr
id=sl_svn198_1215

><td class="source"><br></td></tr
><tr
id=sl_svn198_1216

><td class="source"><br></td></tr
><tr
id=sl_svn198_1217

><td class="source">(defun enh-base-update-note-common (inbuf guid &amp;optional name notebook-guid is-tag-updated tag-names edit-mode)<br></td></tr
><tr
id=sl_svn198_1218

><td class="source">  &quot;Common procedure of opening a note&quot;<br></td></tr
><tr
id=sl_svn198_1219

><td class="source">  (let ((attr (enh-get-note-attr guid)))<br></td></tr
><tr
id=sl_svn198_1220

><td class="source">    (setq attr<br></td></tr
><tr
id=sl_svn198_1221

><td class="source">          (enh-command-update-note inbuf guid name notebook-guid is-tag-updated tag-names edit-mode))<br></td></tr
><tr
id=sl_svn198_1222

><td class="source">    (enh-update-note-and-new-tag-attrs attr)))<br></td></tr
><tr
id=sl_svn198_1223

><td class="source"><br></td></tr
><tr
id=sl_svn198_1224

><td class="source"><br></td></tr
><tr
id=sl_svn198_1225

><td class="source">(defun enh-base-read-note-attr (note-attrs &amp;optional display-completion)<br></td></tr
><tr
id=sl_svn198_1226

><td class="source">  &quot;Prompts a note name and returns a note attribute&quot;<br></td></tr
><tr
id=sl_svn198_1227

><td class="source">  (let ((name-num-hash (make-hash-table :test #&#39;equal))<br></td></tr
><tr
id=sl_svn198_1228

><td class="source">        enh-base-displayed-name-attr-alist ; used in evernote-search-mode<br></td></tr
><tr
id=sl_svn198_1229

><td class="source">        enh-base-displayed-name-formatted-name-alist) ; used in evernote-search-mode<br></td></tr
><tr
id=sl_svn198_1230

><td class="source">    (mapc<br></td></tr
><tr
id=sl_svn198_1231

><td class="source">     (lambda (attr)<br></td></tr
><tr
id=sl_svn198_1232

><td class="source">       (let (name displayed-name)<br></td></tr
><tr
id=sl_svn198_1233

><td class="source">         (setq name (enutil-aget &#39;title attr))<br></td></tr
><tr
id=sl_svn198_1234

><td class="source">         (setq displayed-name<br></td></tr
><tr
id=sl_svn198_1235

><td class="source">               (enh-base-get-displayed-note-name name name-num-hash))<br></td></tr
><tr
id=sl_svn198_1236

><td class="source">         (setq enh-base-displayed-name-attr-alist<br></td></tr
><tr
id=sl_svn198_1237

><td class="source">               (cons (cons displayed-name attr)<br></td></tr
><tr
id=sl_svn198_1238

><td class="source">                     enh-base-displayed-name-attr-alist))<br></td></tr
><tr
id=sl_svn198_1239

><td class="source">         (setq enh-base-displayed-name-formatted-name-alist<br></td></tr
><tr
id=sl_svn198_1240

><td class="source">               (cons (cons displayed-name<br></td></tr
><tr
id=sl_svn198_1241

><td class="source">                           (format &quot;%-30s   %-20s   %-15s   %s&quot;<br></td></tr
><tr
id=sl_svn198_1242

><td class="source">                                   (enutil-aget &#39;updated attr)<br></td></tr
><tr
id=sl_svn198_1243

><td class="source">                                   (enutil-aget &#39;name<br></td></tr
><tr
id=sl_svn198_1244

><td class="source">                                                (enh-get-notebook-attr (enutil-aget &#39;notebookGuid attr)))<br></td></tr
><tr
id=sl_svn198_1245

><td class="source">                                   (enh-tag-guids-to-comma-separated-names<br></td></tr
><tr
id=sl_svn198_1246

><td class="source">                                    (enutil-aget &#39;tagGuids attr)<br></td></tr
><tr
id=sl_svn198_1247

><td class="source">                                    15)<br></td></tr
><tr
id=sl_svn198_1248

><td class="source">                                   displayed-name))<br></td></tr
><tr
id=sl_svn198_1249

><td class="source">                     enh-base-displayed-name-formatted-name-alist))))<br></td></tr
><tr
id=sl_svn198_1250

><td class="source">     note-attrs)<br></td></tr
><tr
id=sl_svn198_1251

><td class="source">    (setq enh-base-displayed-name-attr-alist<br></td></tr
><tr
id=sl_svn198_1252

><td class="source">          (nreverse enh-base-displayed-name-attr-alist))<br></td></tr
><tr
id=sl_svn198_1253

><td class="source">    (setq enh-base-displayed-name-formatted-name-alist<br></td></tr
><tr
id=sl_svn198_1254

><td class="source">          (nreverse enh-base-displayed-name-formatted-name-alist))<br></td></tr
><tr
id=sl_svn198_1255

><td class="source">    (if display-completion<br></td></tr
><tr
id=sl_svn198_1256

><td class="source">        (enh-base-display-note-completion-buf<br></td></tr
><tr
id=sl_svn198_1257

><td class="source">         enh-base-displayed-name-formatted-name-alist))<br></td></tr
><tr
id=sl_svn198_1258

><td class="source">    (enutil-aget (read-from-minibuffer &quot;Note:&quot;<br></td></tr
><tr
id=sl_svn198_1259

><td class="source">                                       nil evernote-read-note-map)<br></td></tr
><tr
id=sl_svn198_1260

><td class="source">                 enh-base-displayed-name-attr-alist)))<br></td></tr
><tr
id=sl_svn198_1261

><td class="source"><br></td></tr
><tr
id=sl_svn198_1262

><td class="source"><br></td></tr
><tr
id=sl_svn198_1263

><td class="source">(defun enh-base-get-displayed-note-name (name name-hash)<br></td></tr
><tr
id=sl_svn198_1264

><td class="source">  &quot;Get displayed note name from the read note name&quot;<br></td></tr
><tr
id=sl_svn198_1265

><td class="source">  (let ((num (gethash name name-num-hash))<br></td></tr
><tr
id=sl_svn198_1266

><td class="source">        result)<br></td></tr
><tr
id=sl_svn198_1267

><td class="source">    (if num<br></td></tr
><tr
id=sl_svn198_1268

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn198_1269

><td class="source">          (setq num (+ num 1))<br></td></tr
><tr
id=sl_svn198_1270

><td class="source">          (setq result (format &quot;%s(%d)&quot; name num))<br></td></tr
><tr
id=sl_svn198_1271

><td class="source">          (puthash name num name-num-hash))<br></td></tr
><tr
id=sl_svn198_1272

><td class="source">      (setq result (substring name 0))<br></td></tr
><tr
id=sl_svn198_1273

><td class="source">      (puthash name 1 name-num-hash))<br></td></tr
><tr
id=sl_svn198_1274

><td class="source">    result))<br></td></tr
><tr
id=sl_svn198_1275

><td class="source"><br></td></tr
><tr
id=sl_svn198_1276

><td class="source"><br></td></tr
><tr
id=sl_svn198_1277

><td class="source">(defun enh-base-display-note-completion-buf (displayed-name-formatted-name-alist &amp;optional word)<br></td></tr
><tr
id=sl_svn198_1278

><td class="source">  (let (formatted-name-displayed-name-alist completion-buf)<br></td></tr
><tr
id=sl_svn198_1279

><td class="source">    (setq formatted-name-displayed-name-alist<br></td></tr
><tr
id=sl_svn198_1280

><td class="source">          (mapcar (lambda (displayed-name)<br></td></tr
><tr
id=sl_svn198_1281

><td class="source">                    (cons<br></td></tr
><tr
id=sl_svn198_1282

><td class="source">                     (enutil-aget<br></td></tr
><tr
id=sl_svn198_1283

><td class="source">                      displayed-name<br></td></tr
><tr
id=sl_svn198_1284

><td class="source">                      enh-base-displayed-name-formatted-name-alist)<br></td></tr
><tr
id=sl_svn198_1285

><td class="source">                     displayed-name))<br></td></tr
><tr
id=sl_svn198_1286

><td class="source">                  (all-completions<br></td></tr
><tr
id=sl_svn198_1287

><td class="source">                   (if word<br></td></tr
><tr
id=sl_svn198_1288

><td class="source">                       word<br></td></tr
><tr
id=sl_svn198_1289

><td class="source">                     &quot;&quot;)<br></td></tr
><tr
id=sl_svn198_1290

><td class="source">                   enh-base-displayed-name-formatted-name-alist)))<br></td></tr
><tr
id=sl_svn198_1291

><td class="source">    (save-excursion<br></td></tr
><tr
id=sl_svn198_1292

><td class="source">      (setq completion-buf (get-buffer-create &quot;*Evernote-Completions*&quot;))<br></td></tr
><tr
id=sl_svn198_1293

><td class="source">      (set-buffer completion-buf)<br></td></tr
><tr
id=sl_svn198_1294

><td class="source">      (enh-base-display-note-completion-list<br></td></tr
><tr
id=sl_svn198_1295

><td class="source">       formatted-name-displayed-name-alist)<br></td></tr
><tr
id=sl_svn198_1296

><td class="source">      (setq evernote-search-mode-formatted-name-displayed-name-alist<br></td></tr
><tr
id=sl_svn198_1297

><td class="source">            formatted-name-displayed-name-alist)<br></td></tr
><tr
id=sl_svn198_1298

><td class="source">      (evernote-search-mode))<br></td></tr
><tr
id=sl_svn198_1299

><td class="source">    (display-buffer completion-buf)))<br></td></tr
><tr
id=sl_svn198_1300

><td class="source"><br></td></tr
><tr
id=sl_svn198_1301

><td class="source"><br></td></tr
><tr
id=sl_svn198_1302

><td class="source">(defun enh-base-display-note-completion-list (formatted-name-displayed-name-alist)<br></td></tr
><tr
id=sl_svn198_1303

><td class="source">  &quot;Display formatted note names on this buffer&quot;<br></td></tr
><tr
id=sl_svn198_1304

><td class="source">  (setq buffer-read-only nil)<br></td></tr
><tr
id=sl_svn198_1305

><td class="source">  (erase-buffer)<br></td></tr
><tr
id=sl_svn198_1306

><td class="source">  (insert (format &quot;total %d\n%-30s   %-20s   %-15s   %s\n\n&quot;<br></td></tr
><tr
id=sl_svn198_1307

><td class="source">                  (length formatted-name-displayed-name-alist)<br></td></tr
><tr
id=sl_svn198_1308

><td class="source">                  &quot;Last Modified&quot;<br></td></tr
><tr
id=sl_svn198_1309

><td class="source">                  &quot;Notebook&quot;<br></td></tr
><tr
id=sl_svn198_1310

><td class="source">                  &quot;Tags&quot;<br></td></tr
><tr
id=sl_svn198_1311

><td class="source">                  &quot;Title&quot;))<br></td></tr
><tr
id=sl_svn198_1312

><td class="source">  (mapc (lambda (elem)<br></td></tr
><tr
id=sl_svn198_1313

><td class="source">          (insert (car elem) &quot;\n&quot;))<br></td></tr
><tr
id=sl_svn198_1314

><td class="source">        formatted-name-displayed-name-alist)<br></td></tr
><tr
id=sl_svn198_1315

><td class="source">  (setq buffer-read-only t))<br></td></tr
><tr
id=sl_svn198_1316

><td class="source"><br></td></tr
><tr
id=sl_svn198_1317

><td class="source"><br></td></tr
><tr
id=sl_svn198_1318

><td class="source">(defun enh-base-change-major-mode-from-note-name (note-name)<br></td></tr
><tr
id=sl_svn198_1319

><td class="source">  (let ((buffer-file-name note-name))<br></td></tr
><tr
id=sl_svn198_1320

><td class="source">    (normal-mode)))<br></td></tr
><tr
id=sl_svn198_1321

><td class="source"><br></td></tr
><tr
id=sl_svn198_1322

><td class="source"><br></td></tr
><tr
id=sl_svn198_1323

><td class="source">(defun enh-base-find-opened-buffer (guid)<br></td></tr
><tr
id=sl_svn198_1324

><td class="source">  &quot;Find a buffer associated with guid&quot;<br></td></tr
><tr
id=sl_svn198_1325

><td class="source">  (let ((found_buf nil))<br></td></tr
><tr
id=sl_svn198_1326

><td class="source">    (save-excursion<br></td></tr
><tr
id=sl_svn198_1327

><td class="source">      (mapc (lambda (buf)<br></td></tr
><tr
id=sl_svn198_1328

><td class="source">              (set-buffer buf)<br></td></tr
><tr
id=sl_svn198_1329

><td class="source">              (if (string= evernote-note-guid guid)<br></td></tr
><tr
id=sl_svn198_1330

><td class="source">                  (setq found_buf buf)))<br></td></tr
><tr
id=sl_svn198_1331

><td class="source">            (buffer-list)))<br></td></tr
><tr
id=sl_svn198_1332

><td class="source">    found_buf))<br></td></tr
><tr
id=sl_svn198_1333

><td class="source"><br></td></tr
><tr
id=sl_svn198_1334

><td class="source"><br></td></tr
><tr
id=sl_svn198_1335

><td class="source">(defun enh-base-update-mode-line (&amp;optional notebook-guid is-set-tag-names tag-names edit-mode)<br></td></tr
><tr
id=sl_svn198_1336

><td class="source">  &quot;Update mode line&quot;<br></td></tr
><tr
id=sl_svn198_1337

><td class="source">  (let ((note-attr (enh-get-note-attr evernote-note-guid)))<br></td></tr
><tr
id=sl_svn198_1338

><td class="source">    (setq vc-mode<br></td></tr
><tr
id=sl_svn198_1339

><td class="source">          (concat &quot;[Notebook:&quot;<br></td></tr
><tr
id=sl_svn198_1340

><td class="source">                  (if notebook-guid<br></td></tr
><tr
id=sl_svn198_1341

><td class="source">                      (enutil-aget &#39;name (enh-get-notebook-attr notebook-guid))<br></td></tr
><tr
id=sl_svn198_1342

><td class="source">                    (enutil-aget &#39;name (enh-get-notebook-attr<br></td></tr
><tr
id=sl_svn198_1343

><td class="source">                                        (enutil-aget &#39;notebookGuid note-attr))))<br></td></tr
><tr
id=sl_svn198_1344

><td class="source">                  &quot;] &quot;<br></td></tr
><tr
id=sl_svn198_1345

><td class="source">                  &quot;[Tag:&quot;<br></td></tr
><tr
id=sl_svn198_1346

><td class="source">                  (if is-set-tag-names<br></td></tr
><tr
id=sl_svn198_1347

><td class="source">                      (mapconcat #&#39;identity tag-names &quot;,&quot;)<br></td></tr
><tr
id=sl_svn198_1348

><td class="source">                    (enh-tag-guids-to-comma-separated-names<br></td></tr
><tr
id=sl_svn198_1349

><td class="source">                     (enutil-aget &#39;tagGuids note-attr)))<br></td></tr
><tr
id=sl_svn198_1350

><td class="source">                  &quot;] &quot;<br></td></tr
><tr
id=sl_svn198_1351

><td class="source">                  &quot;[Edit mode:&quot;<br></td></tr
><tr
id=sl_svn198_1352

><td class="source">                  (if edit-mode<br></td></tr
><tr
id=sl_svn198_1353

><td class="source">                      edit-mode<br></td></tr
><tr
id=sl_svn198_1354

><td class="source">                    (enutil-aget &#39;editMode note-attr))<br></td></tr
><tr
id=sl_svn198_1355

><td class="source">                  &quot;]&quot;))<br></td></tr
><tr
id=sl_svn198_1356

><td class="source">    (force-mode-line-update)))<br></td></tr
><tr
id=sl_svn198_1357

><td class="source"><br></td></tr
><tr
id=sl_svn198_1358

><td class="source"><br></td></tr
><tr
id=sl_svn198_1359

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1360

><td class="source">;; Helper functions for evernote-browsing-mode (enh-browsing-xxx)<br></td></tr
><tr
id=sl_svn198_1361

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1362

><td class="source"><br></td></tr
><tr
id=sl_svn198_1363

><td class="source">(defvar evernote-browsing-mode nil<br></td></tr
><tr
id=sl_svn198_1364

><td class="source">  &quot;Non-nil if Evernote Browsing mode is enabled.&quot;)<br></td></tr
><tr
id=sl_svn198_1365

><td class="source">(make-variable-buffer-local &#39;evernote-browsing-mode)<br></td></tr
><tr
id=sl_svn198_1366

><td class="source"><br></td></tr
><tr
id=sl_svn198_1367

><td class="source">(defvar enh-browsing-page-type nil)<br></td></tr
><tr
id=sl_svn198_1368

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-type)<br></td></tr
><tr
id=sl_svn198_1369

><td class="source"><br></td></tr
><tr
id=sl_svn198_1370

><td class="source">(defvar enh-browsing-page-description nil)<br></td></tr
><tr
id=sl_svn198_1371

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-description)<br></td></tr
><tr
id=sl_svn198_1372

><td class="source"><br></td></tr
><tr
id=sl_svn198_1373

><td class="source">(defvar enh-browsing-page-data nil)<br></td></tr
><tr
id=sl_svn198_1374

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-data)<br></td></tr
><tr
id=sl_svn198_1375

><td class="source"><br></td></tr
><tr
id=sl_svn198_1376

><td class="source">(defvar enh-browsing-page-data-refresh-closure nil)<br></td></tr
><tr
id=sl_svn198_1377

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-data-refresh-closure)<br></td></tr
><tr
id=sl_svn198_1378

><td class="source"><br></td></tr
><tr
id=sl_svn198_1379

><td class="source">(defvar enh-browsing-page-widget-title nil)<br></td></tr
><tr
id=sl_svn198_1380

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-widget-title)<br></td></tr
><tr
id=sl_svn198_1381

><td class="source"><br></td></tr
><tr
id=sl_svn198_1382

><td class="source">(defvar enh-browsing-page-widget-root nil)<br></td></tr
><tr
id=sl_svn198_1383

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-widget-root)<br></td></tr
><tr
id=sl_svn198_1384

><td class="source"><br></td></tr
><tr
id=sl_svn198_1385

><td class="source">(defvar enh-browsing-page-setup-func nil)<br></td></tr
><tr
id=sl_svn198_1386

><td class="source">(make-variable-buffer-local &#39;enh-browsing-page-setup-func)<br></td></tr
><tr
id=sl_svn198_1387

><td class="source"><br></td></tr
><tr
id=sl_svn198_1388

><td class="source"><br></td></tr
><tr
id=sl_svn198_1389

><td class="source">(defun enh-browsing-open-notebook (widget &amp;rest ignored)<br></td></tr
><tr
id=sl_svn198_1390

><td class="source">  &quot;Open a saved search in browsing mode&quot;<br></td></tr
><tr
id=sl_svn198_1391

><td class="source">  (enh-clear-onmem-cache)<br></td></tr
><tr
id=sl_svn198_1392

><td class="source">  (let* ((guid (widget-value widget)) note-attrs)<br></td></tr
><tr
id=sl_svn198_1393

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_1394

><td class="source">     (setq note-attrs<br></td></tr
><tr
id=sl_svn198_1395

><td class="source">           (enh-command-get-note-attrs-from-notebook-and-tag-guids guid nil)))<br></td></tr
><tr
id=sl_svn198_1396

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_1397

><td class="source">    (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_1398

><td class="source">     (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_1399

><td class="source">                               (format &quot;Notes in Notebook: %s&quot;<br></td></tr
><tr
id=sl_svn198_1400

><td class="source">                                       (enutil-aget &#39;name<br></td></tr
><tr
id=sl_svn198_1401

><td class="source">                                                    (enh-get-notebook-attr guid)))<br></td></tr
><tr
id=sl_svn198_1402

><td class="source">                               note-attrs<br></td></tr
><tr
id=sl_svn198_1403

><td class="source">                               `(lambda () (enh-command-get-note-attrs-from-notebook-and-tag-guids<br></td></tr
><tr
id=sl_svn198_1404

><td class="source">                                            ,guid nil))))))<br></td></tr
><tr
id=sl_svn198_1405

><td class="source"><br></td></tr
><tr
id=sl_svn198_1406

><td class="source"><br></td></tr
><tr
id=sl_svn198_1407

><td class="source">(defun enh-browsing-open-tag (widget &amp;rest ignored)<br></td></tr
><tr
id=sl_svn198_1408

><td class="source">  &quot;Open a tag in browsing mode&quot;<br></td></tr
><tr
id=sl_svn198_1409

><td class="source">  (enh-clear-onmem-cache)<br></td></tr
><tr
id=sl_svn198_1410

><td class="source">  (let ((guid (widget-value widget)) note-attrs)<br></td></tr
><tr
id=sl_svn198_1411

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_1412

><td class="source">     (setq note-attrs<br></td></tr
><tr
id=sl_svn198_1413

><td class="source">           (enh-command-get-note-attrs-from-notebook-and-tag-guids<br></td></tr
><tr
id=sl_svn198_1414

><td class="source">            nil<br></td></tr
><tr
id=sl_svn198_1415

><td class="source">            (if guid<br></td></tr
><tr
id=sl_svn198_1416

><td class="source">                (list guid)<br></td></tr
><tr
id=sl_svn198_1417

><td class="source">              nil))))<br></td></tr
><tr
id=sl_svn198_1418

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_1419

><td class="source">    (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_1420

><td class="source">     (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_1421

><td class="source">                               (if guid<br></td></tr
><tr
id=sl_svn198_1422

><td class="source">                                   (format &quot;Notes with tag %s&quot;<br></td></tr
><tr
id=sl_svn198_1423

><td class="source">                                           (enutil-aget &#39;name<br></td></tr
><tr
id=sl_svn198_1424

><td class="source">                                                        (enh-get-tag-attr guid)))<br></td></tr
><tr
id=sl_svn198_1425

><td class="source">                                 &quot;All notes&quot;)<br></td></tr
><tr
id=sl_svn198_1426

><td class="source">                               note-attrs<br></td></tr
><tr
id=sl_svn198_1427

><td class="source">                               `(lambda () (enh-command-get-note-attrs-from-notebook-and-tag-guids<br></td></tr
><tr
id=sl_svn198_1428

><td class="source">                                            nil &#39;,(if guid<br></td></tr
><tr
id=sl_svn198_1429

><td class="source">                                                      (list guid)<br></td></tr
><tr
id=sl_svn198_1430

><td class="source">                                                    nil)))))))<br></td></tr
><tr
id=sl_svn198_1431

><td class="source"><br></td></tr
><tr
id=sl_svn198_1432

><td class="source"><br></td></tr
><tr
id=sl_svn198_1433

><td class="source">(defun enh-browsing-open-search (widget &amp;rest ignored)<br></td></tr
><tr
id=sl_svn198_1434

><td class="source">  &quot;Open a saved search in browsing mode&quot;<br></td></tr
><tr
id=sl_svn198_1435

><td class="source">  (enh-clear-onmem-cache)<br></td></tr
><tr
id=sl_svn198_1436

><td class="source">  (let* ((guid (widget-value widget)) note-attrs)<br></td></tr
><tr
id=sl_svn198_1437

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_1438

><td class="source">     (setq note-attrs<br></td></tr
><tr
id=sl_svn198_1439

><td class="source">           (enh-command-get-note-attrs-from-query<br></td></tr
><tr
id=sl_svn198_1440

><td class="source">            (enutil-aget &#39;query<br></td></tr
><tr
id=sl_svn198_1441

><td class="source">                         (enh-get-search-attr guid)))))<br></td></tr
><tr
id=sl_svn198_1442

><td class="source">    (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_1443

><td class="source">    (enh-browsing-push-page<br></td></tr
><tr
id=sl_svn198_1444

><td class="source">     (enh-browsing-create-page &#39;note-list<br></td></tr
><tr
id=sl_svn198_1445

><td class="source">                               (format &quot;Query Result of Saved Search: %s&quot;<br></td></tr
><tr
id=sl_svn198_1446

><td class="source">                                       (enutil-aget &#39;name<br></td></tr
><tr
id=sl_svn198_1447

><td class="source">                                                    (enh-get-search-attr guid)))<br></td></tr
><tr
id=sl_svn198_1448

><td class="source">                               note-attrs<br></td></tr
><tr
id=sl_svn198_1449

><td class="source">                               `(lambda () (enh-command-get-note-attrs-from-query<br></td></tr
><tr
id=sl_svn198_1450

><td class="source">                                            ,(enutil-aget &#39;query<br></td></tr
><tr
id=sl_svn198_1451

><td class="source">                                                          (enh-get-search-attr guid))))))))<br></td></tr
><tr
id=sl_svn198_1452

><td class="source"><br></td></tr
><tr
id=sl_svn198_1453

><td class="source"><br></td></tr
><tr
id=sl_svn198_1454

><td class="source">(defun enh-browsing-open-note (widget &amp;rest ignored)<br></td></tr
><tr
id=sl_svn198_1455

><td class="source">  &quot;Open a note in browsing mode&quot;<br></td></tr
><tr
id=sl_svn198_1456

><td class="source">  (enh-clear-onmem-cache)<br></td></tr
><tr
id=sl_svn198_1457

><td class="source">  (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_1458

><td class="source">   (let* ((guid (widget-value widget))<br></td></tr
><tr
id=sl_svn198_1459

><td class="source">          (note-attr (enh-get-note-attr guid))<br></td></tr
><tr
id=sl_svn198_1460

><td class="source">          (cur-buf (current-buffer)))<br></td></tr
><tr
id=sl_svn198_1461

><td class="source">     (enh-base-open-note-common note-attr)<br></td></tr
><tr
id=sl_svn198_1462

><td class="source">     (let ((command-keys (this-command-keys)))<br></td></tr
><tr
id=sl_svn198_1463

><td class="source">       (if (and (stringp command-keys)<br></td></tr
><tr
id=sl_svn198_1464

><td class="source">                (or (string= &quot;o&quot; command-keys)<br></td></tr
><tr
id=sl_svn198_1465

><td class="source">                    (string= &quot;n&quot; command-keys)<br></td></tr
><tr
id=sl_svn198_1466

><td class="source">                    (string= &quot;p&quot; command-keys)))<br></td></tr
><tr
id=sl_svn198_1467

><td class="source">           (enutil-move-cursor-to-window cur-buf t))))))<br></td></tr
><tr
id=sl_svn198_1468

><td class="source"><br></td></tr
><tr
id=sl_svn198_1469

><td class="source"><br></td></tr
><tr
id=sl_svn198_1470

><td class="source">(defun enh-browsing-push-page (page &amp;optional noswitch)<br></td></tr
><tr
id=sl_svn198_1471

><td class="source">  &quot;Push a new page to the browsing mode&quot;<br></td></tr
><tr
id=sl_svn198_1472

><td class="source">  (enutil-push page evernote-browsing-page-list)<br></td></tr
><tr
id=sl_svn198_1473

><td class="source">  (if noswitch<br></td></tr
><tr
id=sl_svn198_1474

><td class="source">      (save-excursion<br></td></tr
><tr
id=sl_svn198_1475

><td class="source">        (set-buffer page)<br></td></tr
><tr
id=sl_svn198_1476

><td class="source">        (funcall enh-browsing-page-setup-func))<br></td></tr
><tr
id=sl_svn198_1477

><td class="source">    (setq evernote-browsing-current-page page)<br></td></tr
><tr
id=sl_svn198_1478

><td class="source">    (switch-to-buffer page)<br></td></tr
><tr
id=sl_svn198_1479

><td class="source">    (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_1480

><td class="source">     (funcall enh-browsing-page-setup-func))))<br></td></tr
><tr
id=sl_svn198_1481

><td class="source"><br></td></tr
><tr
id=sl_svn198_1482

><td class="source"><br></td></tr
><tr
id=sl_svn198_1483

><td class="source">(defun enh-browsing-create-page (type description &amp;optional note-attrs refresh-closure)<br></td></tr
><tr
id=sl_svn198_1484

><td class="source">  &quot;Create a page structure of the attr-list&quot;<br></td></tr
><tr
id=sl_svn198_1485

><td class="source">  (let ((buf (generate-new-buffer (format &quot;*ENB %s* &quot; description))))<br></td></tr
><tr
id=sl_svn198_1486

><td class="source">    (save-excursion<br></td></tr
><tr
id=sl_svn198_1487

><td class="source">      (set-buffer buf)<br></td></tr
><tr
id=sl_svn198_1488

><td class="source">      (setq enh-browsing-page-type type<br></td></tr
><tr
id=sl_svn198_1489

><td class="source">            enh-browsing-page-description description<br></td></tr
><tr
id=sl_svn198_1490

><td class="source">            enh-browsing-page-data note-attrs<br></td></tr
><tr
id=sl_svn198_1491

><td class="source">            enh-browsing-page-data-refresh-closure refresh-closure)<br></td></tr
><tr
id=sl_svn198_1492

><td class="source">      (cond<br></td></tr
><tr
id=sl_svn198_1493

><td class="source">       ((eq type &#39;notebook-list)<br></td></tr
><tr
id=sl_svn198_1494

><td class="source">        (setq enh-browsing-page-setup-func<br></td></tr
><tr
id=sl_svn198_1495

><td class="source">              &#39;enh-browsing-setup-notebook-list-page))<br></td></tr
><tr
id=sl_svn198_1496

><td class="source">       ((eq type &#39;tag-list)<br></td></tr
><tr
id=sl_svn198_1497

><td class="source">        (setq enh-browsing-page-setup-func<br></td></tr
><tr
id=sl_svn198_1498

><td class="source">              &#39;enh-browsing-setup-tag-list-page))<br></td></tr
><tr
id=sl_svn198_1499

><td class="source">       ((eq type &#39;search-list)<br></td></tr
><tr
id=sl_svn198_1500

><td class="source">        (setq enh-browsing-page-setup-func<br></td></tr
><tr
id=sl_svn198_1501

><td class="source">              &#39;enh-browsing-setup-search-list-page))<br></td></tr
><tr
id=sl_svn198_1502

><td class="source">       ((eq type &#39;note-list)<br></td></tr
><tr
id=sl_svn198_1503

><td class="source">        (setq enh-browsing-page-setup-func<br></td></tr
><tr
id=sl_svn198_1504

><td class="source">              &#39;enh-browsing-setup-note-list-page)))<br></td></tr
><tr
id=sl_svn198_1505

><td class="source">      (evernote-browsing-mode))<br></td></tr
><tr
id=sl_svn198_1506

><td class="source">    buf))<br></td></tr
><tr
id=sl_svn198_1507

><td class="source"><br></td></tr
><tr
id=sl_svn198_1508

><td class="source"><br></td></tr
><tr
id=sl_svn198_1509

><td class="source">(defun enh-browsing-setup-notebook-list-page ()<br></td></tr
><tr
id=sl_svn198_1510

><td class="source">  &quot;Insert notebook list into the browsing buffer&quot;<br></td></tr
><tr
id=sl_svn198_1511

><td class="source">  (when enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1512

><td class="source">    (widget-delete enh-browsing-page-widget-root)<br></td></tr
><tr
id=sl_svn198_1513

><td class="source">    (setq enh-browsing-page-widget-root nil))<br></td></tr
><tr
id=sl_svn198_1514

><td class="source">  (let ((notebook-list nil))<br></td></tr
><tr
id=sl_svn198_1515

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_1516

><td class="source">     (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_1517

><td class="source">       (let ((attr (enh-get-notebook-attr guid)))<br></td></tr
><tr
id=sl_svn198_1518

><td class="source">         (enutil-push `(push-button<br></td></tr
><tr
id=sl_svn198_1519

><td class="source">                        :tag ,(format &quot;%-30s   %s&quot;<br></td></tr
><tr
id=sl_svn198_1520

><td class="source">                                      (enutil-aget &#39;name attr)<br></td></tr
><tr
id=sl_svn198_1521

><td class="source">                                      (enutil-aget &#39;defaultNotebook attr))<br></td></tr
><tr
id=sl_svn198_1522

><td class="source">                        :format &quot;%[%t%]\n&quot;<br></td></tr
><tr
id=sl_svn198_1523

><td class="source">                        :notify enh-browsing-open-notebook<br></td></tr
><tr
id=sl_svn198_1524

><td class="source">                        ,guid)<br></td></tr
><tr
id=sl_svn198_1525

><td class="source">                      notebook-list)))<br></td></tr
><tr
id=sl_svn198_1526

><td class="source">     (enh-get-notebook-attrs))<br></td></tr
><tr
id=sl_svn198_1527

><td class="source">    (setq enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1528

><td class="source">          (apply &#39;widget-create<br></td></tr
><tr
id=sl_svn198_1529

><td class="source">                 `(group<br></td></tr
><tr
id=sl_svn198_1530

><td class="source">                   (item ,(format &quot;%s\n\ntotal %d\n%-30s   %s\n&quot;<br></td></tr
><tr
id=sl_svn198_1531

><td class="source">                                  enh-browsing-page-description<br></td></tr
><tr
id=sl_svn198_1532

><td class="source">                                  (hash-table-count (enh-get-notebook-attrs))<br></td></tr
><tr
id=sl_svn198_1533

><td class="source">                                  &quot;Name&quot;<br></td></tr
><tr
id=sl_svn198_1534

><td class="source">                                  &quot;Default&quot;))<br></td></tr
><tr
id=sl_svn198_1535

><td class="source">                   ,@(nreverse notebook-list)))))<br></td></tr
><tr
id=sl_svn198_1536

><td class="source">  (widget-setup)<br></td></tr
><tr
id=sl_svn198_1537

><td class="source">  (goto-char (point-min)))<br></td></tr
><tr
id=sl_svn198_1538

><td class="source"><br></td></tr
><tr
id=sl_svn198_1539

><td class="source"><br></td></tr
><tr
id=sl_svn198_1540

><td class="source">(defun enh-browsing-setup-tag-list-page ()<br></td></tr
><tr
id=sl_svn198_1541

><td class="source">  &quot;Create a page structure of the attr-list&quot;<br></td></tr
><tr
id=sl_svn198_1542

><td class="source">  (when enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1543

><td class="source">    (widget-delete enh-browsing-page-widget-title)<br></td></tr
><tr
id=sl_svn198_1544

><td class="source">    (widget-delete enh-browsing-page-widget-root)<br></td></tr
><tr
id=sl_svn198_1545

><td class="source">    (setq enh-browsing-page-widget-title nil)<br></td></tr
><tr
id=sl_svn198_1546

><td class="source">    (setq enh-browsing-page-widget-root nil))<br></td></tr
><tr
id=sl_svn198_1547

><td class="source">  (let ((guid-children-hash (make-hash-table :test #&#39;equal)))<br></td></tr
><tr
id=sl_svn198_1548

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_1549

><td class="source">     (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_1550

><td class="source">       (let* ((parent (enutil-aget &#39;parentGuid attr))<br></td></tr
><tr
id=sl_svn198_1551

><td class="source">              (children (gethash parent guid-children-hash)))<br></td></tr
><tr
id=sl_svn198_1552

><td class="source">         (if children<br></td></tr
><tr
id=sl_svn198_1553

><td class="source">             (puthash parent (cons guid children) guid-children-hash)<br></td></tr
><tr
id=sl_svn198_1554

><td class="source">           (puthash parent (list guid) guid-children-hash))))<br></td></tr
><tr
id=sl_svn198_1555

><td class="source">     (enh-get-tag-attrs))<br></td></tr
><tr
id=sl_svn198_1556

><td class="source">    (setq enh-browsing-page-widget-title<br></td></tr
><tr
id=sl_svn198_1557

><td class="source">          (widget-create &#39;item (format &quot;Tag List\n\ntotal %d\n&quot; (hash-table-count (enh-get-tag-attrs)))))<br></td></tr
><tr
id=sl_svn198_1558

><td class="source">    (setq enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1559

><td class="source">          (apply &#39;widget-create<br></td></tr
><tr
id=sl_svn198_1560

><td class="source">                 (enh-browsing-get-tag-tree nil))))<br></td></tr
><tr
id=sl_svn198_1561

><td class="source">  (widget-setup)<br></td></tr
><tr
id=sl_svn198_1562

><td class="source">  (goto-char (point-min)))<br></td></tr
><tr
id=sl_svn198_1563

><td class="source"><br></td></tr
><tr
id=sl_svn198_1564

><td class="source"><br></td></tr
><tr
id=sl_svn198_1565

><td class="source">(defun enh-browsing-get-tag-tree (guid) ; root (eq guid nil)<br></td></tr
><tr
id=sl_svn198_1566

><td class="source">  (let* ((children (gethash guid guid-children-hash))<br></td></tr
><tr
id=sl_svn198_1567

><td class="source">         (attr (enh-get-tag-attr guid))<br></td></tr
><tr
id=sl_svn198_1568

><td class="source">         (name (if attr (enutil-aget &#39;name attr) &quot;All tags&quot;)))<br></td></tr
><tr
id=sl_svn198_1569

><td class="source">    (if children<br></td></tr
><tr
id=sl_svn198_1570

><td class="source">        `(tree-widget :node (push-button :tag ,name<br></td></tr
><tr
id=sl_svn198_1571

><td class="source">                                         :format &quot;%[%t%]\n&quot;<br></td></tr
><tr
id=sl_svn198_1572

><td class="source">                                         :notify enh-browsing-open-tag<br></td></tr
><tr
id=sl_svn198_1573

><td class="source">                                         ,guid)<br></td></tr
><tr
id=sl_svn198_1574

><td class="source">                      :args ,(mapcar<br></td></tr
><tr
id=sl_svn198_1575

><td class="source">                              &#39;enh-browsing-get-tag-tree<br></td></tr
><tr
id=sl_svn198_1576

><td class="source">                              (nreverse children))<br></td></tr
><tr
id=sl_svn198_1577

><td class="source">                      :open ,(if attr nil t))<br></td></tr
><tr
id=sl_svn198_1578

><td class="source">      `(push-button :tag ,name<br></td></tr
><tr
id=sl_svn198_1579

><td class="source">                    :format &quot;%[%t%]\n&quot;<br></td></tr
><tr
id=sl_svn198_1580

><td class="source">                    :notify enh-browsing-open-tag<br></td></tr
><tr
id=sl_svn198_1581

><td class="source">                    ,guid))))<br></td></tr
><tr
id=sl_svn198_1582

><td class="source"><br></td></tr
><tr
id=sl_svn198_1583

><td class="source"><br></td></tr
><tr
id=sl_svn198_1584

><td class="source">(defun enh-browsing-setup-search-list-page ()<br></td></tr
><tr
id=sl_svn198_1585

><td class="source">  &quot;Insert saved search list into the browsing buffer&quot;<br></td></tr
><tr
id=sl_svn198_1586

><td class="source">  (when enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1587

><td class="source">    (widget-delete enh-browsing-page-widget-root)<br></td></tr
><tr
id=sl_svn198_1588

><td class="source">    (setq enh-browsing-page-widget-root nil))<br></td></tr
><tr
id=sl_svn198_1589

><td class="source">  (let ((search-list nil))<br></td></tr
><tr
id=sl_svn198_1590

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_1591

><td class="source">     (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_1592

><td class="source">       (let ((attr (enh-get-search-attr guid)))<br></td></tr
><tr
id=sl_svn198_1593

><td class="source">         (enutil-push `(push-button<br></td></tr
><tr
id=sl_svn198_1594

><td class="source">                        :tag ,(format &quot;%-30s   %s&quot;<br></td></tr
><tr
id=sl_svn198_1595

><td class="source">                                      (enutil-aget &#39;name attr)<br></td></tr
><tr
id=sl_svn198_1596

><td class="source">                                      (enutil-aget &#39;query attr))<br></td></tr
><tr
id=sl_svn198_1597

><td class="source">                        :format &quot;%[%t%]\n&quot;<br></td></tr
><tr
id=sl_svn198_1598

><td class="source">                        :notify enh-browsing-open-search<br></td></tr
><tr
id=sl_svn198_1599

><td class="source">                        ,guid)<br></td></tr
><tr
id=sl_svn198_1600

><td class="source">                      search-list)))<br></td></tr
><tr
id=sl_svn198_1601

><td class="source">     (enh-get-search-attrs))<br></td></tr
><tr
id=sl_svn198_1602

><td class="source">    (setq enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1603

><td class="source">          (apply &#39;widget-create<br></td></tr
><tr
id=sl_svn198_1604

><td class="source">                 `(group<br></td></tr
><tr
id=sl_svn198_1605

><td class="source">                   (item ,(format &quot;%s\n\ntotal %d\n%-30s   %s\n&quot;<br></td></tr
><tr
id=sl_svn198_1606

><td class="source">                                  enh-browsing-page-description<br></td></tr
><tr
id=sl_svn198_1607

><td class="source">                                  (hash-table-count (enh-get-search-attrs))<br></td></tr
><tr
id=sl_svn198_1608

><td class="source">                                  &quot;Name&quot;<br></td></tr
><tr
id=sl_svn198_1609

><td class="source">                                  &quot;Query&quot;))<br></td></tr
><tr
id=sl_svn198_1610

><td class="source">                   ,@(nreverse search-list)))))<br></td></tr
><tr
id=sl_svn198_1611

><td class="source">  (widget-setup)<br></td></tr
><tr
id=sl_svn198_1612

><td class="source">  (goto-char (point-min)))<br></td></tr
><tr
id=sl_svn198_1613

><td class="source"><br></td></tr
><tr
id=sl_svn198_1614

><td class="source"><br></td></tr
><tr
id=sl_svn198_1615

><td class="source">(defun enh-browsing-setup-note-list-page ()<br></td></tr
><tr
id=sl_svn198_1616

><td class="source">  &quot;Insert note list into the browsing buffer&quot;<br></td></tr
><tr
id=sl_svn198_1617

><td class="source">  (when enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1618

><td class="source">    (widget-delete enh-browsing-page-widget-root)<br></td></tr
><tr
id=sl_svn198_1619

><td class="source">    (setq enh-browsing-page-widget-root nil))<br></td></tr
><tr
id=sl_svn198_1620

><td class="source">  (when (and (null enh-browsing-page-data)<br></td></tr
><tr
id=sl_svn198_1621

><td class="source">             enh-browsing-page-data-refresh-closure)<br></td></tr
><tr
id=sl_svn198_1622

><td class="source">    (setq enh-browsing-page-data (funcall enh-browsing-page-data-refresh-closure)))<br></td></tr
><tr
id=sl_svn198_1623

><td class="source">  (let ((note-attrs enh-browsing-page-data)<br></td></tr
><tr
id=sl_svn198_1624

><td class="source">        (note-list nil))<br></td></tr
><tr
id=sl_svn198_1625

><td class="source">    (mapc<br></td></tr
><tr
id=sl_svn198_1626

><td class="source">     (lambda (attr)<br></td></tr
><tr
id=sl_svn198_1627

><td class="source">       (enutil-push `(push-button<br></td></tr
><tr
id=sl_svn198_1628

><td class="source">                      :tag ,(format &quot;%-30s   %-20s   %-15s   %4s   %s&quot;<br></td></tr
><tr
id=sl_svn198_1629

><td class="source">                                    (enutil-aget &#39;updated attr)<br></td></tr
><tr
id=sl_svn198_1630

><td class="source">                                    (enutil-aget &#39;name<br></td></tr
><tr
id=sl_svn198_1631

><td class="source">                                                 (enh-get-notebook-attr (enutil-aget &#39;notebookGuid attr)))<br></td></tr
><tr
id=sl_svn198_1632

><td class="source">                                    (enh-tag-guids-to-comma-separated-names<br></td></tr
><tr
id=sl_svn198_1633

><td class="source">                                     (enutil-aget &#39;tagGuids attr)<br></td></tr
><tr
id=sl_svn198_1634

><td class="source">                                     15)<br></td></tr
><tr
id=sl_svn198_1635

><td class="source">                                    (enutil-aget &#39;editMode attr)<br></td></tr
><tr
id=sl_svn198_1636

><td class="source">                                    (enutil-aget &#39;title attr))<br></td></tr
><tr
id=sl_svn198_1637

><td class="source">                      :format &quot;%[%t%]\n&quot;<br></td></tr
><tr
id=sl_svn198_1638

><td class="source">                      :notify enh-browsing-open-note<br></td></tr
><tr
id=sl_svn198_1639

><td class="source">                      ,(enutil-aget &#39;guid attr))<br></td></tr
><tr
id=sl_svn198_1640

><td class="source">                    note-list))<br></td></tr
><tr
id=sl_svn198_1641

><td class="source">     note-attrs)<br></td></tr
><tr
id=sl_svn198_1642

><td class="source">    (setq enh-browsing-page-widget-root<br></td></tr
><tr
id=sl_svn198_1643

><td class="source">          (apply &#39;widget-create<br></td></tr
><tr
id=sl_svn198_1644

><td class="source">                 `(group<br></td></tr
><tr
id=sl_svn198_1645

><td class="source">                   (item ,(format &quot;%s\n\ntotal %d\n%-30s   %-20s   %-15s   %4s   %s\n&quot;<br></td></tr
><tr
id=sl_svn198_1646

><td class="source">                                  enh-browsing-page-description<br></td></tr
><tr
id=sl_svn198_1647

><td class="source">                                  (length note-attrs)<br></td></tr
><tr
id=sl_svn198_1648

><td class="source">                                  &quot;Last Modified&quot;<br></td></tr
><tr
id=sl_svn198_1649

><td class="source">                                  &quot;Notebook&quot;<br></td></tr
><tr
id=sl_svn198_1650

><td class="source">                                  &quot;Tags&quot;<br></td></tr
><tr
id=sl_svn198_1651

><td class="source">                                  &quot;Mode&quot;<br></td></tr
><tr
id=sl_svn198_1652

><td class="source">                                  &quot;Name&quot;))<br></td></tr
><tr
id=sl_svn198_1653

><td class="source">                   ,@(nreverse note-list)))))<br></td></tr
><tr
id=sl_svn198_1654

><td class="source">  (widget-setup)<br></td></tr
><tr
id=sl_svn198_1655

><td class="source">  (goto-char (point-min)))<br></td></tr
><tr
id=sl_svn198_1656

><td class="source"><br></td></tr
><tr
id=sl_svn198_1657

><td class="source"><br></td></tr
><tr
id=sl_svn198_1658

><td class="source">(defun enh-browsing-update-page-list ()<br></td></tr
><tr
id=sl_svn198_1659

><td class="source">  (setq evernote-browsing-page-list<br></td></tr
><tr
id=sl_svn198_1660

><td class="source">        (delete nil<br></td></tr
><tr
id=sl_svn198_1661

><td class="source">                (mapcar (lambda (page)<br></td></tr
><tr
id=sl_svn198_1662

><td class="source">                          (if (buffer-live-p page) page nil))<br></td></tr
><tr
id=sl_svn198_1663

><td class="source">                        evernote-browsing-page-list)))<br></td></tr
><tr
id=sl_svn198_1664

><td class="source">  (unless (memq evernote-browsing-current-page evernote-browsing-page-list)<br></td></tr
><tr
id=sl_svn198_1665

><td class="source">    (setq evernote-browsing-current-page (car evernote-browsing-page-list))))<br></td></tr
><tr
id=sl_svn198_1666

><td class="source"><br></td></tr
><tr
id=sl_svn198_1667

><td class="source"><br></td></tr
><tr
id=sl_svn198_1668

><td class="source">(defun enh-browsing-get-prev-page ()<br></td></tr
><tr
id=sl_svn198_1669

><td class="source">  (cadr<br></td></tr
><tr
id=sl_svn198_1670

><td class="source">   (memq evernote-browsing-current-page<br></td></tr
><tr
id=sl_svn198_1671

><td class="source">         evernote-browsing-page-list)))<br></td></tr
><tr
id=sl_svn198_1672

><td class="source"><br></td></tr
><tr
id=sl_svn198_1673

><td class="source"><br></td></tr
><tr
id=sl_svn198_1674

><td class="source">(defun enh-browsing-get-next-page ()<br></td></tr
><tr
id=sl_svn198_1675

><td class="source">  (catch &#39;next-page<br></td></tr
><tr
id=sl_svn198_1676

><td class="source">    (let (next-page)<br></td></tr
><tr
id=sl_svn198_1677

><td class="source">      (mapc<br></td></tr
><tr
id=sl_svn198_1678

><td class="source">       (lambda (page)<br></td></tr
><tr
id=sl_svn198_1679

><td class="source">         (when (eq page evernote-browsing-current-page)<br></td></tr
><tr
id=sl_svn198_1680

><td class="source">           (throw &#39;next-page next-page))<br></td></tr
><tr
id=sl_svn198_1681

><td class="source">         (setq next-page page))<br></td></tr
><tr
id=sl_svn198_1682

><td class="source">       evernote-browsing-page-list))))<br></td></tr
><tr
id=sl_svn198_1683

><td class="source"><br></td></tr
><tr
id=sl_svn198_1684

><td class="source"><br></td></tr
><tr
id=sl_svn198_1685

><td class="source">(defun enh-browsing-get-page-of-type (type)<br></td></tr
><tr
id=sl_svn198_1686

><td class="source">  &quot;Get a page of the type in the browsing mode&quot;<br></td></tr
><tr
id=sl_svn198_1687

><td class="source">  (let ((result nil))<br></td></tr
><tr
id=sl_svn198_1688

><td class="source">    (save-excursion<br></td></tr
><tr
id=sl_svn198_1689

><td class="source">      (mapc<br></td></tr
><tr
id=sl_svn198_1690

><td class="source">       (lambda (page)<br></td></tr
><tr
id=sl_svn198_1691

><td class="source">         (set-buffer page)<br></td></tr
><tr
id=sl_svn198_1692

><td class="source">         (when (eq enh-browsing-page-type type)<br></td></tr
><tr
id=sl_svn198_1693

><td class="source">           (setq result page)))<br></td></tr
><tr
id=sl_svn198_1694

><td class="source">       evernote-browsing-page-list))<br></td></tr
><tr
id=sl_svn198_1695

><td class="source">    result))<br></td></tr
><tr
id=sl_svn198_1696

><td class="source"><br></td></tr
><tr
id=sl_svn198_1697

><td class="source"><br></td></tr
><tr
id=sl_svn198_1698

><td class="source">(defun enh-browsing-reflesh-page (type)<br></td></tr
><tr
id=sl_svn198_1699

><td class="source">  &quot;Reflesh current page&quot;<br></td></tr
><tr
id=sl_svn198_1700

><td class="source">  (enh-browsing-update-page-list)<br></td></tr
><tr
id=sl_svn198_1701

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn198_1702

><td class="source">    (mapcar (lambda (page)<br></td></tr
><tr
id=sl_svn198_1703

><td class="source">              (set-buffer page)<br></td></tr
><tr
id=sl_svn198_1704

><td class="source">              (when (eq enh-browsing-page-type type)<br></td></tr
><tr
id=sl_svn198_1705

><td class="source">                (when enh-browsing-page-data-refresh-closure<br></td></tr
><tr
id=sl_svn198_1706

><td class="source">                  (setq enh-browsing-page-data nil))<br></td></tr
><tr
id=sl_svn198_1707

><td class="source">                (funcall enh-browsing-page-setup-func)))<br></td></tr
><tr
id=sl_svn198_1708

><td class="source">            evernote-browsing-page-list)))<br></td></tr
><tr
id=sl_svn198_1709

><td class="source"><br></td></tr
><tr
id=sl_svn198_1710

><td class="source">;<br></td></tr
><tr
id=sl_svn198_1711

><td class="source">;<br></td></tr
><tr
id=sl_svn198_1712

><td class="source">;(defun evernote-test-list-note ()<br></td></tr
><tr
id=sl_svn198_1713

><td class="source">;  &quot;Test&quot;<br></td></tr
><tr
id=sl_svn198_1714

><td class="source">;  (interactive)<br></td></tr
><tr
id=sl_svn198_1715

><td class="source">;  (mapc<br></td></tr
><tr
id=sl_svn198_1716

><td class="source">;   (lambda (tag)<br></td></tr
><tr
id=sl_svn198_1717

><td class="source">;     (insert (format &quot;guid=%s name=%s\n&quot;<br></td></tr
><tr
id=sl_svn198_1718

><td class="source">;                     (enutil-aget &#39;guid tag)<br></td></tr
><tr
id=sl_svn198_1719

><td class="source">;                     (enutil-aget &#39;name tag))))<br></td></tr
><tr
id=sl_svn198_1720

><td class="source">;   (enutil-aget &#39;tags (enh-command-list-tag))))<br></td></tr
><tr
id=sl_svn198_1721

><td class="source"><br></td></tr
><tr
id=sl_svn198_1722

><td class="source"><br></td></tr
><tr
id=sl_svn198_1723

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1724

><td class="source">;; Functions for executing the external command (enh-command-xxx)<br></td></tr
><tr
id=sl_svn198_1725

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1726

><td class="source"><br></td></tr
><tr
id=sl_svn198_1727

><td class="source">(defvar enh-enclient-command<br></td></tr
><tr
id=sl_svn198_1728

><td class="source">  (concat <br></td></tr
><tr
id=sl_svn198_1729

><td class="source">   (with-output-to-string<br></td></tr
><tr
id=sl_svn198_1730

><td class="source">     (call-process evernote-ruby-command nil (list standard-output nil) nil<br></td></tr
><tr
id=sl_svn198_1731

><td class="source">                   &quot;-rrbconfig&quot; &quot;-e&quot; &quot;print RbConfig::CONFIG[&#39;bindir&#39;]&quot;))<br></td></tr
><tr
id=sl_svn198_1732

><td class="source">   &quot;/enclient.rb&quot;)<br></td></tr
><tr
id=sl_svn198_1733

><td class="source">  &quot;Name of the enclient.rb command&quot;)<br></td></tr
><tr
id=sl_svn198_1734

><td class="source">(defconst enh-command-process-name &quot;Evernote-Client&quot;)<br></td></tr
><tr
id=sl_svn198_1735

><td class="source">(defconst enh-command-output-buffer-name &quot;*Evernote-Client-Output*&quot;)<br></td></tr
><tr
id=sl_svn198_1736

><td class="source"><br></td></tr
><tr
id=sl_svn198_1737

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_1738

><td class="source">;; Const variables.<br></td></tr
><tr
id=sl_svn198_1739

><td class="source">;;<br></td></tr
><tr
id=sl_svn198_1740

><td class="source"><br></td></tr
><tr
id=sl_svn198_1741

><td class="source">(defconst enh-command-error-ok                  0)<br></td></tr
><tr
id=sl_svn198_1742

><td class="source">(defconst enh-command-error-not-found         100)<br></td></tr
><tr
id=sl_svn198_1743

><td class="source">(defconst enh-command-error-unexpected        101)<br></td></tr
><tr
id=sl_svn198_1744

><td class="source">(defconst enh-command-error-not-authed        102)<br></td></tr
><tr
id=sl_svn198_1745

><td class="source">(defconst enh-command-error-unknown             1)<br></td></tr
><tr
id=sl_svn198_1746

><td class="source">(defconst enh-command-error-bad-data-format     2)<br></td></tr
><tr
id=sl_svn198_1747

><td class="source">(defconst enh-command-error-permission-denied   3)<br></td></tr
><tr
id=sl_svn198_1748

><td class="source">(defconst enh-command-error-internal-error      4)<br></td></tr
><tr
id=sl_svn198_1749

><td class="source">(defconst enh-command-error-data-required       5)<br></td></tr
><tr
id=sl_svn198_1750

><td class="source">(defconst enh-command-error-limit-reached       6)<br></td></tr
><tr
id=sl_svn198_1751

><td class="source">(defconst enh-command-error-quota-reached       7)<br></td></tr
><tr
id=sl_svn198_1752

><td class="source">(defconst enh-command-error-invalid-auth        8)<br></td></tr
><tr
id=sl_svn198_1753

><td class="source">(defconst enh-command-error-auth-expired        9)<br></td></tr
><tr
id=sl_svn198_1754

><td class="source">(defconst enh-command-error-data-conflict      10)<br></td></tr
><tr
id=sl_svn198_1755

><td class="source">(defconst enh-command-error-enml-validation    11)<br></td></tr
><tr
id=sl_svn198_1756

><td class="source">(defconst enh-command-error-shared-unavailable 12)<br></td></tr
><tr
id=sl_svn198_1757

><td class="source"><br></td></tr
><tr
id=sl_svn198_1758

><td class="source">(defvar enh-command-last-result-code enh-command-error-ok)<br></td></tr
><tr
id=sl_svn198_1759

><td class="source">(defvar enh-command-last-error-message nil)<br></td></tr
><tr
id=sl_svn198_1760

><td class="source">(defvar enh-command-next-command-id 0)<br></td></tr
><tr
id=sl_svn198_1761

><td class="source"><br></td></tr
><tr
id=sl_svn198_1762

><td class="source"><br></td></tr
><tr
id=sl_svn198_1763

><td class="source">(defun enh-command-login (user passwd)<br></td></tr
><tr
id=sl_svn198_1764

><td class="source">  &quot;Issue login command&quot;<br></td></tr
><tr
id=sl_svn198_1765

><td class="source">  (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1766

><td class="source">   (format &quot;:class =&gt; %s, :user =&gt; %s, :passwd =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1767

><td class="source">           (enutil-to-ruby-string &quot;AuthCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1768

><td class="source">           (enutil-to-ruby-string user)<br></td></tr
><tr
id=sl_svn198_1769

><td class="source">           (enutil-to-ruby-string passwd))))<br></td></tr
><tr
id=sl_svn198_1770

><td class="source"><br></td></tr
><tr
id=sl_svn198_1771

><td class="source"><br></td></tr
><tr
id=sl_svn198_1772

><td class="source">(defun enh-command-get-notebook-attrs ()<br></td></tr
><tr
id=sl_svn198_1773

><td class="source">  &quot;Issue listnotebooks command&quot;<br></td></tr
><tr
id=sl_svn198_1774

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1775

><td class="source">                (format &quot;:class =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1776

><td class="source">                        (enutil-to-ruby-string &quot;ListNotebookCommand&quot;)))))<br></td></tr
><tr
id=sl_svn198_1777

><td class="source">    (enutil-aget &#39;notebooks reply)))<br></td></tr
><tr
id=sl_svn198_1778

><td class="source"><br></td></tr
><tr
id=sl_svn198_1779

><td class="source"><br></td></tr
><tr
id=sl_svn198_1780

><td class="source">(defun enh-command-get-tag-attrs ()<br></td></tr
><tr
id=sl_svn198_1781

><td class="source">  &quot;Issue listtags command&quot;<br></td></tr
><tr
id=sl_svn198_1782

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1783

><td class="source">                (format &quot;:class =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1784

><td class="source">                        (enutil-to-ruby-string &quot;ListTagCommand&quot;)))))<br></td></tr
><tr
id=sl_svn198_1785

><td class="source">    (enutil-aget &#39;tags reply)))<br></td></tr
><tr
id=sl_svn198_1786

><td class="source"><br></td></tr
><tr
id=sl_svn198_1787

><td class="source"><br></td></tr
><tr
id=sl_svn198_1788

><td class="source">(defun enh-command-get-note-attr (guid)<br></td></tr
><tr
id=sl_svn198_1789

><td class="source">  &quot;Issue getnote command from the tag name list.&quot;<br></td></tr
><tr
id=sl_svn198_1790

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1791

><td class="source">                (format &quot;:class =&gt; %s, :guid =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1792

><td class="source">                        (enutil-to-ruby-string &quot;GetNoteCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1793

><td class="source">                        (enutil-to-ruby-string guid)))))<br></td></tr
><tr
id=sl_svn198_1794

><td class="source">    (enutil-aget &#39;note reply)))<br></td></tr
><tr
id=sl_svn198_1795

><td class="source"><br></td></tr
><tr
id=sl_svn198_1796

><td class="source"><br></td></tr
><tr
id=sl_svn198_1797

><td class="source">(defun enh-command-get-note-attrs-from-notebook-and-tag-guids (notebook-guid tag-guids)<br></td></tr
><tr
id=sl_svn198_1798

><td class="source">  &quot;Issue listnotes command from the notebook guid and the tag guids.&quot;<br></td></tr
><tr
id=sl_svn198_1799

><td class="source">  (message &quot;notebook %s&quot; notebook-guid)<br></td></tr
><tr
id=sl_svn198_1800

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1801

><td class="source">                (format &quot;:class =&gt; %s, :notebook_guid =&gt; %s, :tag_guids =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1802

><td class="source">                        (enutil-to-ruby-string &quot;ListNoteCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1803

><td class="source">                        (enutil-to-ruby-string notebook-guid)<br></td></tr
><tr
id=sl_svn198_1804

><td class="source">                        (enutil-to-ruby-string-list tag-guids nil)))))<br></td></tr
><tr
id=sl_svn198_1805

><td class="source">    (enutil-aget &#39;notes reply)))<br></td></tr
><tr
id=sl_svn198_1806

><td class="source"><br></td></tr
><tr
id=sl_svn198_1807

><td class="source"><br></td></tr
><tr
id=sl_svn198_1808

><td class="source">(defun enh-command-get-note-attrs-from-query (query)<br></td></tr
><tr
id=sl_svn198_1809

><td class="source">  &quot;Issue listnotes command from the query.&quot;<br></td></tr
><tr
id=sl_svn198_1810

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1811

><td class="source">                (format &quot;:class =&gt; %s, :query =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1812

><td class="source">                        (enutil-to-ruby-string &quot;SearchNoteCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1813

><td class="source">                        (enutil-to-ruby-string query)))))<br></td></tr
><tr
id=sl_svn198_1814

><td class="source">    (enutil-aget &#39;notes reply)))<br></td></tr
><tr
id=sl_svn198_1815

><td class="source"><br></td></tr
><tr
id=sl_svn198_1816

><td class="source"><br></td></tr
><tr
id=sl_svn198_1817

><td class="source">(defun enh-command-get-note-content (guid edit-mode)<br></td></tr
><tr
id=sl_svn198_1818

><td class="source">  &quot;Issue getnotecontent command specified by the guid and the edit mode.&quot;<br></td></tr
><tr
id=sl_svn198_1819

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1820

><td class="source">                (format &quot;:class =&gt; %s, :guid =&gt; %s, :edit_mode =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1821

><td class="source">                        (enutil-to-ruby-string &quot;GetContentCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1822

><td class="source">                        (enutil-to-ruby-string guid)<br></td></tr
><tr
id=sl_svn198_1823

><td class="source">                        (enutil-to-ruby-string edit-mode)))))<br></td></tr
><tr
id=sl_svn198_1824

><td class="source">    (enutil-aget &#39;content reply)))<br></td></tr
><tr
id=sl_svn198_1825

><td class="source"><br></td></tr
><tr
id=sl_svn198_1826

><td class="source"><br></td></tr
><tr
id=sl_svn198_1827

><td class="source">(defun enh-command-create-note (inbuf name notebook-guid tag-names edit-mode)<br></td></tr
><tr
id=sl_svn198_1828

><td class="source">  &quot;Issue createnote command specified by the guid, tags and the edit-mode.&quot;<br></td></tr
><tr
id=sl_svn198_1829

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1830

><td class="source">                (format &quot;:class =&gt; %s, :notebook_guid =&gt; %s, :title =&gt; %s, :tag_names =&gt; %s, :edit_mode =&gt; %s, :content =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1831

><td class="source">                        (enutil-to-ruby-string &quot;CreateNoteCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1832

><td class="source">                        (enutil-to-ruby-string notebook-guid)<br></td></tr
><tr
id=sl_svn198_1833

><td class="source">                        (enutil-to-ruby-string name)<br></td></tr
><tr
id=sl_svn198_1834

><td class="source">                        (enutil-to-ruby-string-list tag-names nil)<br></td></tr
><tr
id=sl_svn198_1835

><td class="source">                        (enutil-to-ruby-string edit-mode)<br></td></tr
><tr
id=sl_svn198_1836

><td class="source">                        (enutil-to-ruby-string (enutil-buffer-string inbuf))))))<br></td></tr
><tr
id=sl_svn198_1837

><td class="source">    (enutil-aget &#39;note reply)))<br></td></tr
><tr
id=sl_svn198_1838

><td class="source"><br></td></tr
><tr
id=sl_svn198_1839

><td class="source"><br></td></tr
><tr
id=sl_svn198_1840

><td class="source">(defun enh-command-update-note (inbuf guid name notebook-guid is-tag-updated tag-names edit-mode)<br></td></tr
><tr
id=sl_svn198_1841

><td class="source">  &quot;Issue updatenote command specified by the guid and the parameters for updating.&quot;<br></td></tr
><tr
id=sl_svn198_1842

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1843

><td class="source">                (format &quot;:class =&gt; %s, :guid =&gt; %s, :notebook_guid =&gt; %s, :title =&gt; %s, :tag_names =&gt; %s, :edit_mode =&gt; %s, :content =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1844

><td class="source">                        (enutil-to-ruby-string &quot;UpdateNoteCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1845

><td class="source">                        (enutil-to-ruby-string guid)<br></td></tr
><tr
id=sl_svn198_1846

><td class="source">                        (enutil-to-ruby-string notebook-guid)<br></td></tr
><tr
id=sl_svn198_1847

><td class="source">                        (enutil-to-ruby-string name)<br></td></tr
><tr
id=sl_svn198_1848

><td class="source">                        (enutil-to-ruby-string-list tag-names is-tag-updated)<br></td></tr
><tr
id=sl_svn198_1849

><td class="source">                        (enutil-to-ruby-string edit-mode)<br></td></tr
><tr
id=sl_svn198_1850

><td class="source">                        (enutil-to-ruby-string (enutil-buffer-string inbuf))))))<br></td></tr
><tr
id=sl_svn198_1851

><td class="source">    (enutil-aget &#39;note reply)))<br></td></tr
><tr
id=sl_svn198_1852

><td class="source"><br></td></tr
><tr
id=sl_svn198_1853

><td class="source"><br></td></tr
><tr
id=sl_svn198_1854

><td class="source">(defun enh-command-delete-note (guid)<br></td></tr
><tr
id=sl_svn198_1855

><td class="source">  &quot;Issue deletenote command specified by the guid, tags and the edit mode.&quot;<br></td></tr
><tr
id=sl_svn198_1856

><td class="source">  (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1857

><td class="source">   (format &quot;:class =&gt; %s, :guid =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1858

><td class="source">           (enutil-to-ruby-string &quot;DeleteNoteCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1859

><td class="source">           (enutil-to-ruby-string guid))))<br></td></tr
><tr
id=sl_svn198_1860

><td class="source"><br></td></tr
><tr
id=sl_svn198_1861

><td class="source"><br></td></tr
><tr
id=sl_svn198_1862

><td class="source">(defun enh-command-create-notebook (name default-notebook)<br></td></tr
><tr
id=sl_svn198_1863

><td class="source">  &quot;Issue createnotebook command&quot;<br></td></tr
><tr
id=sl_svn198_1864

><td class="source">  (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1865

><td class="source">   (format &quot;:class =&gt; %s, :name =&gt; %s, :default_notebook =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1866

><td class="source">           (enutil-to-ruby-string &quot;CreateNotebookCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1867

><td class="source">           (enutil-to-ruby-string name)<br></td></tr
><tr
id=sl_svn198_1868

><td class="source">           (if default-notebook &quot;true&quot; &quot;false&quot;))))<br></td></tr
><tr
id=sl_svn198_1869

><td class="source"><br></td></tr
><tr
id=sl_svn198_1870

><td class="source"><br></td></tr
><tr
id=sl_svn198_1871

><td class="source">(defun enh-command-update-notebook (guid name default-notebook)<br></td></tr
><tr
id=sl_svn198_1872

><td class="source">  &quot;Issue updatenotebook command&quot;<br></td></tr
><tr
id=sl_svn198_1873

><td class="source">  (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1874

><td class="source">   (format &quot;:class =&gt; %s, :guid =&gt; %s, :name =&gt; %s, :default_notebook =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1875

><td class="source">           (enutil-to-ruby-string &quot;UpdateNotebookCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1876

><td class="source">           (enutil-to-ruby-string guid)<br></td></tr
><tr
id=sl_svn198_1877

><td class="source">           (enutil-to-ruby-string name)<br></td></tr
><tr
id=sl_svn198_1878

><td class="source">           (if default-notebook &quot;true&quot; &quot;false&quot;))))<br></td></tr
><tr
id=sl_svn198_1879

><td class="source"><br></td></tr
><tr
id=sl_svn198_1880

><td class="source"><br></td></tr
><tr
id=sl_svn198_1881

><td class="source">(defun enh-command-get-search-attrs ()<br></td></tr
><tr
id=sl_svn198_1882

><td class="source">  &quot;Issue listsearch command&quot;<br></td></tr
><tr
id=sl_svn198_1883

><td class="source">  (let ((reply (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1884

><td class="source">                (format &quot;:class =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1885

><td class="source">                        (enutil-to-ruby-string &quot;ListSearchCommand&quot;)))))<br></td></tr
><tr
id=sl_svn198_1886

><td class="source">    (enutil-aget &#39;searches reply)))<br></td></tr
><tr
id=sl_svn198_1887

><td class="source"><br></td></tr
><tr
id=sl_svn198_1888

><td class="source"><br></td></tr
><tr
id=sl_svn198_1889

><td class="source">(defun enh-command-create-search (name query)<br></td></tr
><tr
id=sl_svn198_1890

><td class="source">  &quot;Issue createsearch command&quot;<br></td></tr
><tr
id=sl_svn198_1891

><td class="source">  (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1892

><td class="source">   (format &quot;:class =&gt; %s, :name =&gt; %s, :query =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1893

><td class="source">           (enutil-to-ruby-string &quot;CreateSearchCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1894

><td class="source">           (enutil-to-ruby-string name)<br></td></tr
><tr
id=sl_svn198_1895

><td class="source">           (enutil-to-ruby-string query))))<br></td></tr
><tr
id=sl_svn198_1896

><td class="source"><br></td></tr
><tr
id=sl_svn198_1897

><td class="source"><br></td></tr
><tr
id=sl_svn198_1898

><td class="source">(defun enh-command-update-search (guid name query)<br></td></tr
><tr
id=sl_svn198_1899

><td class="source">  &quot;Issue updatesearch command&quot;<br></td></tr
><tr
id=sl_svn198_1900

><td class="source">  (enh-command-issue<br></td></tr
><tr
id=sl_svn198_1901

><td class="source">   (format &quot;:class =&gt; %s, :guid =&gt; %s, :name =&gt; %s, :query =&gt; %s&quot;<br></td></tr
><tr
id=sl_svn198_1902

><td class="source">           (enutil-to-ruby-string &quot;UpdateSearchCommand&quot;)<br></td></tr
><tr
id=sl_svn198_1903

><td class="source">           (enutil-to-ruby-string guid)<br></td></tr
><tr
id=sl_svn198_1904

><td class="source">           (enutil-to-ruby-string name)<br></td></tr
><tr
id=sl_svn198_1905

><td class="source">           (enutil-to-ruby-string query))))<br></td></tr
><tr
id=sl_svn198_1906

><td class="source"><br></td></tr
><tr
id=sl_svn198_1907

><td class="source"><br></td></tr
><tr
id=sl_svn198_1908

><td class="source">(defun enh-command-issue (command)<br></td></tr
><tr
id=sl_svn198_1909

><td class="source">  (enh-command-setup-process)<br></td></tr
><tr
id=sl_svn198_1910

><td class="source">  (let ((proc (get-process enh-command-process-name))<br></td></tr
><tr
id=sl_svn198_1911

><td class="source">        (reply nil)<br></td></tr
><tr
id=sl_svn198_1912

><td class="source">        (buffer (get-buffer enh-command-output-buffer-name)))<br></td></tr
><tr
id=sl_svn198_1913

><td class="source">    (message &quot;Waiting for the result...&quot;)<br></td></tr
><tr
id=sl_svn198_1914

><td class="source">    (save-excursion<br></td></tr
><tr
id=sl_svn198_1915

><td class="source">      (set-buffer buffer)<br></td></tr
><tr
id=sl_svn198_1916

><td class="source">      (erase-buffer)<br></td></tr
><tr
id=sl_svn198_1917

><td class="source">      ;(delete-region (point-min) (point-max))<br></td></tr
><tr
id=sl_svn198_1918

><td class="source">      (setq enh-command-next-command-id<br></td></tr
><tr
id=sl_svn198_1919

><td class="source">            (+ 1 enh-command-next-command-id))<br></td></tr
><tr
id=sl_svn198_1920

><td class="source">      (process-send-string proc<br></td></tr
><tr
id=sl_svn198_1921

><td class="source">                           (format &quot;{%s, :command_id =&gt; %d}&quot;<br></td></tr
><tr
id=sl_svn198_1922

><td class="source">                                   command enh-command-next-command-id))<br></td></tr
><tr
id=sl_svn198_1923

><td class="source">      (process-send-string proc &quot;\x00\n&quot;)<br></td></tr
><tr
id=sl_svn198_1924

><td class="source">      (while (or (not reply)<br></td></tr
><tr
id=sl_svn198_1925

><td class="source">                 (enutil-neq (enutil-aget &#39;command_id reply)<br></td></tr
><tr
id=sl_svn198_1926

><td class="source">                             enh-command-next-command-id))<br></td></tr
><tr
id=sl_svn198_1927

><td class="source">        (accept-process-output proc)<br></td></tr
><tr
id=sl_svn198_1928

><td class="source">        (setq reply (enutil-get-first-sexp-in-buffer))))<br></td></tr
><tr
id=sl_svn198_1929

><td class="source">    (message &quot;&quot;)<br></td></tr
><tr
id=sl_svn198_1930

><td class="source">    (if (eq (enutil-aget &#39;class reply) &#39;ErrorReply)<br></td></tr
><tr
id=sl_svn198_1931

><td class="source">        (progn<br></td></tr
><tr
id=sl_svn198_1932

><td class="source">          (setq enh-command-last-result-code (enutil-aget &#39;result_code reply))<br></td></tr
><tr
id=sl_svn198_1933

><td class="source">          (setq enh-command-last-error-message (enutil-aget &#39;message reply))<br></td></tr
><tr
id=sl_svn198_1934

><td class="source">          (throw &#39;error enh-command-last-result-code))<br></td></tr
><tr
id=sl_svn198_1935

><td class="source">      (setq enh-command-last-result-code enh-command-error-ok)<br></td></tr
><tr
id=sl_svn198_1936

><td class="source">      reply)))<br></td></tr
><tr
id=sl_svn198_1937

><td class="source"><br></td></tr
><tr
id=sl_svn198_1938

><td class="source"><br></td></tr
><tr
id=sl_svn198_1939

><td class="source">(defun enh-command-sentinel (process event)<br></td></tr
><tr
id=sl_svn198_1940

><td class="source">  (error &quot;enclient.rb %s%s&quot; event<br></td></tr
><tr
id=sl_svn198_1941

><td class="source">         (with-current-buffer enh-command-output-buffer-name<br></td></tr
><tr
id=sl_svn198_1942

><td class="source">           (buffer-string))))<br></td></tr
><tr
id=sl_svn198_1943

><td class="source"><br></td></tr
><tr
id=sl_svn198_1944

><td class="source">(defun enh-command-setup-process ()<br></td></tr
><tr
id=sl_svn198_1945

><td class="source">  (let ((proc (get-process enh-command-process-name))<br></td></tr
><tr
id=sl_svn198_1946

><td class="source">        (process-connection-type nil)) ; use pipe instead of pty<br></td></tr
><tr
id=sl_svn198_1947

><td class="source">    (when (or (not proc)<br></td></tr
><tr
id=sl_svn198_1948

><td class="source">              (not (eq (process-status proc) &#39;run)))<br></td></tr
><tr
id=sl_svn198_1949

><td class="source">      (setq proc (start-process enh-command-process-name<br></td></tr
><tr
id=sl_svn198_1950

><td class="source">                                enh-command-output-buffer-name<br></td></tr
><tr
id=sl_svn198_1951

><td class="source">                                evernote-ruby-command &quot;-S&quot; enh-enclient-command))<br></td></tr
><tr
id=sl_svn198_1952

><td class="source">      (set-process-sentinel proc &#39;enh-command-sentinel)<br></td></tr
><tr
id=sl_svn198_1953

><td class="source">      (set-process-coding-system proc &#39;utf-8 &#39;utf-8)<br></td></tr
><tr
id=sl_svn198_1954

><td class="source">      (set-process-query-on-exit-flag proc nil))))<br></td></tr
><tr
id=sl_svn198_1955

><td class="source"><br></td></tr
><tr
id=sl_svn198_1956

><td class="source"><br></td></tr
><tr
id=sl_svn198_1957

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1958

><td class="source">;; Helper functions for all modes in this file (enh-xxx)<br></td></tr
><tr
id=sl_svn198_1959

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_1960

><td class="source"><br></td></tr
><tr
id=sl_svn198_1961

><td class="source">(defvar enh-notebook-info (make-hash-table :test #&#39;equal)<br></td></tr
><tr
id=sl_svn198_1962

><td class="source">  &quot;Notebook info associated with the guid&quot;)<br></td></tr
><tr
id=sl_svn198_1963

><td class="source"><br></td></tr
><tr
id=sl_svn198_1964

><td class="source"><br></td></tr
><tr
id=sl_svn198_1965

><td class="source">(defvar enh-tag-info (make-hash-table :test #&#39;equal)<br></td></tr
><tr
id=sl_svn198_1966

><td class="source">  &quot;Tag info associated with the guid&quot;)<br></td></tr
><tr
id=sl_svn198_1967

><td class="source"><br></td></tr
><tr
id=sl_svn198_1968

><td class="source"><br></td></tr
><tr
id=sl_svn198_1969

><td class="source">(defvar enh-search-info (make-hash-table :test #&#39;equal)<br></td></tr
><tr
id=sl_svn198_1970

><td class="source">  &quot;Saved search info associated with the guid&quot;)<br></td></tr
><tr
id=sl_svn198_1971

><td class="source"><br></td></tr
><tr
id=sl_svn198_1972

><td class="source"><br></td></tr
><tr
id=sl_svn198_1973

><td class="source">(defvar enh-note-attr nil<br></td></tr
><tr
id=sl_svn198_1974

><td class="source">  &quot;Note attr associated with most recently accessed guid&quot;)<br></td></tr
><tr
id=sl_svn198_1975

><td class="source"><br></td></tr
><tr
id=sl_svn198_1976

><td class="source"><br></td></tr
><tr
id=sl_svn198_1977

><td class="source">(defvar enh-password-cache-file &quot;~/.evernote-mode/password.gpg&quot;<br></td></tr
><tr
id=sl_svn198_1978

><td class="source">  &quot;Filename of saving password cache.&quot;)<br></td></tr
><tr
id=sl_svn198_1979

><td class="source"><br></td></tr
><tr
id=sl_svn198_1980

><td class="source"><br></td></tr
><tr
id=sl_svn198_1981

><td class="source">(defvar enh-password-cache-buffer &quot; *evernote-password-cache*&quot;)<br></td></tr
><tr
id=sl_svn198_1982

><td class="source"><br></td></tr
><tr
id=sl_svn198_1983

><td class="source"><br></td></tr
><tr
id=sl_svn198_1984

><td class="source">(defun enh-get-notebook-attrs ()<br></td></tr
><tr
id=sl_svn198_1985

><td class="source">  (when (eq (hash-table-count enh-notebook-info) 0)<br></td></tr
><tr
id=sl_svn198_1986

><td class="source">    (mapc<br></td></tr
><tr
id=sl_svn198_1987

><td class="source">     (lambda (attr)<br></td></tr
><tr
id=sl_svn198_1988

><td class="source">       (puthash (enutil-aget &#39;guid attr) attr enh-notebook-info))<br></td></tr
><tr
id=sl_svn198_1989

><td class="source">     (enh-command-get-notebook-attrs)))<br></td></tr
><tr
id=sl_svn198_1990

><td class="source">  enh-notebook-info)<br></td></tr
><tr
id=sl_svn198_1991

><td class="source"><br></td></tr
><tr
id=sl_svn198_1992

><td class="source"><br></td></tr
><tr
id=sl_svn198_1993

><td class="source">(defun enh-get-tag-attrs ()<br></td></tr
><tr
id=sl_svn198_1994

><td class="source">  (when (eq (hash-table-count enh-tag-info) 0)<br></td></tr
><tr
id=sl_svn198_1995

><td class="source">    (mapc<br></td></tr
><tr
id=sl_svn198_1996

><td class="source">     (lambda (attr)<br></td></tr
><tr
id=sl_svn198_1997

><td class="source">       (puthash (enutil-aget &#39;guid attr) attr enh-tag-info))<br></td></tr
><tr
id=sl_svn198_1998

><td class="source">     (enh-command-get-tag-attrs)))<br></td></tr
><tr
id=sl_svn198_1999

><td class="source">  enh-tag-info)<br></td></tr
><tr
id=sl_svn198_2000

><td class="source"><br></td></tr
><tr
id=sl_svn198_2001

><td class="source"><br></td></tr
><tr
id=sl_svn198_2002

><td class="source">(defun enh-get-search-attrs ()<br></td></tr
><tr
id=sl_svn198_2003

><td class="source">  (when (eq (hash-table-count enh-search-info) 0)<br></td></tr
><tr
id=sl_svn198_2004

><td class="source">    (mapc<br></td></tr
><tr
id=sl_svn198_2005

><td class="source">     (lambda (attr)<br></td></tr
><tr
id=sl_svn198_2006

><td class="source">       (puthash (enutil-aget &#39;guid attr) attr enh-search-info))<br></td></tr
><tr
id=sl_svn198_2007

><td class="source">     (enh-command-get-search-attrs)))<br></td></tr
><tr
id=sl_svn198_2008

><td class="source">  enh-search-info)<br></td></tr
><tr
id=sl_svn198_2009

><td class="source"><br></td></tr
><tr
id=sl_svn198_2010

><td class="source"><br></td></tr
><tr
id=sl_svn198_2011

><td class="source">(defun enh-get-note-attr (guid)<br></td></tr
><tr
id=sl_svn198_2012

><td class="source">  &quot;Get the note attr from the guid&quot;<br></td></tr
><tr
id=sl_svn198_2013

><td class="source">  (if (and enh-note-attr<br></td></tr
><tr
id=sl_svn198_2014

><td class="source">           (string= guid (enutil-aget &#39;guid enh-note-attr)))<br></td></tr
><tr
id=sl_svn198_2015

><td class="source">      enh-note-attr<br></td></tr
><tr
id=sl_svn198_2016

><td class="source">    (setq enh-note-attr (enh-command-get-note-attr guid))))<br></td></tr
><tr
id=sl_svn198_2017

><td class="source"><br></td></tr
><tr
id=sl_svn198_2018

><td class="source"><br></td></tr
><tr
id=sl_svn198_2019

><td class="source">(defun enh-get-notebook-attr (guid)<br></td></tr
><tr
id=sl_svn198_2020

><td class="source">  &quot;Get the notebook attr from the guid&quot;<br></td></tr
><tr
id=sl_svn198_2021

><td class="source">  (gethash guid (enh-get-notebook-attrs)))<br></td></tr
><tr
id=sl_svn198_2022

><td class="source"><br></td></tr
><tr
id=sl_svn198_2023

><td class="source"><br></td></tr
><tr
id=sl_svn198_2024

><td class="source">(defun enh-get-tag-attr (guid)<br></td></tr
><tr
id=sl_svn198_2025

><td class="source">  &quot;Get the tag attr from the guid&quot;<br></td></tr
><tr
id=sl_svn198_2026

><td class="source">  (gethash guid (enh-get-tag-attrs)))<br></td></tr
><tr
id=sl_svn198_2027

><td class="source"><br></td></tr
><tr
id=sl_svn198_2028

><td class="source"><br></td></tr
><tr
id=sl_svn198_2029

><td class="source">(defun enh-get-search-attr (guid)<br></td></tr
><tr
id=sl_svn198_2030

><td class="source">  &quot;Get the search attr from the guid&quot;<br></td></tr
><tr
id=sl_svn198_2031

><td class="source">  (gethash guid (enh-get-search-attrs)))<br></td></tr
><tr
id=sl_svn198_2032

><td class="source"><br></td></tr
><tr
id=sl_svn198_2033

><td class="source"><br></td></tr
><tr
id=sl_svn198_2034

><td class="source">(defun enh-read-tag-guids (&amp;optional prompt)<br></td></tr
><tr
id=sl_svn198_2035

><td class="source">  (enh-tag-names-to-guids<br></td></tr
><tr
id=sl_svn198_2036

><td class="source">   (enutil-completing-read-multiple<br></td></tr
><tr
id=sl_svn198_2037

><td class="source">    (if prompt<br></td></tr
><tr
id=sl_svn198_2038

><td class="source">        prompt<br></td></tr
><tr
id=sl_svn198_2039

><td class="source">      &quot;Tags (comma separated form):&quot;)<br></td></tr
><tr
id=sl_svn198_2040

><td class="source">    (enh-get-tag-name-alist)<br></td></tr
><tr
id=sl_svn198_2041

><td class="source">    nil<br></td></tr
><tr
id=sl_svn198_2042

><td class="source">    t)))<br></td></tr
><tr
id=sl_svn198_2043

><td class="source"><br></td></tr
><tr
id=sl_svn198_2044

><td class="source"><br></td></tr
><tr
id=sl_svn198_2045

><td class="source">(defun enh-read-tag-names (&amp;optional prompt note-guid)<br></td></tr
><tr
id=sl_svn198_2046

><td class="source">  (enutil-completing-read-multiple<br></td></tr
><tr
id=sl_svn198_2047

><td class="source">   (if prompt<br></td></tr
><tr
id=sl_svn198_2048

><td class="source">       prompt<br></td></tr
><tr
id=sl_svn198_2049

><td class="source">     &quot;Tags (comma separated form):&quot;)<br></td></tr
><tr
id=sl_svn198_2050

><td class="source">   (enh-get-tag-name-alist)<br></td></tr
><tr
id=sl_svn198_2051

><td class="source">   nil<br></td></tr
><tr
id=sl_svn198_2052

><td class="source">   nil<br></td></tr
><tr
id=sl_svn198_2053

><td class="source">   (if note-guid<br></td></tr
><tr
id=sl_svn198_2054

><td class="source">       (enh-tag-guids-to-comma-separated-names<br></td></tr
><tr
id=sl_svn198_2055

><td class="source">        (enutil-aget &#39;tagGuids<br></td></tr
><tr
id=sl_svn198_2056

><td class="source">                     (enh-get-note-attr note-guid)))<br></td></tr
><tr
id=sl_svn198_2057

><td class="source">     nil)))<br></td></tr
><tr
id=sl_svn198_2058

><td class="source"><br></td></tr
><tr
id=sl_svn198_2059

><td class="source"><br></td></tr
><tr
id=sl_svn198_2060

><td class="source">(defun enh-format-enml (content outbuf)<br></td></tr
><tr
id=sl_svn198_2061

><td class="source">  (if evernote-enml-formatter-command<br></td></tr
><tr
id=sl_svn198_2062

><td class="source">      (let ((infile (concat (make-temp-file &quot;evernote-enml&quot;) &quot;.html&quot;))<br></td></tr
><tr
id=sl_svn198_2063

><td class="source">            (command (car evernote-enml-formatter-command))<br></td></tr
><tr
id=sl_svn198_2064

><td class="source">            (args (cdr evernote-enml-formatter-command)))<br></td></tr
><tr
id=sl_svn198_2065

><td class="source">        (setq args (append args (list infile)))<br></td></tr
><tr
id=sl_svn198_2066

><td class="source">        (with-temp-buffer<br></td></tr
><tr
id=sl_svn198_2067

><td class="source">          (insert content)<br></td></tr
><tr
id=sl_svn198_2068

><td class="source">          (write-region (point-min) (point-max) infile)<br></td></tr
><tr
id=sl_svn198_2069

><td class="source">          (message &quot;&quot;) ; remove the message notifying writing to tmp file.<br></td></tr
><tr
id=sl_svn198_2070

><td class="source">          (let ((coding-system-for-read &#39;utf-8)<br></td></tr
><tr
id=sl_svn198_2071

><td class="source">                (coding-system-for-write &#39;utf-8))<br></td></tr
><tr
id=sl_svn198_2072

><td class="source">            (apply &#39;call-process<br></td></tr
><tr
id=sl_svn198_2073

><td class="source">                   command<br></td></tr
><tr
id=sl_svn198_2074

><td class="source">                   infile<br></td></tr
><tr
id=sl_svn198_2075

><td class="source">                   outbuf<br></td></tr
><tr
id=sl_svn198_2076

><td class="source">                   nil<br></td></tr
><tr
id=sl_svn198_2077

><td class="source">                   args))))<br></td></tr
><tr
id=sl_svn198_2078

><td class="source">    (save-excursion ; insert the content as is.<br></td></tr
><tr
id=sl_svn198_2079

><td class="source">      (set-buffer outbuf)<br></td></tr
><tr
id=sl_svn198_2080

><td class="source">      (insert content))))<br></td></tr
><tr
id=sl_svn198_2081

><td class="source"><br></td></tr
><tr
id=sl_svn198_2082

><td class="source"><br></td></tr
><tr
id=sl_svn198_2083

><td class="source">(defun enh-clear-onmem-cache ()<br></td></tr
><tr
id=sl_svn198_2084

><td class="source">  (clrhash enh-notebook-info)<br></td></tr
><tr
id=sl_svn198_2085

><td class="source">  (clrhash enh-tag-info)<br></td></tr
><tr
id=sl_svn198_2086

><td class="source">  (clrhash enh-search-info)<br></td></tr
><tr
id=sl_svn198_2087

><td class="source">  (setq enh-note-attr nil))<br></td></tr
><tr
id=sl_svn198_2088

><td class="source"><br></td></tr
><tr
id=sl_svn198_2089

><td class="source"><br></td></tr
><tr
id=sl_svn198_2090

><td class="source">(defun enh-read-notebook (&amp;optional default)<br></td></tr
><tr
id=sl_svn198_2091

><td class="source">  (let ((notebook-name-attr-alist (enh-get-notebook-name-attr-alist)))<br></td></tr
><tr
id=sl_svn198_2092

><td class="source">    (enutil-aget (completing-read<br></td></tr
><tr
id=sl_svn198_2093

><td class="source">                  &quot;Notebook:&quot;<br></td></tr
><tr
id=sl_svn198_2094

><td class="source">                  notebook-name-attr-alist<br></td></tr
><tr
id=sl_svn198_2095

><td class="source">                  nil<br></td></tr
><tr
id=sl_svn198_2096

><td class="source">                  t<br></td></tr
><tr
id=sl_svn198_2097

><td class="source">                  default)<br></td></tr
><tr
id=sl_svn198_2098

><td class="source">                 notebook-name-attr-alist)))<br></td></tr
><tr
id=sl_svn198_2099

><td class="source"><br></td></tr
><tr
id=sl_svn198_2100

><td class="source"><br></td></tr
><tr
id=sl_svn198_2101

><td class="source">(defun enh-read-saved-search (&amp;optional prompt)<br></td></tr
><tr
id=sl_svn198_2102

><td class="source">  (let ((search-name-query-alist (enh-get-search-name-attr-alist)))<br></td></tr
><tr
id=sl_svn198_2103

><td class="source">    (enutil-aget (completing-read<br></td></tr
><tr
id=sl_svn198_2104

><td class="source">                  (if prompt<br></td></tr
><tr
id=sl_svn198_2105

><td class="source">                      prompt<br></td></tr
><tr
id=sl_svn198_2106

><td class="source">                    &quot;Saved search:&quot;)<br></td></tr
><tr
id=sl_svn198_2107

><td class="source">                  search-name-query-alist<br></td></tr
><tr
id=sl_svn198_2108

><td class="source">                  nil t)<br></td></tr
><tr
id=sl_svn198_2109

><td class="source">                 search-name-query-alist)))<br></td></tr
><tr
id=sl_svn198_2110

><td class="source"><br></td></tr
><tr
id=sl_svn198_2111

><td class="source"><br></td></tr
><tr
id=sl_svn198_2112

><td class="source">(defun enh-get-notebook-name-attr-alist ()<br></td></tr
><tr
id=sl_svn198_2113

><td class="source">  &quot;Get the notebook alist for completion from command output&quot;<br></td></tr
><tr
id=sl_svn198_2114

><td class="source">  (let (result)<br></td></tr
><tr
id=sl_svn198_2115

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_2116

><td class="source">     (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_2117

><td class="source">       (setq result<br></td></tr
><tr
id=sl_svn198_2118

><td class="source">             (cons<br></td></tr
><tr
id=sl_svn198_2119

><td class="source">              (cons (enutil-aget &#39;name attr)<br></td></tr
><tr
id=sl_svn198_2120

><td class="source">                    attr)<br></td></tr
><tr
id=sl_svn198_2121

><td class="source">              result)))<br></td></tr
><tr
id=sl_svn198_2122

><td class="source">     (enh-get-notebook-attrs))<br></td></tr
><tr
id=sl_svn198_2123

><td class="source">    result))<br></td></tr
><tr
id=sl_svn198_2124

><td class="source"><br></td></tr
><tr
id=sl_svn198_2125

><td class="source"><br></td></tr
><tr
id=sl_svn198_2126

><td class="source">(defun enh-get-tag-name-alist ()<br></td></tr
><tr
id=sl_svn198_2127

><td class="source">  &quot;Get the tag alist for completion from command output&quot;<br></td></tr
><tr
id=sl_svn198_2128

><td class="source">  (let (result)<br></td></tr
><tr
id=sl_svn198_2129

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_2130

><td class="source">     (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_2131

><td class="source">       (setq result<br></td></tr
><tr
id=sl_svn198_2132

><td class="source">             (cons<br></td></tr
><tr
id=sl_svn198_2133

><td class="source">              (list (enutil-aget &#39;name attr))<br></td></tr
><tr
id=sl_svn198_2134

><td class="source">              result)))<br></td></tr
><tr
id=sl_svn198_2135

><td class="source">     (enh-get-tag-attrs))<br></td></tr
><tr
id=sl_svn198_2136

><td class="source">    result))<br></td></tr
><tr
id=sl_svn198_2137

><td class="source"><br></td></tr
><tr
id=sl_svn198_2138

><td class="source"><br></td></tr
><tr
id=sl_svn198_2139

><td class="source">(defun enh-get-search-name-attr-alist ()<br></td></tr
><tr
id=sl_svn198_2140

><td class="source">  &quot;Get the alist for completion from command output&quot;<br></td></tr
><tr
id=sl_svn198_2141

><td class="source">  (let (result)<br></td></tr
><tr
id=sl_svn198_2142

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_2143

><td class="source">     (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_2144

><td class="source">       (setq result<br></td></tr
><tr
id=sl_svn198_2145

><td class="source">             (cons<br></td></tr
><tr
id=sl_svn198_2146

><td class="source">              (cons (enutil-aget &#39;name attr)<br></td></tr
><tr
id=sl_svn198_2147

><td class="source">                    attr)<br></td></tr
><tr
id=sl_svn198_2148

><td class="source">              result)))<br></td></tr
><tr
id=sl_svn198_2149

><td class="source">     (enh-get-search-attrs))<br></td></tr
><tr
id=sl_svn198_2150

><td class="source">    result))<br></td></tr
><tr
id=sl_svn198_2151

><td class="source"><br></td></tr
><tr
id=sl_svn198_2152

><td class="source"><br></td></tr
><tr
id=sl_svn198_2153

><td class="source">(defun enh-update-note-and-new-tag-attrs (note-attr)<br></td></tr
><tr
id=sl_svn198_2154

><td class="source">  (let ((tag-guids (enutil-aget &#39;tagGuids note-attr))<br></td></tr
><tr
id=sl_svn198_2155

><td class="source">        (tag-attrs (enh-get-tag-attrs)))<br></td></tr
><tr
id=sl_svn198_2156

><td class="source">    (when (catch &#39;result<br></td></tr
><tr
id=sl_svn198_2157

><td class="source">            (mapc<br></td></tr
><tr
id=sl_svn198_2158

><td class="source">             (lambda (guid)<br></td></tr
><tr
id=sl_svn198_2159

><td class="source">               (unless (gethash guid tag-attrs)<br></td></tr
><tr
id=sl_svn198_2160

><td class="source">                 (throw &#39;result t)))<br></td></tr
><tr
id=sl_svn198_2161

><td class="source">             tag-guids)<br></td></tr
><tr
id=sl_svn198_2162

><td class="source">            nil)<br></td></tr
><tr
id=sl_svn198_2163

><td class="source">      (enh-clear-onmem-cache)<br></td></tr
><tr
id=sl_svn198_2164

><td class="source">      (enh-browsing-reflesh-page &#39;tag-list))))<br></td></tr
><tr
id=sl_svn198_2165

><td class="source"><br></td></tr
><tr
id=sl_svn198_2166

><td class="source"><br></td></tr
><tr
id=sl_svn198_2167

><td class="source">(defun enh-tag-guids-to-comma-separated-names (tag-guids &amp;optional maxlen)<br></td></tr
><tr
id=sl_svn198_2168

><td class="source">  (let (line)<br></td></tr
><tr
id=sl_svn198_2169

><td class="source">    (setq line<br></td></tr
><tr
id=sl_svn198_2170

><td class="source">          (mapconcat<br></td></tr
><tr
id=sl_svn198_2171

><td class="source">           (lambda (guid)<br></td></tr
><tr
id=sl_svn198_2172

><td class="source">             (enutil-aget &#39;name (enh-get-tag-attr guid)))<br></td></tr
><tr
id=sl_svn198_2173

><td class="source">           tag-guids<br></td></tr
><tr
id=sl_svn198_2174

><td class="source">           &quot;,&quot;))<br></td></tr
><tr
id=sl_svn198_2175

><td class="source">    (if maxlen<br></td></tr
><tr
id=sl_svn198_2176

><td class="source">        (truncate-string-to-width line maxlen)<br></td></tr
><tr
id=sl_svn198_2177

><td class="source">      line)))<br></td></tr
><tr
id=sl_svn198_2178

><td class="source"><br></td></tr
><tr
id=sl_svn198_2179

><td class="source"><br></td></tr
><tr
id=sl_svn198_2180

><td class="source">(defun enh-tag-names-to-comma-separated-oct-names (tag-names)<br></td></tr
><tr
id=sl_svn198_2181

><td class="source">  (mapconcat #&#39;identity (mapcar &#39;enutil-string-to-oct tag-names) &quot;,&quot;))<br></td></tr
><tr
id=sl_svn198_2182

><td class="source"><br></td></tr
><tr
id=sl_svn198_2183

><td class="source"><br></td></tr
><tr
id=sl_svn198_2184

><td class="source">;;(defun enh-tag-guids-to-names (tag-guids)<br></td></tr
><tr
id=sl_svn198_2185

><td class="source">;;  (mapcar<br></td></tr
><tr
id=sl_svn198_2186

><td class="source">;;   (lambda (tag-guid)<br></td></tr
><tr
id=sl_svn198_2187

><td class="source">;;     (enutil-aget &#39;name (enh-get-tag-attr tag-guid)))<br></td></tr
><tr
id=sl_svn198_2188

><td class="source">;;   tag-guids))<br></td></tr
><tr
id=sl_svn198_2189

><td class="source"><br></td></tr
><tr
id=sl_svn198_2190

><td class="source"><br></td></tr
><tr
id=sl_svn198_2191

><td class="source">(defun enh-notebook-name-to-guid (notebook-name)<br></td></tr
><tr
id=sl_svn198_2192

><td class="source">  (let ((notebook-attrs (enh-get-notebook-attrs)))<br></td></tr
><tr
id=sl_svn198_2193

><td class="source">    (catch &#39;guid<br></td></tr
><tr
id=sl_svn198_2194

><td class="source">      (maphash<br></td></tr
><tr
id=sl_svn198_2195

><td class="source">       (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_2196

><td class="source">         (let ((name (enutil-aget &#39;name attr)))<br></td></tr
><tr
id=sl_svn198_2197

><td class="source">           (if (equal notebook-name name)<br></td></tr
><tr
id=sl_svn198_2198

><td class="source">               (throw &#39;guid guid))))<br></td></tr
><tr
id=sl_svn198_2199

><td class="source">       notebook-attrs))))<br></td></tr
><tr
id=sl_svn198_2200

><td class="source"><br></td></tr
><tr
id=sl_svn198_2201

><td class="source"><br></td></tr
><tr
id=sl_svn198_2202

><td class="source">(defun enh-tag-names-to-guids (tag-names)<br></td></tr
><tr
id=sl_svn198_2203

><td class="source">  (let ((tag-attrs (enh-get-tag-attrs)))<br></td></tr
><tr
id=sl_svn198_2204

><td class="source">    (mapcar<br></td></tr
><tr
id=sl_svn198_2205

><td class="source">     (lambda (name)<br></td></tr
><tr
id=sl_svn198_2206

><td class="source">       (catch &#39;guid<br></td></tr
><tr
id=sl_svn198_2207

><td class="source">         (maphash<br></td></tr
><tr
id=sl_svn198_2208

><td class="source">          (lambda (guid attr)<br></td></tr
><tr
id=sl_svn198_2209

><td class="source">            (let ((tag-name (enutil-aget &#39;name attr)))<br></td></tr
><tr
id=sl_svn198_2210

><td class="source">              (if (equal tag-name name)<br></td></tr
><tr
id=sl_svn198_2211

><td class="source">                  (throw &#39;guid guid))))<br></td></tr
><tr
id=sl_svn198_2212

><td class="source">          tag-attrs)))<br></td></tr
><tr
id=sl_svn198_2213

><td class="source">     tag-names)))<br></td></tr
><tr
id=sl_svn198_2214

><td class="source"><br></td></tr
><tr
id=sl_svn198_2215

><td class="source"><br></td></tr
><tr
id=sl_svn198_2216

><td class="source">(defun enh-read-edit-mode (default)<br></td></tr
><tr
id=sl_svn198_2217

><td class="source">  (let ((edit-mode<br></td></tr
><tr
id=sl_svn198_2218

><td class="source">         (completing-read &quot;Edit mode (type \&quot;TEXT\&quot; or \&quot;XHTML\&quot;):&quot;<br></td></tr
><tr
id=sl_svn198_2219

><td class="source">                          &#39;((&quot;TEXT&quot;) (&quot;XHTML&quot;))<br></td></tr
><tr
id=sl_svn198_2220

><td class="source">                          nil<br></td></tr
><tr
id=sl_svn198_2221

><td class="source">                          t<br></td></tr
><tr
id=sl_svn198_2222

><td class="source">                          default)))<br></td></tr
><tr
id=sl_svn198_2223

><td class="source">    (if (and edit-mode (not (string= edit-mode &quot;&quot;)))<br></td></tr
><tr
id=sl_svn198_2224

><td class="source">        edit-mode<br></td></tr
><tr
id=sl_svn198_2225

><td class="source">      default)))<br></td></tr
><tr
id=sl_svn198_2226

><td class="source"><br></td></tr
><tr
id=sl_svn198_2227

><td class="source"><br></td></tr
><tr
id=sl_svn198_2228

><td class="source">(defun enh-bookmark-make-record ()<br></td></tr
><tr
id=sl_svn198_2229

><td class="source">  &quot;Make a emacs bookmark entry for a evernote buffer.&quot;<br></td></tr
><tr
id=sl_svn198_2230

><td class="source">  `(,(buffer-name)<br></td></tr
><tr
id=sl_svn198_2231

><td class="source">    ,@(bookmark-make-record-default &#39;no-file)<br></td></tr
><tr
id=sl_svn198_2232

><td class="source">    ;; if bookmark-bmenu-toggle-filenames is t and a bookmark record doesn&#39;t<br></td></tr
><tr
id=sl_svn198_2233

><td class="source">    ;; have filename field, , Emacs23.2 raises an error.<br></td></tr
><tr
id=sl_svn198_2234

><td class="source">    ;; Here is the workaround suggested by ARISAWA Akihiro.<br></td></tr
><tr
id=sl_svn198_2235

><td class="source">    (filename . ,(format &quot;%s (evernote:%s)&quot; (buffer-name) evernote-note-guid))<br></td></tr
><tr
id=sl_svn198_2236

><td class="source">    (handler . enh-bookmark-jump)))<br></td></tr
><tr
id=sl_svn198_2237

><td class="source"><br></td></tr
><tr
id=sl_svn198_2238

><td class="source"><br></td></tr
><tr
id=sl_svn198_2239

><td class="source">(defun enh-bookmark-jump (bookmark) ;; Note: don&#39;t rename this function for the bookmark file compatibility<br></td></tr
><tr
id=sl_svn198_2240

><td class="source">  &quot;Default bookmark handler for evernote buffers.&quot;<br></td></tr
><tr
id=sl_svn198_2241

><td class="source">  (enh-command-with-auth<br></td></tr
><tr
id=sl_svn198_2242

><td class="source">   (let ((filename (bookmark-get-filename bookmark)))<br></td></tr
><tr
id=sl_svn198_2243

><td class="source">     (if (and filename (string-match &quot;(evernote:\\(.*\\))$&quot; filename))<br></td></tr
><tr
id=sl_svn198_2244

><td class="source">         (progn<br></td></tr
><tr
id=sl_svn198_2245

><td class="source">           (let* ((guid (substring filename (match-beginning 1) (match-end 1)))<br></td></tr
><tr
id=sl_svn198_2246

><td class="source">                  (attr (enh-command-get-note-attr guid)))<br></td></tr
><tr
id=sl_svn198_2247

><td class="source">             (enh-base-open-note-common attr)<br></td></tr
><tr
id=sl_svn198_2248

><td class="source">             (let ((buf (current-buffer)))<br></td></tr
><tr
id=sl_svn198_2249

><td class="source">               (bookmark-default-handler<br></td></tr
><tr
id=sl_svn198_2250

><td class="source">                `(&quot;&quot; (buffer . ,buf) . ,(bookmark-get-bookmark-record bookmark))))))<br></td></tr
><tr
id=sl_svn198_2251

><td class="source">       (message (format &quot;Invalid bookmark %s&quot; (bookmark-name-from-full-record bookmark)))))))<br></td></tr
><tr
id=sl_svn198_2252

><td class="source"><br></td></tr
><tr
id=sl_svn198_2253

><td class="source"><br></td></tr
><tr
id=sl_svn198_2254

><td class="source">(defun enh-bookmark-prepare ()<br></td></tr
><tr
id=sl_svn198_2255

><td class="source">  (interactive)<br></td></tr
><tr
id=sl_svn198_2256

><td class="source">  (set (make-local-variable &#39;bookmark-make-record-function)<br></td></tr
><tr
id=sl_svn198_2257

><td class="source">       &#39;enh-bookmark-make-record))<br></td></tr
><tr
id=sl_svn198_2258

><td class="source"><br></td></tr
><tr
id=sl_svn198_2259

><td class="source"><br></td></tr
><tr
id=sl_svn198_2260

><td class="source">(defun enh-password-cache-load ()<br></td></tr
><tr
id=sl_svn198_2261

><td class="source">  &quot;Load the password cache from the file&quot;<br></td></tr
><tr
id=sl_svn198_2262

><td class="source">  (when (and evernote-password-cache<br></td></tr
><tr
id=sl_svn198_2263

><td class="source">             (file-exists-p enh-password-cache-file))<br></td></tr
><tr
id=sl_svn198_2264

><td class="source">    (with-current-buffer (get-buffer-create enh-password-cache-buffer)<br></td></tr
><tr
id=sl_svn198_2265

><td class="source">      (insert-file-contents enh-password-cache-file)<br></td></tr
><tr
id=sl_svn198_2266

><td class="source">      (read (current-buffer)))))<br></td></tr
><tr
id=sl_svn198_2267

><td class="source"><br></td></tr
><tr
id=sl_svn198_2268

><td class="source"><br></td></tr
><tr
id=sl_svn198_2269

><td class="source">(defun enh-password-cache-save (user-password)<br></td></tr
><tr
id=sl_svn198_2270

><td class="source">  &quot;Save the password cache to the file&quot;<br></td></tr
><tr
id=sl_svn198_2271

><td class="source">  (when evernote-password-cache<br></td></tr
><tr
id=sl_svn198_2272

><td class="source">    (with-current-buffer (get-buffer-create enh-password-cache-buffer)<br></td></tr
><tr
id=sl_svn198_2273

><td class="source">      (write-region (prin1-to-string user-password) nil<br></td></tr
><tr
id=sl_svn198_2274

><td class="source">                    enh-password-cache-file))))<br></td></tr
><tr
id=sl_svn198_2275

><td class="source"><br></td></tr
><tr
id=sl_svn198_2276

><td class="source"><br></td></tr
><tr
id=sl_svn198_2277

><td class="source">(defun enh-password-cache-close ()<br></td></tr
><tr
id=sl_svn198_2278

><td class="source">  &quot;Close the password cache buffer&quot;<br></td></tr
><tr
id=sl_svn198_2279

><td class="source">  (when (get-buffer enh-password-cache-buffer)<br></td></tr
><tr
id=sl_svn198_2280

><td class="source">    (kill-buffer enh-password-cache-buffer)))<br></td></tr
><tr
id=sl_svn198_2281

><td class="source"><br></td></tr
><tr
id=sl_svn198_2282

><td class="source"><br></td></tr
><tr
id=sl_svn198_2283

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_2284

><td class="source">;; General util functions (enutil-xxx)<br></td></tr
><tr
id=sl_svn198_2285

><td class="source">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<br></td></tr
><tr
id=sl_svn198_2286

><td class="source"><br></td></tr
><tr
id=sl_svn198_2287

><td class="source"><br></td></tr
><tr
id=sl_svn198_2288

><td class="source">(defun enutil-completing-read-multiple<br></td></tr
><tr
id=sl_svn198_2289

><td class="source">  (prompt table &amp;optional predicate require-match initial-input hist def inherit-input-method)<br></td></tr
><tr
id=sl_svn198_2290

><td class="source">  &quot;Read multiple strings with completion. and return nil if no input is given&quot;<br></td></tr
><tr
id=sl_svn198_2291

><td class="source">  (let (results)<br></td></tr
><tr
id=sl_svn198_2292

><td class="source">    (setq results<br></td></tr
><tr
id=sl_svn198_2293

><td class="source">          (completing-read-multiple prompt<br></td></tr
><tr
id=sl_svn198_2294

><td class="source">                                    table<br></td></tr
><tr
id=sl_svn198_2295

><td class="source">                                    predicate<br></td></tr
><tr
id=sl_svn198_2296

><td class="source">                                    require-match<br></td></tr
><tr
id=sl_svn198_2297

><td class="source">                                    initial-input<br></td></tr
><tr
id=sl_svn198_2298

><td class="source">                                    hist<br></td></tr
><tr
id=sl_svn198_2299

><td class="source">                                    def<br></td></tr
><tr
id=sl_svn198_2300

><td class="source">                                    inherit-input-method))<br></td></tr
><tr
id=sl_svn198_2301

><td class="source">    (delete &quot;&quot; results)))<br></td></tr
><tr
id=sl_svn198_2302

><td class="source"><br></td></tr
><tr
id=sl_svn198_2303

><td class="source"><br></td></tr
><tr
id=sl_svn198_2304

><td class="source">(defun enutil-aget (key alist)<br></td></tr
><tr
id=sl_svn198_2305

><td class="source">  (let ((result-cons (assoc key alist)))<br></td></tr
><tr
id=sl_svn198_2306

><td class="source">    (when result-cons<br></td></tr
><tr
id=sl_svn198_2307

><td class="source">      (cdr result-cons))))<br></td></tr
><tr
id=sl_svn198_2308

><td class="source"><br></td></tr
><tr
id=sl_svn198_2309

><td class="source"><br></td></tr
><tr
id=sl_svn198_2310

><td class="source">(defun enutil-aset (key alist value)<br></td></tr
><tr
id=sl_svn198_2311

><td class="source">  (let ((result-cons (assoc key alist)))<br></td></tr
><tr
id=sl_svn198_2312

><td class="source">    (if result-cons<br></td></tr
><tr
id=sl_svn198_2313

><td class="source">        (setcdr result-cons value)<br></td></tr
><tr
id=sl_svn198_2314

><td class="source">      (setq alist (cons (cons key value) alist)))<br></td></tr
><tr
id=sl_svn198_2315

><td class="source">    alist))<br></td></tr
><tr
id=sl_svn198_2316

><td class="source"><br></td></tr
><tr
id=sl_svn198_2317

><td class="source"><br></td></tr
><tr
id=sl_svn198_2318

><td class="source">(defun enutil-get-current-line-string ()<br></td></tr
><tr
id=sl_svn198_2319

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn198_2320

><td class="source">    (buffer-substring<br></td></tr
><tr
id=sl_svn198_2321

><td class="source">     (progn<br></td></tr
><tr
id=sl_svn198_2322

><td class="source">       (beginning-of-line)<br></td></tr
><tr
id=sl_svn198_2323

><td class="source">       (point))<br></td></tr
><tr
id=sl_svn198_2324

><td class="source">     (progn<br></td></tr
><tr
id=sl_svn198_2325

><td class="source">       (end-of-line)<br></td></tr
><tr
id=sl_svn198_2326

><td class="source">       (point)))))<br></td></tr
><tr
id=sl_svn198_2327

><td class="source"><br></td></tr
><tr
id=sl_svn198_2328

><td class="source"><br></td></tr
><tr
id=sl_svn198_2329

><td class="source">(defun enutil-erase-buffer-forcibly ()<br></td></tr
><tr
id=sl_svn198_2330

><td class="source">  (let ((buffer-read-only nil))<br></td></tr
><tr
id=sl_svn198_2331

><td class="source">    (erase-buffer)))<br></td></tr
><tr
id=sl_svn198_2332

><td class="source"><br></td></tr
><tr
id=sl_svn198_2333

><td class="source"><br></td></tr
><tr
id=sl_svn198_2334

><td class="source">(defun enutil-get-first-line (str)<br></td></tr
><tr
id=sl_svn198_2335

><td class="source">  &quot;Get first line of the string&quot;<br></td></tr
><tr
id=sl_svn198_2336

><td class="source">  (let ((begin (string-match &quot;^.*$&quot; str)))<br></td></tr
><tr
id=sl_svn198_2337

><td class="source">    (substring str begin (match-end 0))))<br></td></tr
><tr
id=sl_svn198_2338

><td class="source"><br></td></tr
><tr
id=sl_svn198_2339

><td class="source"><br></td></tr
><tr
id=sl_svn198_2340

><td class="source">(defun enutil-get-minibuffer-string ()<br></td></tr
><tr
id=sl_svn198_2341

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn198_2342

><td class="source">    (enutil-set-buffer-to-minibuffer)<br></td></tr
><tr
id=sl_svn198_2343

><td class="source">    (buffer-substring<br></td></tr
><tr
id=sl_svn198_2344

><td class="source">     (progn<br></td></tr
><tr
id=sl_svn198_2345

><td class="source">       (goto-char (+ 1 (minibuffer-prompt-width)))<br></td></tr
><tr
id=sl_svn198_2346

><td class="source">       (point))<br></td></tr
><tr
id=sl_svn198_2347

><td class="source">     (progn<br></td></tr
><tr
id=sl_svn198_2348

><td class="source">       (end-of-line)<br></td></tr
><tr
id=sl_svn198_2349

><td class="source">       (point)))))<br></td></tr
><tr
id=sl_svn198_2350

><td class="source"><br></td></tr
><tr
id=sl_svn198_2351

><td class="source"><br></td></tr
><tr
id=sl_svn198_2352

><td class="source">(defun enutil-set-minibuffer-string (str)<br></td></tr
><tr
id=sl_svn198_2353

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn198_2354

><td class="source">    (enutil-set-buffer-to-minibuffer)<br></td></tr
><tr
id=sl_svn198_2355

><td class="source">    (delete-region<br></td></tr
><tr
id=sl_svn198_2356

><td class="source">     (progn<br></td></tr
><tr
id=sl_svn198_2357

><td class="source">       (goto-char (+ 1 (minibuffer-prompt-width)))<br></td></tr
><tr
id=sl_svn198_2358

><td class="source">       (point))<br></td></tr
><tr
id=sl_svn198_2359

><td class="source">     (progn<br></td></tr
><tr
id=sl_svn198_2360

><td class="source">       (end-of-line)<br></td></tr
><tr
id=sl_svn198_2361

><td class="source">       (point)))<br></td></tr
><tr
id=sl_svn198_2362

><td class="source">    (insert str)))<br></td></tr
><tr
id=sl_svn198_2363

><td class="source"><br></td></tr
><tr
id=sl_svn198_2364

><td class="source"><br></td></tr
><tr
id=sl_svn198_2365

><td class="source">(defun enutil-set-buffer-to-minibuffer ()<br></td></tr
><tr
id=sl_svn198_2366

><td class="source">  (set-buffer (window-buffer (active-minibuffer-window))))<br></td></tr
><tr
id=sl_svn198_2367

><td class="source"><br></td></tr
><tr
id=sl_svn198_2368

><td class="source"><br></td></tr
><tr
id=sl_svn198_2369

><td class="source">(defun enutil-minibuffer-tmp-message (msg)<br></td></tr
><tr
id=sl_svn198_2370

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn198_2371

><td class="source">    (goto-char (point-max))<br></td></tr
><tr
id=sl_svn198_2372

><td class="source">    (save-excursion (insert &quot; &quot; msg))<br></td></tr
><tr
id=sl_svn198_2373

><td class="source">    (sit-for 1)<br></td></tr
><tr
id=sl_svn198_2374

><td class="source">    (delete-region (point) (point-max))))<br></td></tr
><tr
id=sl_svn198_2375

><td class="source"><br></td></tr
><tr
id=sl_svn198_2376

><td class="source"><br></td></tr
><tr
id=sl_svn198_2377

><td class="source">(defun enutil-move-cursor-to-window (buf &amp;optional pop)<br></td></tr
><tr
id=sl_svn198_2378

><td class="source">  &quot;Move cursor to the window associated with the bufer&quot;<br></td></tr
><tr
id=sl_svn198_2379

><td class="source">  (let ((buf-window (get-buffer-window buf)))<br></td></tr
><tr
id=sl_svn198_2380

><td class="source">    (if buf-window<br></td></tr
><tr
id=sl_svn198_2381

><td class="source">        (select-window buf-window)<br></td></tr
><tr
id=sl_svn198_2382

><td class="source">      (if pop<br></td></tr
><tr
id=sl_svn198_2383

><td class="source">          (pop-to-buffer buf)<br></td></tr
><tr
id=sl_svn198_2384

><td class="source">        (switch-to-buffer buf)))))<br></td></tr
><tr
id=sl_svn198_2385

><td class="source"><br></td></tr
><tr
id=sl_svn198_2386

><td class="source"><br></td></tr
><tr
id=sl_svn198_2387

><td class="source">(defun enutil-get-first-sexp-in-buffer ()<br></td></tr
><tr
id=sl_svn198_2388

><td class="source">  (condition-case nil<br></td></tr
><tr
id=sl_svn198_2389

><td class="source">      (car (read-from-string<br></td></tr
><tr
id=sl_svn198_2390

><td class="source">            (buffer-substring<br></td></tr
><tr
id=sl_svn198_2391

><td class="source">             (point-min)<br></td></tr
><tr
id=sl_svn198_2392

><td class="source">             (point-max))))<br></td></tr
><tr
id=sl_svn198_2393

><td class="source">    (error nil)))<br></td></tr
><tr
id=sl_svn198_2394

><td class="source"><br></td></tr
><tr
id=sl_svn198_2395

><td class="source"><br></td></tr
><tr
id=sl_svn198_2396

><td class="source">(defun enutil-hash-mapcar (func hash)<br></td></tr
><tr
id=sl_svn198_2397

><td class="source">  (let (result)<br></td></tr
><tr
id=sl_svn198_2398

><td class="source">    (maphash<br></td></tr
><tr
id=sl_svn198_2399

><td class="source">     (lambda (key value)<br></td></tr
><tr
id=sl_svn198_2400

><td class="source">       (cons<br></td></tr
><tr
id=sl_svn198_2401

><td class="source">        (funcall func key value)<br></td></tr
><tr
id=sl_svn198_2402

><td class="source">        result)))<br></td></tr
><tr
id=sl_svn198_2403

><td class="source">    (nreverse result)))<br></td></tr
><tr
id=sl_svn198_2404

><td class="source"><br></td></tr
><tr
id=sl_svn198_2405

><td class="source"><br></td></tr
><tr
id=sl_svn198_2406

><td class="source">(defun enutil-to-ruby-string (str)<br></td></tr
><tr
id=sl_svn198_2407

><td class="source">  (if str<br></td></tr
><tr
id=sl_svn198_2408

><td class="source">      (progn<br></td></tr
><tr
id=sl_svn198_2409

><td class="source">        (setq str (replace-regexp-in-string &quot;\\\\&quot; &quot;\\\\\\\\&quot; str))<br></td></tr
><tr
id=sl_svn198_2410

><td class="source">        (setq str (replace-regexp-in-string &quot;&#39;&quot; &quot;\\\\&#39;&quot; str))<br></td></tr
><tr
id=sl_svn198_2411

><td class="source">        (concat  &quot;&#39;&quot; str &quot;&#39;&quot;))<br></td></tr
><tr
id=sl_svn198_2412

><td class="source">    &quot;nil&quot;))<br></td></tr
><tr
id=sl_svn198_2413

><td class="source"><br></td></tr
><tr
id=sl_svn198_2414

><td class="source"><br></td></tr
><tr
id=sl_svn198_2415

><td class="source">(defun enutil-to-ruby-string-list (str-list return-empty-array)<br></td></tr
><tr
id=sl_svn198_2416

><td class="source">  (if str-list<br></td></tr
><tr
id=sl_svn198_2417

><td class="source">      (concat<br></td></tr
><tr
id=sl_svn198_2418

><td class="source">       &quot;[&quot;<br></td></tr
><tr
id=sl_svn198_2419

><td class="source">       (mapconcat #&#39;enutil-to-ruby-string str-list &quot;,&quot;)<br></td></tr
><tr
id=sl_svn198_2420

><td class="source">       &quot;]&quot;)<br></td></tr
><tr
id=sl_svn198_2421

><td class="source">    (if return-empty-array<br></td></tr
><tr
id=sl_svn198_2422

><td class="source">        &quot;[]&quot;<br></td></tr
><tr
id=sl_svn198_2423

><td class="source">      &quot;nil&quot;)))<br></td></tr
><tr
id=sl_svn198_2424

><td class="source"><br></td></tr
><tr
id=sl_svn198_2425

><td class="source"><br></td></tr
><tr
id=sl_svn198_2426

><td class="source">(defun enutil-buffer-string (buf)<br></td></tr
><tr
id=sl_svn198_2427

><td class="source">  (save-excursion<br></td></tr
><tr
id=sl_svn198_2428

><td class="source">    (set-buffer buf)<br></td></tr
><tr
id=sl_svn198_2429

><td class="source">    (buffer-string)))<br></td></tr
><tr
id=sl_svn198_2430

><td class="source"><br></td></tr
><tr
id=sl_svn198_2431

><td class="source"><br></td></tr
><tr
id=sl_svn198_2432

><td class="source">(provide &#39;evernote-mode)<br></td></tr
><tr
id=sl_svn198_2433

><td class="source"><br></td></tr
><tr
id=sl_svn198_2434

><td class="source">;;(setq debug-on-error t)<br></td></tr
><tr
id=sl_svn198_2435

><td class="source"><br></td></tr
><tr
id=sl_svn198_2436

><td class="source">;; Local Variables:<br></td></tr
><tr
id=sl_svn198_2437

><td class="source">;; indent-tabs-mode: nil<br></td></tr
><tr
id=sl_svn198_2438

><td class="source">;; End:<br></td></tr
></table></pre>
<pre><table width="100%"><tr class="cursor_stop cursor_hidden"><td></td></tr></table></pre>
</td>
</tr></table>

 
<script type="text/javascript">
 var lineNumUnderMouse = -1;
 
 function gutterOver(num) {
 gutterOut();
 var newTR = document.getElementById('gr_svn198_' + num);
 if (newTR) {
 newTR.className = 'undermouse';
 }
 lineNumUnderMouse = num;
 }
 function gutterOut() {
 if (lineNumUnderMouse != -1) {
 var oldTR = document.getElementById(
 'gr_svn198_' + lineNumUnderMouse);
 if (oldTR) {
 oldTR.className = '';
 }
 lineNumUnderMouse = -1;
 }
 }
 var numsGenState = {table_base_id: 'nums_table_'};
 var srcGenState = {table_base_id: 'src_table_'};
 var alignerRunning = false;
 var startOver = false;
 function setLineNumberHeights() {
 if (alignerRunning) {
 startOver = true;
 return;
 }
 numsGenState.chunk_id = 0;
 numsGenState.table = document.getElementById('nums_table_0');
 numsGenState.row_num = 0;
 if (!numsGenState.table) {
 return; // Silently exit if no file is present.
 }
 srcGenState.chunk_id = 0;
 srcGenState.table = document.getElementById('src_table_0');
 srcGenState.row_num = 0;
 alignerRunning = true;
 continueToSetLineNumberHeights();
 }
 function rowGenerator(genState) {
 if (genState.row_num < genState.table.rows.length) {
 var currentRow = genState.table.rows[genState.row_num];
 genState.row_num++;
 return currentRow;
 }
 var newTable = document.getElementById(
 genState.table_base_id + (genState.chunk_id + 1));
 if (newTable) {
 genState.chunk_id++;
 genState.row_num = 0;
 genState.table = newTable;
 return genState.table.rows[0];
 }
 return null;
 }
 var MAX_ROWS_PER_PASS = 1000;
 function continueToSetLineNumberHeights() {
 var rowsInThisPass = 0;
 var numRow = 1;
 var srcRow = 1;
 while (numRow && srcRow && rowsInThisPass < MAX_ROWS_PER_PASS) {
 numRow = rowGenerator(numsGenState);
 srcRow = rowGenerator(srcGenState);
 rowsInThisPass++;
 if (numRow && srcRow) {
 if (numRow.offsetHeight != srcRow.offsetHeight) {
 numRow.firstChild.style.height = srcRow.offsetHeight + 'px';
 }
 }
 }
 if (rowsInThisPass >= MAX_ROWS_PER_PASS) {
 setTimeout(continueToSetLineNumberHeights, 10);
 } else {
 alignerRunning = false;
 if (startOver) {
 startOver = false;
 setTimeout(setLineNumberHeights, 500);
 }
 }
 }
 function initLineNumberHeights() {
 // Do 2 complete passes, because there can be races
 // between this code and prettify.
 startOver = true;
 setTimeout(setLineNumberHeights, 250);
 window.onresize = setLineNumberHeights;
 }
 initLineNumberHeights();
</script>

 
 
 <div id="log">
 <div style="text-align:right">
 <a class="ifCollapse" href="#" onclick="_toggleMeta(this); return false">Show details</a>
 <a class="ifExpand" href="#" onclick="_toggleMeta(this); return false">Hide details</a>
 </div>
 <div class="ifExpand">
 
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="changelog">
 <p>Change log</p>
 <div>
 <a href="/p/emacs-evernote-mode/source/detail?spec=svn198&amp;r=198">r198</a>
 by awasira
 on Jan 8, 2012
 &nbsp; <a href="/p/emacs-evernote-mode/source/diff?spec=svn198&r=198&amp;format=side&amp;path=/trunk/evernote-mode.el&amp;old_path=/trunk/evernote-mode.el&amp;old=197">Diff</a>
 </div>
 <pre>Fix <a title="Cannot login (Ruby 1.9.3 has one issue, but possibly some other issues)" class=closed_ref href="/p/emacs-evernote-mode/issues/detail?id=14"> issue #14 </a>.

In the ruby 1.9.3, Net::HTTP.post does not
return a body.</pre>
 </div>
 
 
 
 
 
 
 <script type="text/javascript">
 var detail_url = '/p/emacs-evernote-mode/source/detail?r=198&spec=svn198';
 var publish_url = '/p/emacs-evernote-mode/source/detail?r=198&spec=svn198#publish';
 // describe the paths of this revision in javascript.
 var changed_paths = [];
 var changed_urls = [];
 
 changed_paths.push('/trunk/evernote-mode.el');
 changed_urls.push('/p/emacs-evernote-mode/source/browse/trunk/evernote-mode.el?r\x3d198\x26spec\x3dsvn198');
 
 var selected_path = '/trunk/evernote-mode.el';
 
 
 changed_paths.push('/trunk/ruby/bin/enclient.rb');
 changed_urls.push('/p/emacs-evernote-mode/source/browse/trunk/ruby/bin/enclient.rb?r\x3d198\x26spec\x3dsvn198');
 
 
 function getCurrentPageIndex() {
 for (var i = 0; i < changed_paths.length; i++) {
 if (selected_path == changed_paths[i]) {
 return i;
 }
 }
 }
 function getNextPage() {
 var i = getCurrentPageIndex();
 if (i < changed_paths.length - 1) {
 return changed_urls[i + 1];
 }
 return null;
 }
 function getPreviousPage() {
 var i = getCurrentPageIndex();
 if (i > 0) {
 return changed_urls[i - 1];
 }
 return null;
 }
 function gotoNextPage() {
 var page = getNextPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoPreviousPage() {
 var page = getPreviousPage();
 if (!page) {
 page = detail_url;
 }
 window.location = page;
 }
 function gotoDetailPage() {
 window.location = detail_url;
 }
 function gotoPublishPage() {
 window.location = publish_url;
 }
</script>

 
 <style type="text/css">
 #review_nav {
 border-top: 3px solid white;
 padding-top: 6px;
 margin-top: 1em;
 }
 #review_nav td {
 vertical-align: middle;
 }
 #review_nav select {
 margin: .5em 0;
 }
 </style>
 <div id="review_nav">
 <table><tr><td>Go to:&nbsp;</td><td>
 <select name="files_in_rev" onchange="window.location=this.value">
 
 <option value="/p/emacs-evernote-mode/source/browse/trunk/evernote-mode.el?r=198&amp;spec=svn198"
 selected="selected"
 >/trunk/evernote-mode.el</option>
 
 <option value="/p/emacs-evernote-mode/source/browse/trunk/ruby/bin/enclient.rb?r=198&amp;spec=svn198"
 
 >/trunk/ruby/bin/enclient.rb</option>
 
 </select>
 </td></tr></table>
 
 
 



 <div style="white-space:nowrap">
 Project members,
 <a href="https://www.google.com/accounts/ServiceLogin?service=code&amp;ltmpl=phosting&amp;continue=http%3A%2F%2Fcode.google.com%2Fp%2Femacs-evernote-mode%2Fsource%2Fbrowse%2Ftrunk%2Fevernote-mode.el%3Fr%3D198&amp;followup=http%3A%2F%2Fcode.google.com%2Fp%2Femacs-evernote-mode%2Fsource%2Fbrowse%2Ftrunk%2Fevernote-mode.el%3Fr%3D198"
 >sign in</a> to write a code review</div>


 
 </div>
 
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="older_bubble">
 <p>Older revisions</p>
 
 
 <div class="closed" style="margin-bottom:3px;" >
 <a class="ifClosed" onclick="return _toggleHidden(this)"><img src="http://www.gstatic.com/codesite/ph/images/plus.gif" ></a>
 <a class="ifOpened" onclick="return _toggleHidden(this)"><img src="http://www.gstatic.com/codesite/ph/images/minus.gif" ></a>
 <a href="/p/emacs-evernote-mode/source/detail?spec=svn198&r=197">r197</a>
 by awasira
 on Jan 3, 2012
 &nbsp; <a href="/p/emacs-evernote-mode/source/diff?spec=svn198&r=197&amp;format=side&amp;path=/trunk/evernote-mode.el&amp;old_path=/trunk/evernote-mode.el&amp;old=196">Diff</a>
 <br>
 <pre class="ifOpened">Temporary fix <a title="Cannot login (Ruby 1.9.3 has one issue, but possibly some other issues)" class=closed_ref href="/p/emacs-evernote-mode/issues/detail?id=14"> issue #14 </a>.</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <a class="ifClosed" onclick="return _toggleHidden(this)"><img src="http://www.gstatic.com/codesite/ph/images/plus.gif" ></a>
 <a class="ifOpened" onclick="return _toggleHidden(this)"><img src="http://www.gstatic.com/codesite/ph/images/minus.gif" ></a>
 <a href="/p/emacs-evernote-mode/source/detail?spec=svn198&r=196">r196</a>
 by kawakami.paco.yusuke
 on Jul 9, 2011
 &nbsp; <a href="/p/emacs-evernote-mode/source/diff?spec=svn198&r=196&amp;format=side&amp;path=/trunk/evernote-mode.el&amp;old_path=/trunk/evernote-mode.el&amp;old=195">Diff</a>
 <br>
 <pre class="ifOpened">use lambda for the enh-browsing-page-
data-reflesh-closure</pre>
 </div>
 
 <div class="closed" style="margin-bottom:3px;" >
 <a class="ifClosed" onclick="return _toggleHidden(this)"><img src="http://www.gstatic.com/codesite/ph/images/plus.gif" ></a>
 <a class="ifOpened" onclick="return _toggleHidden(this)"><img src="http://www.gstatic.com/codesite/ph/images/minus.gif" ></a>
 <a href="/p/emacs-evernote-mode/source/detail?spec=svn198&r=195">r195</a>
 by kawakami.paco.yusuke
 on Jul 9, 2011
 &nbsp; <a href="/p/emacs-evernote-mode/source/diff?spec=svn198&r=195&amp;format=side&amp;path=/trunk/evernote-mode.el&amp;old_path=/trunk/evernote-mode.el&amp;old=191">Diff</a>
 <br>
 <pre class="ifOpened">applied the patch of <a title="evernote-browsing-refresh does not work for note-list" class=closed_ref href="/p/emacs-evernote-mode/issues/detail?id=11"> Issue 11 </a></pre>
 </div>
 
 
 <a href="/p/emacs-evernote-mode/source/list?path=/trunk/evernote-mode.el&start=198">All revisions of this file</a>
 </div>
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 
 <div class="pmeta_bubble_bg" style="border:1px solid white">
 <div class="round4"></div>
 <div class="round2"></div>
 <div class="round1"></div>
 <div class="box-inner">
 <div id="fileinfo_bubble">
 <p>File info</p>
 
 <div>Size: 92417 bytes,
 2438 lines</div>
 
 <div><a href="//emacs-evernote-mode.googlecode.com/svn-history/r198/trunk/evernote-mode.el">View raw file</a></div>
 </div>
 
 </div>
 <div class="round1"></div>
 <div class="round2"></div>
 <div class="round4"></div>
 </div>
 </div>
 </div>


</div>

</div>
</div>

<script src="http://www.gstatic.com/codesite/ph/4043279412481549624/js/prettify/prettify.js"></script>
<script type="text/javascript">prettyPrint();</script>


<script src="http://www.gstatic.com/codesite/ph/4043279412481549624/js/source_file_scripts.js"></script>

 <script type="text/javascript" src="http://www.gstatic.com/codesite/ph/4043279412481549624/js/kibbles.js"></script>
 <script type="text/javascript">
 var lastStop = null;
 var initialized = false;
 
 function updateCursor(next, prev) {
 if (prev && prev.element) {
 prev.element.className = 'cursor_stop cursor_hidden';
 }
 if (next && next.element) {
 next.element.className = 'cursor_stop cursor';
 lastStop = next.index;
 }
 }
 
 function pubRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftRevealed(data) {
 updateCursorForCell(data.cellId, 'cursor_stop cursor_hidden');
 if (initialized) {
 reloadCursors();
 }
 }
 
 function draftDestroyed(data) {
 updateCursorForCell(data.cellId, 'nocursor');
 if (initialized) {
 reloadCursors();
 }
 }
 function reloadCursors() {
 kibbles.skipper.reset();
 loadCursors();
 if (lastStop != null) {
 kibbles.skipper.setCurrentStop(lastStop);
 }
 }
 // possibly the simplest way to insert any newly added comments
 // is to update the class of the corresponding cursor row,
 // then refresh the entire list of rows.
 function updateCursorForCell(cellId, className) {
 var cell = document.getElementById(cellId);
 // we have to go two rows back to find the cursor location
 var row = getPreviousElement(cell.parentNode);
 row.className = className;
 }
 // returns the previous element, ignores text nodes.
 function getPreviousElement(e) {
 var element = e.previousSibling;
 if (element.nodeType == 3) {
 element = element.previousSibling;
 }
 if (element && element.tagName) {
 return element;
 }
 }
 function loadCursors() {
 // register our elements with skipper
 var elements = CR_getElements('*', 'cursor_stop');
 var len = elements.length;
 for (var i = 0; i < len; i++) {
 var element = elements[i]; 
 element.className = 'cursor_stop cursor_hidden';
 kibbles.skipper.append(element);
 }
 }
 function toggleComments() {
 CR_toggleCommentDisplay();
 reloadCursors();
 }
 function keysOnLoadHandler() {
 // setup skipper
 kibbles.skipper.addStopListener(
 kibbles.skipper.LISTENER_TYPE.PRE, updateCursor);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_top', 50);
 // Set the 'offset' option to return the middle of the client area
 // an option can be a static value, or a callback
 kibbles.skipper.setOption('padding_bottom', 100);
 // Register our keys
 kibbles.skipper.addFwdKey("n");
 kibbles.skipper.addRevKey("p");
 kibbles.keys.addKeyPressListener(
 'u', function() { window.location = detail_url; });
 kibbles.keys.addKeyPressListener(
 'r', function() { window.location = detail_url + '#publish'; });
 
 kibbles.keys.addKeyPressListener('j', gotoNextPage);
 kibbles.keys.addKeyPressListener('k', gotoPreviousPage);
 
 
 }
 </script>
<script src="http://www.gstatic.com/codesite/ph/4043279412481549624/js/code_review_scripts.js"></script>
<script type="text/javascript">
 function showPublishInstructions() {
 var element = document.getElementById('review_instr');
 if (element) {
 element.className = 'opened';
 }
 }
 var codereviews;
 function revsOnLoadHandler() {
 // register our source container with the commenting code
 var paths = {'svn198': '/trunk/evernote-mode.el'}
 codereviews = CR_controller.setup(
 {"profileUrl": null, "token": null, "assetHostPath": "http://www.gstatic.com/codesite/ph", "domainName": null, "assetVersionPath": "http://www.gstatic.com/codesite/ph/4043279412481549624", "projectName": "emacs-evernote-mode", "projectHomeUrl": "/p/emacs-evernote-mode", "relativeBaseUrl": "", "loggedInUserEmail": null}, '', 'svn198', paths,
 CR_BrowseIntegrationFactory);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, showPublishInstructions);
 
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_PUB_PLATE, pubRevealed);
 codereviews.registerActivityListener(CR_ActivityType.REVEAL_DRAFT_PLATE, draftRevealed);
 codereviews.registerActivityListener(CR_ActivityType.DISCARD_DRAFT_COMMENT, draftDestroyed);
 
 
 
 
 
 
 
 var initialized = true;
 reloadCursors();
 }
 window.onload = function() {keysOnLoadHandler(); revsOnLoadHandler();};

</script>
<script type="text/javascript" src="http://www.gstatic.com/codesite/ph/4043279412481549624/js/dit_scripts.js"></script>

 
 
 
 <script type="text/javascript" src="http://www.gstatic.com/codesite/ph/4043279412481549624/js/ph_core.js"></script>
 
 
 
 
</div> 

<div id="footer" dir="ltr">
 <div class="text">
 <a href="/projecthosting/terms.html">Terms</a> -
 <a href="http://www.google.com/privacy.html">Privacy</a> -
 <a href="/p/support/">Project Hosting Help</a>
 </div>
</div>
 <div class="hostedBy" style="margin-top: -20px;">
 <span style="vertical-align: top;">Powered by <a href="http://code.google.com/projecthosting/">Google Project Hosting</a></span>
 </div>

 
 


 
 </body>
</html>

