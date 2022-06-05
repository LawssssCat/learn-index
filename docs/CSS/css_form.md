<p>表单</p>

<style>
  #exmp_form01 form{
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    /* overflow: overlay; */
  }
  #exmp_form01 form label{
    color: #000;
  }
  #exmp_form01 form input[type='text'], #exmp_form01 form select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    /* display: inline-block; */
  }
  #exmp_form01 form input[type='submit'] {
    width: 100%;
    background: #4caf50;
    border: none;
    color: #fff;
    padding: 14px 20px;
    margin: 8px 0;
    border-radius: 4px;
    cursor: pointer;
  }
  #exmp_form01 form input[type='submit']:hover {
    background-color: #45a049;
  }
  #exmp_form01 form input[name='lastname'] {
    border: 2px solid red;
  }
  #exmp_form01 form input:focus {
    background: lightblue;
    border: unset;
  }
</style>
<div id='exmp_form01'>
  <form>
    <label for='f_name'>First Name</label>
    <input type='text' id='f_name' name='firstname' placeholder='Your name...'>
    <label for='l_name'>Last Name</label>
    <input type='text' id='l_name' name='lastname' placeholder='Your last name...'>
    <label for='c_name'>Country</label>
    <select id='c_name' name='country'>
      <option value='usa'>USA</option>
      <option value='canada'>Canda</option>
      <option value='cn'>China</option>
    </select>
    <input type='submit' value='Submit'>
  </form>
</div>

<p>一句话</p>

<style>
  #exmp_form02 form .searchBox {
    width: 100%;
    padding: 12px 20px 12px 3em;
    box-sizing: border-box;
    font-size: 16px;
    background: url('https://cdn.jsdelivr.net/npm/simple-icons@v7/icons/google.svg');
    background-repeat: no-repeat;
    background-position: 0.5em;
    background-size: 1.5em;
    background-color: #fff;
    border-radius: 2em 0 0 2em;
    border: 1px solid #000;
  }
  #exmp_form02 form .searchBox:hover {
    border: 1px solid #aaa;
  }
</style>
<div id='exmp_form02'>
  <form>
    <input class='searchBox' type='text' name='search' placeholder='Search'>
    
  </form>
</div>

<p>一句话</p>

<style>
  #exmp_form03 form {
    max-width: 30em;
  }
  #exmp_form03 form input[type=text] {
    width: 12em; /* 变化动画需要有一个起始值，即width */
    min-width: 6em;;
    font-size: 16px;
    border: 1px solid #000;
    box-sizing: border-box;
    padding: 12px 20px 12px 3em;
    background: url('https://cdn.jsdelivr.net/npm/simple-icons@v7/icons/google.svg');
    background-repeat: no-repeat;
    background-position: 0.5em;
    background-size: 1.5em;
    background-color: #fff;
    border-radius: 2em 0 0 2em;
    transition: width 0.4s ease;
  }
  #exmp_form03 form .searchBox:hover {
    border: 1px solid #aaa;
  }
  #exmp_form03 input[type=text]:focus , #exmp_form03 input[type=text]:valid {
    width: 100%;
  }
</style>
<div id='exmp_form03'>
  <form>
    <input class='searchBox' type='text' name='search' placeholder='Search...' required pattern='\s*.*' />
  </form>
</div>

<p>一句话</p>

<style>
  #ttaare {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
  }
</style>
<textarea id='ttaare'>Some text...</textarea>


<p>响应式表单</p>
<p>请调整浏览器窗口的大小以查看效果。当屏幕的宽度小于 600 像素时，使两列相互堆叠而不是彼此并排。</p>

> 例子使用 `媒体查询` 来创建响应式表单。

<style>
  #exmp_form05 * {
    /* box-sizing: border-box; */
  }
  #exmp_form05 label {
    /* display: inline-block; */
    padding: 12px 12px 12px 0;
    color: #000;
    display: inline-block;
  }
  #exmp_form05 input[type='text'], #exmp_form05 select, #exmp_form05 textarea {
    width: 100%;
    padding: 12px;
    box-sizing: border-box;
    /* border-radius: 4px; */
  }
  #exmp_form05 textarea { 
    height: 200px;
    resize: vertical;
  }
  #exmp_form05 .col {
    float: left;
    margin-top: 6px;
  }
  #exmp_form05 .col-25 {
    width: 25%;
  }
  #exmp_form05 .col-75 {
    width: 75%;
  }
  #exmp_form05 input[type='submit'] {
    float: right;
    padding: 12px 20px;
    background-color: #4caf50;
    border: none;
    color: #fff;
    border-radius: 4px;
    cursor: pointer;
  }
  #exmp_form05 input[type='submit']:hover {
    background-color: #45a049;
  }
  #exmp_form05 .row {
    clear: both;
  }
  #exmp_form05 .form-container {
    background-color: #f2f2f2;
    overflow: hidden;
    border-radius: 5px;
    padding: 20px;
  }
  @media screen and (max-width: 600px) {
    #exmp_form05 .col-25, #exmp_form05 .col-75, #exmp_form05 input[type='submit']{
      width: 100%;
      margin-top: 0;
    }
  }
</style>

<div id='exmp_form05'> 
  <div class='form-container'>
    <form>
      <div class='row'>
        <div class='col col-25'>
          <label form='fname'>First Name</label>
        </div>
        <div class='col col-75'>
          <input type='text' id='fname' name='firstname' placeholder='Your name...'>
        </div>
      </div>
      <div class='row'>
        <div class='col col-25'>
          <label form='lname'>Last Name</label>
        </div>
        <div class='col col-75'>
          <input type='text' id='fname' name='lastname' placeholder='Your Last name...'>
        </div>
      </div>
      <div class='row'>
        <div class='col col-25'>
          <label form='fcountry'>Country</label>
        </div>
        <div class='col col-75'>
          <select id='fcountry' name='country'>
            <option value='usa'>USA</option>
            <option value='cn'>China</option>
            <option value='canada'>Canada</option>
          </select>
        </div>
      </div>
      <div class='row'>
        <div class='col col-25'>
          <label form='fsubject'>Subject</label>
        </div>
        <div class='col col-75'>
          <textarea id='fsubject' name='subject' placeholder='Write something...'></textarea>
        </div>
      </div>
      <div class='row'>
        <input type='submit' value='submit'>
      </div>
    </form>
  </div>
</div>