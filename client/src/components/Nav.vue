<template>
<nav class="navbar is-fixed-top is-dark" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <router-link to="/"  class="navbar-item" ><span style="font-size: 1.5em; color: Tomato;"><i class="fa fa-fire" aria-hidden="true"></i></span><p class="navbar-item has-text-white has-text-weight-bold"> FuelBurner</p> </router-link>

    <a role="button" class="navbar-burger burger" :class="{ 'is-active': isActive }" @click="isActive = !isActive" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>

    

  </div>

  <div id="navbarBasicExample" class="navbar-menu "  :class="{ 'is-active': isActive }">
    <div class="navbar-start">
      
      <router-link to="/dashboard"  class="navbar-item" >Dashboard</router-link>
    </div>
     
    <div class="navbar-end" >
      <div class="navbar-item" style= "width: 200px">
        <LoginBadge />
      </div>
    </div>
  </div>
</nav>


</template>

<script>
import LoginBadge from "@/components/LoginBadge";
export default {
  data: ()=> ({
      isActive: false
  }),
  methods: {
  },
  components: {
    LoginBadge
  }
}
</script>

<style>

</style>