<template>

<div class="level section">
    <div class="level-item">
        <div class="box">
        <form>
            <div class="field">
            <p class="control has-icons-left has-icons-right">
                <input class="input" type="email" placeholder="Email">
                <span class="icon is-small is-left">
                <i class="fas fa-envelope"></i>
                </span>
                <span class="icon is-small is-right">
                <i class="fas fa-check"></i>
                </span>
            </p>
            </div>
            <div class="field">
            <p class="control has-icons-left">
                <input class="input" type="password" placeholder="Password">
                <span class="icon is-small is-left">
                <i class="fas fa-lock"></i>
                </span>
            </p>
            </div>
            <div class="field">
            <p class="control">
                <button class="button is-success" @click.prevent="login">
                Login
                </button>
            </p>
            </div>
        </form>
        </div>
    </div>
</div>

</template>

<script>
import session from "@/models/session";
export default {
    methods: {
        login(){
            session.user = {
                name: 'Alex',
                handle: 'carlona1',
                profile: 'https://dgalywyr863hv.cloudfront.net/pictures/athletes/1934257/5818643/4/large.jpg',
                followers: '19',
                following: '21',
                activites: '209',
            }
        session.addNotification('Yay! You logged in', 'success')
        this.$router.push('dashboard') 
        }
    }
}
</script>

<style>
    
</style>