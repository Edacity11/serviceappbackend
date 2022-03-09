<template>
      <nav class="navbar is-fixed-top" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item" href="/">
          <img src="https://pricelesscompanions.com/wp-content/uploads/2013/09/logo-dog-grooming-1.png" width="112" height="28">
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>

      <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
          <router-link to="/" class="navbar-item">
            Home
          </router-link>

          <a class="navbar-item">
            Documentation
          </a>

          <div class="navbar-item has-dropdown is-hoverable">
            <a class="navbar-link">
              More
            </a>

            <div class="navbar-dropdown">
              <a class="navbar-item">
                About
              </a>
              <a class="navbar-item">
                Jobs
              </a>
              <a class="navbar-item">
                Contact
              </a>
              <hr class="navbar-divider">
              <a class="navbar-item">
                Report an issue
              </a>
            </div>
          </div>
        </div>

        <div class="navbar-end">
          <div class="navbar-item" v-if="!isLoggedIn">
            <div class="buttons">
              <router-link to="/SignUp" class="button is-light">
                Sign up
              </router-link>
              <router-link to="/SignIn" class="button is-primary">
                <strong>Log in</strong>
              </router-link>
            </div>
          </div>
          <div class="navbar-item" v-else>
            <div class="buttons">
              <button @click="logoutUser" href="/" class="button is-danger">
                Sign out
              </button>
            </div>
          </div>
        </div>
      </div>
    </nav>
</template>

<script>
import "@/store/index.js";
import { mapActions, mapGetters } from "vuex";

export default {
  name: "NavComponent",
  computed: {
    ...mapGetters(["getAuthToken", "getUserEmail", "getUserID", "getUserFirstname", "getUserLastname", "getUserNumber", "getAllUsers", "isLoggedIn", "isLoggedInAdmin"]),
  },
  methods: {
    ...mapActions(["logoutUser"]),
  }
};
</script>

<style scoped lang="scss" src="../styles/main.scss" />
