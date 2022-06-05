
<style>
  .bb-header {
    margin: 0;
    font-family: Arial;
    text-align: center;
    padding: 32px;
  }
</style>

<!-- Header -->
<div class="bb-header">
  <h1>响应式图像网格</h1>
  <p>请调整浏览器窗口，来查看响应效果。</p>
</div>

<style>
  .bb-row * {
    box-sizing: border-box;
  }
  .bb-row {
    display: flex;
    flex-wrap: wrap;
  }
  .bb-row .column {
    /* 分4列 */
    /* max-width: 25%; */
    flex: 25%;
    padding: 0 4px;
  }
  .bb-row .column img {
    /* vertical-align: middle; */
    /* margin-top: 8px; */
  }
  /*响应式布局*/
  @media (max-width: 800px) {
    .bb-row .column {
      /* max-width: 50%; */
      flex: 50%;
    }
  }
  @media (max-width: 600px) {
    .bb-row .column {
      /* max-width: 50%; */
      flex: 100%;
    }
  }
</style>

<!-- Photo Grid -->
<div class="bb-row"> 
  <div class="column">
    <img src="https://www.w3school.com.cn/i/photo/flower-3.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-4.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip-red.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-2.jpg" style="width:100%">
	  <img src="https://www.w3school.com.cn/i/photo/tulip-yellow.jpg" style="width:100%">
  </div>
  
  <div class="column">
	  <img src="https://www.w3school.com.cn/i/photo/tulip-yellow.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-4.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip-red.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-2.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-3.jpg" style="width:100%">
  </div>
   
  <div class="column">
    <img src="https://www.w3school.com.cn/i/photo/flower-3.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip-red.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-4.jpg" style="width:100%">
	  <img src="https://www.w3school.com.cn/i/photo/tulip-yellow.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-2.jpg" style="width:100%">
  </div>
  
  <div class="column">
    <img src="https://www.w3school.com.cn/i/photo/flower-4.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-3.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-2.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/tulip-red.jpg" style="width:100%">
    <img src="https://www.w3school.com.cn/i/photo/flower-1.jpg" style="width:100%">
	  <img src="https://www.w3school.com.cn/i/photo/tulip-yellow.jpg" style="width:100%">
  </div>
</div>