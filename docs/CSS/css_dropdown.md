
<style>
  #exmp_01 {
    /* margin: 0;
    padding: 0; */
  }
  #exmp_01 .dropbtn {
    background-color: #4caf50;
    color: #fff;
    padding: 16px;
    border: none;
    /* cursor: pointer; */
  }
  #exmp_01 .dropdown:hover .dropbtn {
    background-color: #3b9e3f;
  }
  #exmp_01 .dropdown-content a {
    display: block;
  }
  #exmp_01 .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    /* z-index: 1; */
  }
  #exmp_01 .dropdown-content a {
    color: #000;
    padding: 12px 16px;
    text-decoration: none;
  }
  #exmp_01 .dropdown:hover .dropdown-content {
    display: block;
  }
  #exmp_01 .dropdown:hover .dropdown-content a:hover {
    background-color: #f1f1f1;
  }
</style>
<p>下拉菜单</p>
<div id='exmp_01'>
  <div class='dropdown'>
    <button class='dropbtn'>Dropdown</button>
    <div class='dropdown-content'>
      <a href='#'>Link 1</a>
      <a href='#'>Link 2</a>
      <a href='#'>Link 3</a>
    </div>
  </div>
</div>
<p>一段话</p>

<p>下拉图像</p>

<style>
  #exmp_02 .dropdown-content {
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    /* z-index: 1; */
    display: none;
  }
  #exmp_02 .desc {
    color: #000;
    padding: 15px;
    text-align: center;
  }
  #exmp_02 .dropdown:hover .dropdown-content {
    display: block;
  }
</style>
<div id='exmp_02'>
  <div class='dropdown'>
    <img src='https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/javascript/javascript.png' alt='js' width='100'>
    <div class='dropdown-content'>
    <img src='https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/javascript/javascript.png' alt='js' width='200'>
    <div class='desc'>JavaScript</div>
    </div>
  </div>
</div>

<p>导航栏</p>

<style>
  #exmp_03 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333
  }
  #exmp_03 ul li {
    float: left;
    border-right: 1px solid #fff
  }
  #exmp_03 ul li:hover {
    background: red;
  }
  #exmp_03 ul li a {
    display: inline-block;
    text-align: center;
    color: white;
    padding: 14px 16px;
    text-decoration: none;
  }
  #exmp_03 .dropdown .dropdown-content {
    position: absolute;
    display: none;
  }
  #exmp_03 .dropdown .dropdown-content a {
    display: block;
    background-color: #f0f0f0;
    color: #000;
    min-width: 160px;
    text-align: left;
  }
  #exmp_03 .dropdown .dropdown-content a:hover {
    background-color: #e1e1e1;
  }
  #exmp_03 .dropdown:hover .dropdown-content {
    display: block;
  } 
</style>
<div id='exmp_03'>
  <ul>
    <li><a href='#home'>Home</a></li>
    <li><a href='#news'>News</a></li>
    <li class='dropdown'>
      <a href='#' class='dropbtn'>Dropdown</a>
      <div class='dropdown-content'>
        <a href='#'>Link 1</a>
        <a href='#'>Link 2</a>
        <a href='#'>Link 3</a>
      </div>
    </li>
  </ul>
</div>
<p>一句话一句话一句话一句话一句话一句话一句话一句话一句话一句话</p>