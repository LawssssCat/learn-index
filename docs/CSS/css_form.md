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
  #exmp_form01 form input[type='text'], select {
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
    transition: width 0.4s ease-in-out;
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

