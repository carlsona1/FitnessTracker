<template>
    <div class="page">
        <div class="columns">
            <div class="column is-one-third">
                
                <div class="container mb-1"><Userpanel /></div>
                <Calendar />
            </div>   
            <div class="column is-one-third">
                <Post v-for=" (x, i) in posts " 
                    :key="i" 
                    :i="i"
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
import Calendar from "@/components/Calendar";
import { getPosts } from "@/models/feed";
import session from "@/models/session";

export default {
    data(){
        return {
            posts: []
        }
    },
    async created(){
        this.posts = await getPosts();
    },
    components: {
        Sidebar, Post, Userpanel, Calendar
    },

    methods: {
        error(){
            //session.addNotification('Something went wrong.', 'danger')
        }
    }
}
</script>

<style>
    .page{
        margin-top: 10px;
    }
    .card{
        margin-bottom: 5px;
    }
</style>