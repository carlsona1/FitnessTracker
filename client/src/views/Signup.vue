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
              <input class="input is-rounded mr-2" size="10" type="text" placeholder="First"/>
              <input class="input is-rounded" size="10" type="text" placeholder="Last"/>
            </div>
            <div class="field pt-2">
              <label class="label pt-2 pr-4">Birthdate </label>
              <b-datepicker
                placeholder=""
                icon="calendar-today"
                :locale="locale"
                editable
                rounded
              >
              </b-datepicker>
            </div>

            <div class="field pt-2">
              <label class="label pt-2 pr-4">Gender</label>
              <div class="control">
                <div class="select is-rounded">
                  <select>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="field pt-2">
              <div class="label">Email</div>
              <input
                class="input is-rounded"
                type="email"
                placeholder="Email"
              />
            </div>

            <div class="field pt-2">
              <div class="label">Password</div>
              <input
                class="input is-rounded"
                type="password"
                placeholder="Password"
              />
            </div>

            <div class="field pt-2">
              <p class="control has-text-centered">
                <button class="button is-rounded is-link">Get Started</button>
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
    locale: undefined, // Browser locale
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
</style>