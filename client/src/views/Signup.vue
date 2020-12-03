<template class="has-background-light">
  <div class="level section">
    <div class="level-item">
      <div class="card">
        <div class="card-header" style="background-color: Tomato">
          <h2 class="subtitle card-header-title">
            <i class="fa fa-fire pr-2" aria-hidden="true"></i>FuelBurner |
            FitnessTracker
          </h2>
        </div>
        <div class="card-body has-background-white px-5 py-5">
          <form>
            <div class="label">Name</div>
            <div class="field is-grouped pt-2">
              <input class="input is-rounded mr-2" size="8" type="text" placeholder="First" v-model="FirstName"/>
              <input class="input is-rounded" size="8" type="text" placeholder="Last" v-model="LastName"/>
            </div>
            <div class="field pt-2">
              <label class="label pt-2 pr-4">Birthdate </label>
              <b-datepicker v-model="DOB"
                placeholder="MM/DD/YYYY"
                icon="calendar-today"
                :locale="locale"
                editable
                rounded
              >
              </b-datepicker>
            </div>

            <div class="field pt-2">
              <div class="label">Email</div>
              <input v-model="Email"
                class="input is-rounded"
                type="email"
                placeholder="Email"
              />
            </div>

            <div class="field pt-2">
              <div class="label">Password</div>
              <input v-model="Password"
                class="input is-rounded"
                type="password"
                placeholder="Password"
              />
            </div>

            <div class="field pt-2">
              <p class="control has-text-centered">
                <button class="button is-rounded is-link" @click.prevent="register">Get Started</button>
              </p>
            </div>
            <hr class="rounded">
          <a class="has-text-centered help is-small" href="/terms">Terms of Service</a>
          </form>


        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { register } from "@/models/users";
import session from "@/models/session";
export default {
  data: () => ({
    FirstName: "",
    LastName: "",
    DOB: "",
    Password: "",
    Email: "",
    dropFiles: [],
    selected: new Date(),
    showWeekNumber: false,
    locale: undefined, // Browser locale
  }),
  methods: {
    deleteDropFile(index) {
      this.dropFiles.splice(index, 1);
    },
    async register(){
        const response = await register(this.FirstName, this.LastName, this.DOB, this.Password, this.Email);
          session.user = {
              name: this.FirstName + " " + this.LastName,
              profile: "https://sumaleeboxinggym.com/wp-content/uploads/2018/06/Generic-Profile-1600x1600.png",
              followers: "",
              following: "",
              activities: "",
          };
        session.addNotification("Welcome to FuelBurner", "success");
        this.$router.push("dashboard");
    },
  },
};
</script>

<style>
</style>