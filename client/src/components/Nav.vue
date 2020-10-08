<template>
<nav class="navbar container is-fixed-top is-dark" role="navigation" aria-label="main navigation">
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
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <router-link to="/signup"  class="button is-success" >
            Sign up
          </router-link>
            <router-link to="/login"  class="button is-light" >
                Log in
            </router-link>
        </div>
      </div>
    </div>
  </div>
</nav>


</template>

<script>
export default {
  data: ()=> ({
      isActive: false
  }),
  methods: {
  }
}
</script>

<style>
</style>