<template>
  <div class="Settings">
    <!-- Loading -->
    <!-- Navigation -->
    <Nav ref="Nav" />

    <!-- Page Header -->
    <div class="headerContainer">
      <div class="header">
        Profile
        <div class="line"></div>
      </div>
    </div>

    <!-- Container for all information -->
    <form class="profileContainer" id="profileForm">
      <!-- Profile information section -->
      <div class="sectionContainer">
        <div class="section-label">Settings</div>

        <div class="inputLine">
          <div class="part-label">Name</div>

          <div class="form-inline">
            <input
              type="text"
              class="name-box form-control"
              id="firstName"
              placeholder="First Name"
            />
            <input
              type="text"
              class="name-box form-control"
              id="lastName"
              placeholder="Last Name"
            />
          </div>
        </div>
      </div>

      <!-- Nutrition information section -->
      <div class="sectionContainer">
        <div class="section-label">Nutritional Info</div>

        <div class="inputLine">
          <div class="part-label">Gender</div>

          <select
            id="gender"
            class="gender-box form-control"
            placeholder="Gender"
          >
            <option value="M">Male</option>
            <option value="F">Female</option>
          </select>
        </div>

        <div class="inputLine">
          <div class="part-label">Height</div>

          <div class="height-row">
            <div class="height-col">
              <input
                type="number"
                class="height-box form-control"
                id="heightFT"
                min="3"
                max="7"
                placeholder="0"
              />
              <div class="height-unit">ft</div>
            </div>
            <div class="height-col">
              <input
                type="number"
                class="height-box form-control"
                id="heightIN"
                min="0"
                max="11"
                placeholder="0"
              />
              <div class="height-unit">in</div>
            </div>
          </div>
        </div>

        <div class="inputLine">
          <div class="part-label">Weight</div>

          <input
            type="number"
            class="input-box form-control"
            id="weight"
            min="50"
            placeholder="lb"
          />
        </div>

        <div class="inputLine">
          <div class="part-label">Age</div>

          <input
            type="number"
            class="input-box form-control"
            id="age"
            min="10"
            max="90"
            placeholder="years"
          />
        </div>

        <div class="inputLine">
          <div class="part-label">Activity Level</div>

          <select class="input-box form-control" id="activityLevel">
            <option value="1.000">Basal Metabolic Rate (BMR)</option>
            <option value="1.200">Sedentary - little to no exersize</option>
            <option value="1.375"
              >Lightly Active - exersize/sports 1-3 times a week</option
            >
            <option value="1.550"
              >Moderately Active - exersize/sports 3-5 times a week</option
            >
            <option value="1.725"
              >Very Active - exersize/sports 6-7 times a week</option
            >
            <option value="1.900"
              >Exrta Active - very hard exercise/sports or physical job</option
            >
          </select>
        </div>

        <div class="inputLine">
          <div class="part-label">Weight Goal</div>

          <select class="input-box section-end form-control" id="weightGoals">
            <option value="0">Maintain current weight</option>
            <option value="-1000">Lose 2 lb per week</option>
            <option value="-500">Lose 1 lb per week</option>
            <option value="500">Gain 1 lb per week</option>
            <option value="-1000">Gain 2 lb per week</option>
          </select>
        </div>
      </div>

      <!-- Account information section -->
      <div class="sectionContainer">
        <div class="section-label">Account Info</div>

        <div class="inputLine">
          <div class="part-label">Email</div>

          <input
            type="email"
            class="input-box form-control"
            id="email"
            placeholder="Email"
          />
        </div>

        <div class="inputLine">
          <div class="part-label">Username</div>

          <input
            class="input-box form-control"
            id="username"
            placeholder="Username"
          />
        </div>

        <div class="inputLine">
          <div class="part-label">Password</div>

          <input
            class="input-box section-end form-control"
            id="password"
            placeholder="Password"
          />
        </div>
      </div>

      <button class="btn btn-success submitBtn" type="submit">
        Save Changes
      </button>
    </form>
  </div>

</template>

<script>
export default {

}
</script>

<style>

</style>