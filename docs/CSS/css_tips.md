提示

<style>
  #exmp-tips01 {
    /* background-color: pink; */
    /* width: 100; */
    display: flex;
  }
  #exmp-tips01 .tooltip {
    margin: 0 auto;
    /* position: relative; */
    display: inline-block;
    /* border-bottom: 1px dotted black; */
    background-color: #0f3;
    color: #000;
    padding: 5px;
    width: 120px;
    text-align: center;
  }
  #exmp-tips01 .tooltip .tooltiptext {
    background-color: black;
    color: #fff;
    width: 120px;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    position: absolute;
    display:none;
  }
  #exmp-tips01 .tooltip:hover .tooltiptext {
    display: block;
  }
</style>
<div id='exmp-tips01'>
  <div class='tooltip'>移动到我上面
    <span class='tooltiptext'>提示文本</span>
  </div>
</div>

例子

<style>
  #exmp-tips02 {
    /* background: pink; */
    display: flex;
  }
  #exmp-tips02 .tooltip {
    background: yellow;
    color: #000;
    padding: 5px;
    text-align: center;
    display: inline-block;
    margin: auto;
    /* border-radius: 6px; */
    position: relative;
  }
  #exmp-tips02 .tooltip .tooltiptext {
    position: absolute;
    background-color: black;
    color: #fff;
    padding: 5px 0;
    width: 120px;
    text-align: center;
    border-radius: 6px;
    top: -5px;
    left: 105%;
    display: none;
  }
  #exmp-tips02 .tooltip:hover .tooltiptext { 
    display: block;
  }
</style>
<div id='exmp-tips02'>
  <div class='tooltip'>Hover over me
    <span class='tooltiptext'>Tooltip text</span>
  </div>
</div>

例子

<style>
  #exmp-tips03 {
    /* background: pink; */
    display: flex;
  }
  #exmp-tips03 .tooltip {
    background: green;
    margin: auto;
    color: #fff;
    position: relative;
  }
  #exmp-tips03 .tooltip .tooltiptext {
    /* box-sizing: border-box; */
    position: absolute;
    /* display: block; */
    background-color: #000;
    color: #fff;
    width: 120px;
    padding: 5px 0;
    text-align: center;
    border-radius: 6px;
    /* margin-left: -60px; */
    transform: translate(-50%, -100%);
    left: 50%;
    top: -10px;
    /* display: none; */
    opacity: 0;
    transition: opacity 0.5s;
  }
  #exmp-tips03 .tooltip .tooltiptext:after {
    content: "";
    position: absolute;
    /* margin-left: -5px; */
    left: 50%;
    transform: translate(-50%);
    top: 100%;
    border: 5px solid red;
    border-color: black transparent transparent transparent;
  }
  #exmp-tips03 .tooltip:hover .tooltiptext {
    /* display: block; */
    opacity: 1;
  }
</style>
<div id='exmp-tips03'>
  <div class='tooltip'>Hover over me 
    <span class='tooltiptext'Tooltip text</span>
  </div>
</div>