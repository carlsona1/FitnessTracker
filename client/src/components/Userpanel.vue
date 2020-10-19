<template>
  <div class="card">
  <div class="card-content has-text-centered">
    <p class="title">
      <img class="profile" src="https://dgalywyr863hv.cloudfront.net/pictures/athletes/1934257/5818643/4/large.jpg">
    </p>
    <p class="subtitle has-text-weight-bold">
      Alex Carlson
    </p>
  </div>
  <footer class="card-footer">
    <div class="card-footer-item has-text-centered">
      <div class="has-text-centered">
      Followers 
        <br> 
          <span class="has-text-weight-bold">19</span>
        </div>
      
    </div>
    <p class="card-footer-item">
      <span class="has-text-centered">
      Following 
        <br> 
          <span class="has-text-weight-bold">21</span>
      </span>
    </p>
    <p class="card-footer-item">
      <span class="has-text-centered">
      Activities 
        <br> 
          <span class="has-text-weight-bold">38</span>
      </span>
    </p>
  </footer>

  <div class="card">
  <div class="card-content">
    <div class="content">
    <p class="has-text-weight-bold">
      Latest Activity</p>
      Afternoon Ride - <time datetime="2020-10-6">Oct 6 2020 - 11:09 AM</time>
    
    </div>
  </div>
  <footer class="card-footer">
    <div class="container">
     <span><a href="#" class="card-footer-item">Manage Goals</a></span>
     </div>
  </footer>
</div>

</div>



</template>

<script>
import session from "@/models/session";
export default {
  data: () => ({
    session,
  }),
};
</script>

<style>
.profile {
  width: auto;
  border-radius: 50%;
}

.container{
  padding: 10px 0px;
}
</style>