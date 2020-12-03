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

    <b-modal class="pb-5" v-model="isCardModalActive" :width="640" scroll="keep">
      <div class="content">
      <div class="card">
        <div class="card-content">
          <section>
          <div class="field">
            <button class="button is-pulled-right"><i class="fas fa-search"></i></button>
            
                <p class="content"><b>Selected:</b> {{ selected }}</p>
                <b-field label="Search Workouts">
                    <b-autocomplete
                        rounded
                        v-model="name"
                        :data="filteredDataArray"
                        placeholder="e.g. jQuery"
                        icon="magnify"
                        clearable
                        @select="option => selected = option">
                        <template slot="empty">No results found</template>
                    </b-autocomplete>
                </b-field>
            
          </div>
          </section>
            <div class="row pb-5">
              <div class="container pb-5"></div>
            </div>
          </div>
        </div>
      </div>
    </b-modal>
  </nav>
</template>

<script>
import {  search } from "@/models/workouts";
import LoginBadge from "@/components/LoginBadge";
 export default {
        data() {
            return {
                data: [
                    'Angular',
                    'Angular 2',
                    'Aurelia',
                    'Backbone',
                    'Ember',
                    'jQuery',
                    'Meteor',
                    'Node.js',
                    'Polymer',
                    'React',
                    'RxJS',
                    'Vue.js'
                ],
                name: '',
                selected: null,
                isActive: false,
                isCardModalActive: false,
            }
        },
        computed: {
            filteredDataArray() {
                return this.data.filter((option) => {
                    return option
                        .toString()
                        .toLowerCase()
                        .indexOf(this.name.toLowerCase()) >= 0
                })
            }
        },
        methods: {

        },
        components: {
        LoginBadge,
        },
    }

</script>
   
<style>
</style>