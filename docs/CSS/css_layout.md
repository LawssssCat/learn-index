
下面是一个页面的布局示例

<style>
  #divhome * {
    box-sizing: border-box;
  }
  #divhome .header, #divhome .footer{
    background-color: grey;
    color: white;
    padding: 15px;
  }
  #divhome .column {
    padding: 15px;
    float: left;    
  }
  #divhome .clearfix {
    overflow: auto;
    display: flex;
  }
  #divhome .content {
    width: 75%;
  }
  #divhome .menu {
    width: 25%;
  }
  #divhome .menu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
  }
  #divhome .menu ul li {
    background-color: #33b5e5;
    color: #fff;
    padding: 8px;
    margin-bottom: 8px;
    text-align: center;
  }
  #divhome .menu ul li:hover {
    background-color: #0099cc;
  }
</style>

<div id='divhome'>
  <div class='header'><h1>Shanghai</h1></div>
  <div class='clearfix'>
    <div class='column menu'>
      <ul>
        <li>The Flight</li>
        <li>The Flight</li>
        <li>The Flight</li>
        <li>The Flight</li>
      </ul>
    </div>
    <div class='column content'>
      <h1>The City</h1>
      <p>Shanghai is one of the four direct-administered municipalities of the People's Republic of China. Welcome to Shanghai!</p>
      <p>You will learn more about web layout and responsive web pages in a later chapter.</p>
    </div>
  </div>
  <div class='footer'>
    <p>Footer Text</p>
  </div>
</div>

下面是一个页面的布局示例


<style>
  #divhome02 * {
    box-sizing: border-box;
  }
  #divhome02 {
    background-color: #f1f1f1;
    overflow: hidden;
    color: #000;
    font-family: Arial;
    padding: 10px;
  }
  #divhome02 .header {
    background-color: #fff;
    padding: 30px;
    text-align: center;
  }
  #divhome02 .topnav {
    background-color: #333;
    border: 2px solid red;
    overflow: hidden;
  }
  #divhome02 .topnav a {
    /* display: block;
    float: left; */
    display: inline-block;
    padding: 14px 16px;
    color: #f2f2f2;
    /* text-align: center; */
    text-decoration: none;
  }
  #divhome02 .topnav .navvabout {
    float: right;
  }
  #divhome02 .topnav a:hover {
    background-color: #ddd;
    color: #000;
  }
  #divhome02 .row {
    overflow: hidden;
  }
  #divhome02 .leftcolumn {
    float: left;
    width: 75%;
  }
  #divhome02 .rightcolumn {
    float: left;
    width: 25%;
    padding-left: 20px;
    background-color: #f1f1f1;
  }
  #divhome02 .card {
    background-color: #fff;
    padding: 20px;
    margin-top: 20px;
  }
  #divhome02 .card .fakeimg {
    background-color: #aaa;
    width: 100%;
    padding: 20px;
    margin-top: 10px;
    margin-bottom: 10px;
  }
  #divhome02 .footer {
    clear: both;
    display: block;
    background-color: #ddd;
    margin-top: 20px;
    padding: 20px;
    text-align: center;
  }
  @media screen and (max-width: 800px) {
    #divhome02 .leftcolumn, #divhome02 .rightcolumn {
      width: 100%;
    }
    #divhome02 .rightcolumn {
      padding: 0;
    }
  }
  @media screen and (max-width: 400px) {
    #divhome02 .topnav a  {
      width: 100%;
    }
  }

</style>
<div id='divhome02'>
  <div class="header">
    <h1>My Website</h1>
    <p>Resize the browser window to see the effect.</p>
  </div>

  <div class="topnav">
    <a href="#">Link</a>
    <a href="#">Link</a>
    <a href="#">Link</a>
    <a href="#" class='navvabout'>About</a>
  </div>

  <div class="row">
    <div class="leftcolumn">
      <div class="card">
        <h2>TITLE HEADING</h2>
        <h5>Title description, Dec 7, 2017</h5>
        <div class="fakeimg" style="height:200px;">Image</div>
        <p>Some text..</p>
        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      </div>
      <div class="card">
        <h2>TITLE HEADING</h2>
        <h5>Title description, Sep 2, 2017</h5>
        <div class="fakeimg" style="height:200px;">Image</div>
        <p>Some text..</p>
        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
      </div>
    </div>
    <div class="rightcolumn">
      <div class="card">
        <h2>About Me</h2>
        <div class="fakeimg" style="height:100px;">Image</div>
        <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
      </div>
      <div class="card">
        <h3>Popular Post</h3>
        <div class="fakeimg"><p>Image</p></div>
        <div class="fakeimg"><p>Image</p></div>
        <div class="fakeimg"><p>Image</p></div>
      </div>
      <div class="card">
        <h3>Follow Me</h3>
        <p>Some text..</p>
      </div>
    </div>
  </div>

  <div class="footer">
    <h2>Footer</h2>
  </div>
</div>