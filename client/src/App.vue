<template>
  <div class="">
    <Nav />
    <div class="container" id="content">
          <Notifications /> 
          <router-view/>
    </div>
  </div>
</template>

<script>
import Nav from "@/components/Nav";
import session from "@/models/app";
import Notifications from "@/components/Notifications";

export default {
    components: {
        Nav, Notifications
    },
}
</script>

<style lang="scss">
@media screen and (min-width: 1025px) {
    .navbar-item.is-hoverable:hover .navbar-dropdown {
        display: block !important;
    }
    .navbar-item.is-hoverable:focus-within .navbar-dropdown {
        display: none;
    }
    
#content{
  margin-top:20px;
}
}
</style>