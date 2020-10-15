<template>
<nav class="navbar is-fixed-top is-dark" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <router-link to="/"  class="navbar-item" ><i class="fa fa-fire" aria-hidden="true"></i></router-link>
    

    <a role="button" class="navbar-burger burger" :class="{ 'is-active': isActive }" @click="isActive = !isActive" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu "  :class="{ 'is-active': isActive }">
    <div class="navbar-start">
      <router-link to="/"  class="navbar-item" >FuelBurner</router-link>
      <router-link to="/feed"  class="navbar-item" >Feed</router-link>
    </div>
     
    <div class="navbar-end">
      <div class="navbar-item">
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