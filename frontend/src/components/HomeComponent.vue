<template>
  <div class="container">
    <div v-if="isLoggedIn">
      <h1 class="title is-1">Welcome {{ this.getUserFirstname }}  {{ this.getUserLastname }}</h1>
    </div>
    <div v-else>
      <h1 class="title is-1">Please Sign In to Continue</h1>
    </div>
  </div>
</template>

<script>
import "@/store/index.js";
import { mapActions, mapGetters } from "vuex";
export default {
  name: "HomeComponent",
  computed: {
    ...mapGetters(["getAuthToken", "getUserEmail", "getUserID", "getUserFirstname", "getUserLastname", "getUserNumber", "getAllUsers", "isLoggedIn", "isLoggedInAdmin"]),
  },
  methods: {
    ...mapActions(["registerUser", "loginUser", "logoutUser", "addUsers"]),
  },
}
</script>
