<template>
    <div class="page">
        <div class="columns">
            <div class="column is-one-third">
                <Userpanel />
            </div>   
            <div class="column is-one-third">
                <Post v-for=" (x, i) in posts " 
                    :key="i" 
                    :post="x"/>
            </div>    
            <div class="column is-one-third">
                <Sidebar />
            </div>   
        </div>
    </div>
</template>

<script>
import Sidebar from "@/components/Sidebar";
import Post from "@/components/Post";
import Userpanel from "@/components/Userpanel";
import { posts } from "@/models/feed";
import session from "@/models/session";

export default {
    data(){
        return {
            posts
        }
    },
    components: {
        Sidebar, Post, Userpanel
    },

    methods: {
        error(){
            session.addNotification('Something went wrong.', 'danger')
        }
    }
}
</script>

<style>
    .card{
        margin-bottom: 30px;
    }
</style>