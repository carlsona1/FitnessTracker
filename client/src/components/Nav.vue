<template>
  <nav
    class="navbar is-fixed-top is-dark mb-0"
    role="navigation"
    aria-label="main navigation"
  >
    <div class="navbar-brand ml-5">
      <router-link to="/" class="navbar-item"
        ><span style="font-size: 1.5em; color: Tomato"
          ><i class="fa fa-fire" aria-hidden="true"></i
        ></span>
        <p class="navbar-item has-text-white has-text-weight-bold">
          FuelBurner
        </p>
      </router-link>

      <a
        role="button"
        class="navbar-burger burger"
        :class="{ 'is-active': isActive }"
        @click="isActive = !isActive"
        aria-label="menu"
        aria-expanded="false"
        data-target="navbarBasicExample"
      >
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div
      id="navbarBasicExample"
      class="navbar-menu"
      :class="{ 'is-active': isActive }"
    >
      <div class="navbar-start">
        <a class="navbar-item" @click="isCardModalActive = true"
          ><i class="fas fa-search"></i
        ></a>
        <router-link to="/about" class="navbar-item">About</router-link>
        <router-link to="/dashboard" class="navbar-item">Dashboard</router-link>

        <div class="navbar-item has-dropdown is-hoverable">
          <a class="navbar-link"> Admin </a>

          <div class="navbar-dropdown">
            <router-link to="/users" class="navbar-item">Users</router-link>
          </div>
        </div>
      </div>

      <div class="navbar-end">
        <div class="navbar-item">
          <LoginBadge />
        </div>
      </div>
    </div>

    <b-modal v-model="isCardModalActive" :width="640" scroll="keep">
      <div class="card">
        <div class="card-content">
          <div class="content">
            <div class="select control is-medium pb-2">
              <select>
                <option>Workouts</option>
                <option>Users</option>
              </select>
            </div>
            <button class="button is-pulled-right"><i class="fas fa-search"></i></button>
            <div class="control">
              <input class="input is-focused is-medium" type="text" placeholder="Search"/>
            </div>
            
          </div>
        </div>
      </div>
    </b-modal>
  </nav>
</template>

<script>
import LoginBadge from "@/components/LoginBadge";
export default {
  data: () => ({
    isActive: false,
    isCardModalActive: false,
  }),
  methods: {},
  components: {
    LoginBadge,
  },
};
</script>

<style>
</style>