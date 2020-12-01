<template>
  <div id="LoginBadge">
    <div id="userbar" class="buttons" v-if="session.user">
      <div class="navbar-item is-hoverable pb-3 pr-5">
        <a class="">
        <i class="fas fa-bell"></i>
        </a>
      </div>
      <div class="navbar-item has-dropdown is-hoverable pb-2 pr-3">
        <a class="navbar-link">
          <figure class="image">
            <img :src="session.user.profile" alt="Placeholder image" />
          </figure>
        </a>
        <div class="navbar-dropdown">
          <span class="has-text-black has-text-weight-semibold px-2">{{session.user.name}}</span>
          <hr class="navbar-divider" />
          <router-link to="/profile"><a class="navbar-item"> Profile </a></router-link>
          <router-link to="/settings"><a class="navbar-item"> Settings </a></router-link>
          <a href="/logout" class="navbar-item"> Logout </a>
          
        </div>
      </div>

        <div class="navbar-item has-dropdown is-hoverable pr-2">
            <b-dropdown class="position: is-bottom-left" :triggers="['hover']" aria-role="list">
                <div class="" slot="trigger" slot-scope="{ active }">
                    <span style="padding: 10px 0px; color: Tomato"><i class="fas fa-plus-circle"></i></span>
                    <b-icon :icon="active ? 'menu-up' : 'menu-down'"></b-icon>
                </div>
                <router-link to="/add"><b-dropdown-item aria-role="listitem">Add Manual Entry</b-dropdown-item></router-link>
                <router-link to="/upload"><b-dropdown-item aria-role="listitem">Upload Activity</b-dropdown-item></router-link>
            </b-dropdown>
        </div>
    </div>

    <div class="buttons" v-else>
      <router-link to="/signup" class="button is-link">
        Sign up
      </router-link>
      <router-link to="/login" class="button is-light"> Log in </router-link>
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
#userbar .image img {
  border-radius: 50%;

}
.navbar-item:hover{
  color: white;
}

</style>