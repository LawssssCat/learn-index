<style>
  #myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
  }
  #myImg:hover {
    opacity: 0.7;
  }
</style>

<img id='myImg' alt='js' style='width: 10em' src='https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/javascript/javascript.png'>

<style>
  #myModal {
    display: none;
    position: fixed;
    width: 100%;
    height: 100%;
    z-index: 1;
    left: 0;
    top: 0;
    /* padding: 100px; */
    background-color: rgba(0,0,0,0.9);
    /* display: flex; */
    justify-content: center;
    align-items: center;
  }
  #myModal .modalwrapper {
    /* display: block; */
    position: absolute;
    justify-content: center;   
    /* add animation */
    animation-name: zoom;
    animation-duration: 0.6s;
  }
  @keyframes zoom {
    from {transform: scale(0.1)} 
    to {transform: scale(1)}
  }
  #myModal .modalwrapper .mimg{
    width: 100%;
  }
  #myModal .modalwrapper .mcaption {
    width: 80%;
    /* background-color: blue; */
    margin: auto;
    padding: 10px 0;
    /* height: 3em; */
    color: #ccc;
    text-align: center;
    display: block;
  }
  #myModal .mclose {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    cursor: pointer;
  }
  /* 100% Image Width on Smaller Screens */
  @media only screen and (max-width: 700px){
    #myModal .modalwrapper {
      width: 100%;
      /* background-color: aqua; */
    }
  }
</style>

<!-- The Modal -->
<div id='myModal'>
  <span class='mclose'>x</span>
  <div class="modalwrapper">
    <img class='mimg'>
    <div class='mcaption'></div>
</div>
</div>

<script>
  var img = document.getElementById('myImg');
  var modal = document.getElementById('myModal');
  var modalimg = modal.getElementsByClassName('mimg')[0];
  var modalcaption = modal.getElementsByClassName('mcaption')[0];
  img.onclick = function() {
    modal.style.display = 'flex';
    modalimg.src = this.src;
    modalcaption.innerHTML = this.alt;
  }
  modal.getElementsByClassName('mclose')[0].onclick = function() {
    modal.style.display = 'none';
  }
  modal.onclick = function(event) {
    if(event.target!=modalimg)
      modal.style.display = 'none';
  }
</script>