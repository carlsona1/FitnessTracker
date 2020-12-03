<template>
<div class="page">
        <div class="columns">
            <div class="column is-one-quarter">
                
                <div class="container mb-3" style="margin-left: -75px; margin-top: 75px"><Userpanel /></div>
                <div class="" style="margin-left: -100px"><Calendar /></div>
            </div>   
            <div class="column is-one-half" style="margin-left: 25px">
                <div class="container pb-2">
                    <Search />
                </div>  
                <Post v-for=" (x, i) in posts " 
                    :key="i" 
                    :i="i"
                    :post="x"/>
            </div>    
            <div class="column is-one-quarter" style="margin-left: 25px; margin-right: -75px; margin-top: 25px">
                <Sidebar />
            </div>   
        </div>
</div>
</template>

<script>
import Search from "@/components/Search";
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
        Sidebar, Post, Userpanel, Calendar, Search
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
        margin-top: 30px;
        margin-right: 100px;
        margin-left: 100px;
    }
    .card{
        margin-bottom: 5px;
    }

</style>