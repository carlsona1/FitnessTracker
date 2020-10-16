<template>
<div class="bg">
  <div class="home">
    <div class="container">
      <span class= "has-text-centered">
      <h2 class="title is-2 has-text-white-bis">Welcome to FuelBurner | Fitness Tracker</h2>
      <p class="subtitle has-text-white-bis">
        Your new favorite exercise app!<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      </p>
      </span>
      </div>
  </div>
</div>  
</template>

<script>
// @ is an alias to /src
export default {
  name: 'Home',
  components: {
  },

};
</script>

<style>
body, html {
    height: 100%;
  }
  .bg {
    /* The image used */
    background-image: url("../assets/vegas.jpeg");
    /* Full height */
    height: 100%;
    width: 100%;
    
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }
  .title{
    margin-top: 20px
  }


</style>