<template>
    <section>
        <div class="box">
            <div class="field">
        <b-field label="Search Workouts">
            <b-autocomplete
                rounded
                v-model="field"
                :data="filteredDataArray"
                placeholder="Search"
                icon="magnify"
                clearable
                @select="option => selected = option">
                <template slot="empty">No results found</template>
            </b-autocomplete>
        </b-field>

        </div>
        </div>
    </section>
    
</template>

<script>
import {  search, getWorkouts } from "@/models/workouts";
import {  getPosts } from "@/models/feed";
    export default {
        data() {
            return {
                data: [],
                field:'',
                selected: null
            }
        },
        methods: {

            async getWorkouts(){
                this.data = await getWorkouts(); 
            },
        },
        computed: {
            filteredDataArray() {
                return this.data.filter((option) => {
                    return option
                        .toString()
                        .toLowerCase()
                        .indexOf(this.field.toLowerCase()) >= 0
                })
            }
        },
         beforeMount(){
            this.getWorkouts()
        },
        
    }
</script>
