<template>
<div>
    <div id="LoginBadge">
        <div class="container">
        <div class="buttons" v-if="session.user">
            <div class="level">
            <div class="media">
            <div class="media-content">
                
                        
                <div id="userbar"  class="level-item">
                <b-dropdown :triggers="['hover']" aria-role="list" >
                <div class="" slot="trigger" slot-scope="{ active }" >
                    <figure class="image">
                        <img :src="session.user.profile" alt="Placeholder image" />
                    </figure>
                    <b-icon :icon="active ? 'menu-up' : 'menu-down'"></b-icon>
                </div>
                    <b-dropdown-item aria-role="listitem">Profile</b-dropdown-item>
                    <b-dropdown-item aria-role="listitem">Settings</b-dropdown-item>
                    <b-dropdown-item aria-role="listitem">Logout</b-dropdown-item>
                    </b-dropdown>
                
                </div>
            
                </div>

                <div class="media-content">
                    <div id="userbar"  class="level-item has-text-centered">
                    <div class="col">
                    <p class="has-text-weight-bold">{{ session.user.name }}</p>
                    <p class="is-size-7">@{{ session.user.handle }}</p>
                    </div>
                    </div>
                </div>
                
                <div id="userbar" class="level-item">
                <b-dropdown class="position: is-bottom-left" :triggers="['hover']" aria-role="list" style="margin-top: 5px;">
                    <div slot="trigger" slot-scope="{ active }">
                        <span style="padding: 10px 0px; color: Tomato"><i class="fas fa-plus-circle"></i></span>
                        <b-icon :icon="active ? 'menu-up' : 'menu-down'"></b-icon>
                    </div>
                    <b-dropdown-item aria-role="listitem">Start Recording</b-dropdown-item>
                    <b-dropdown-item aria-role="listitem">Manually Add Entry</b-dropdown-item>
                    <b-dropdown-item aria-role="listitem">Upload Activity</b-dropdown-item>
                </b-dropdown>
                </div>
                

            </div>
            </div>
        </div>


            <div class="buttons" v-else>
            <router-link to="/signup" class="button is-success">
                Sign up
            </router-link>
            <router-link to="/login" class="button is-light"> Log in </router-link>
            </div>

    </div>
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
.media .image img {
  width: auto;
  border-radius: 50%;
}
.media-content {
  line-height: .98rem;
}
.level-item {
    padding: 0px 9px;
    margin-top: 10px;
}
</style>