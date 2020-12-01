<template class="has-background-light">
  <div class="level section">
    <div class="level-item">
      <div class="card">
          <div class="card-header" style="background-color: Tomato;">
            <h2 class="subtitle card-header-title">
                <i class="fa fa-fire pr-2" aria-hidden="true"></i>FuelBurner | FitnessTracker
            </h2>

          </div>
    <div class="card-body has-background-white px-5 py-5">
        <form>

          <div class="field">
            <label class="label">Email</label>
            <div class="control has-icons-left has-icons-right">
              <input class="input" type="email" placeholder="Email input"/>
              <span class="icon is-small is-left">
                <i class="fas fa-envelope"></i>
              </span>
            </div>
          </div>
        
            <div class="field">
                <label class="label">Password</label>
                <div class="control">
                    <input class="input" type="password" placeholder="*****"/>
                </div>
            </div>


          <div class="field">
            <div class="control">
              <label class="checkbox">
                <input type="checkbox" /> Remember Me</label>
            </div>
          </div>

          <div class="field">
            <p class="control has-text-centered">
              <button class="button is-link" @click.prevent="login">
                Login
              </button>
            </p>
          </div>
          <hr class="rounded">
          <a class="has-text-centered help is-small" href="/reset">Forgot Your Password?</a>
        </form>
    </div>
      </div>
    </div>
  </div>
</template>

<script>
import session from "@/models/session";
export default {
  methods: {
    login() {
      session.user = {
        name: "Alex Carlson",
        profile:
          "https://dgalywyr863hv.cloudfront.net/pictures/athletes/1934257/5818643/4/large.jpg",
        followers: "19",
        following: "21",
        activities: "209",
      };
      session.addNotification("Success! You logged in", "success");
      this.$router.push("dashboard");
    },
  },
};
</script>

<style>
</style>