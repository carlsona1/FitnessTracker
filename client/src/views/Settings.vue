<template>
  <section id="addworkout">
    <div class="columns">
      <div class="column is-one-fifth">
        <aside class="menu pt-5">
          <ul class="menu-list">
            <router-link to="/settings"
              ><li><a class="is-active">Profile Settings</a></li></router-link
            >
            <router-link to="/account"
              ><li>
                <a>Account Settings</a>
              </li></router-link
            >
            <router-link to="/performance"
              ><li>
                <a>Performance Settings</a>
              </li></router-link
            >
          </ul>
        </aside>
      </div>
      <div class="column is-four-fifths">
        <section class="hero is-small">
          <div class="hero-body">
            <div class="container">
              <h1 class="title has-text-weight-bold">My Profile</h1>
              <h2 class="subtitle">
                <hr class="rounded" />
              </h2>
            </div>
          </div>
        </section>

        <!-- Entry Form -->
        <div class="container mt-5">
          <div class="field is-grouped is-grouped-centered mt-5">
            <figure class="" style="margin-top: -86px">
              <img
                class="profile"
                src="https://dgalywyr863hv.cloudfront.net/pictures/athletes/1934257/5818643/4/large.jpg"
              />
            </figure>
            <br />
            <div class="control pt-2">
              <a class="is-link">Remove</a>
            </div>
          </div>

          <hr class="rounded" />
          <div class="field is-grouped pt-5">
            <label class="label pt-2 pr-4">Name </label>
            <div class="control">
              <input class="input" type="text" size="5" value="Alex" />
            </div>
            <div class="control">
              <input class="input" type="text" size="8" value="Carlson" />
            </div>
          </div>

          <div class="field is-grouped pt-5">
            <label class="label pt-2 pr-4">Birthdate </label>
            <b-datepicker
              placeholder=""
              icon="calendar-today"
              :locale="locale"
              editable
            >
            </b-datepicker>
          </div>

          <div class="field is-grouped pt-5">
            <label class="label has-text-right pt-2 pr-4">Gender</label>
            <div class="control">
              <div class="select">
                <select>
                  <option>Male</option>
                  <option>Female</option>
                  <option>Other</option>
                </select>
              </div>
            </div>
          </div>

          <div class="field is-grouped pt-5">
            <label class="label pt-2 pr-4">Location </label>
            <div class="control">
              <input
                class="input"
                type="text"
                size="20"
                value="New Paltz, NY, United States"
              />
            </div>
          </div>
        </div>

        <div class="field is-grouped pt-5">
             <label class="label pt-2 pr-4">Weight </label>
            <div class="control">
              <input class="input" type="text" size="5" value="200" />
            </div>
        </div>
        <hr class="rounded" />

        <div class="field is-grouped">
          <div class="control">
            <button class="button is-link has-text-white" style="background-color: Tomato">Update </button>
          </div>

          <div class="control pl-4 pt-2">
            <a class="is-link">Cancel</a>
          </div>
        </div>

      </div>
    </div>
  </section>
</template>

<script>
import { addWorkout } from "../models/workouts";
export default {
  data: () => ({
    privacy_setting: "",
    starttime: "",
    endtime: "",
    exercise_type: "",
    title: "",
    note: "",
    distance: "",
    elevation: "",
    sets: "",
    reps_per_set: "",
    weight: "",
    url: "",
    dropFiles: [],
    selected: new Date(),
    showWeekNumber: false,
    locale: undefined // Browser locale
  }),
  methods: {
    deleteDropFile(index) {
      this.dropFiles.splice(index, 1);
    },
    async addWorkout() {
      const response = await addWorkout(this.post.id, this.commentText);
      this.post.Comments.push(response);
    },
  },

};
</script>
<style>
#addworkout {
  margin-left: 100px;
  margin-right: 100px;
}
hr.rounded {
  border-top: 1px solid #bbb;
  border-radius: 5px;
}
</style>