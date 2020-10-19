<template>
   <div class="container">
       <h4 class="title is-4 has-text-centered">Activity Scheduler</h4>
       
        <span class="has-text-centered">
            <b-datepicker
                inline
                v-model="date"
                :events="events"
                :indicators="indicators"
                >
            </b-datepicker>
        </span>
</div>




</template>

<script>

const thisMonth = new Date().getMonth()

    export default {
        data() {
            return {
                date: new Date(2017, thisMonth, 1),
                events: [
                    new Date(2017, thisMonth, 2),
                    new Date(2017, thisMonth, 6),
                    {
                        date: new Date(2017, thisMonth, 6),
                        type: 'is-info'
                    },
                    {
                        date: new Date(2017, thisMonth, 8),
                        type: 'is-danger'
                    },
                    {
                        date: new Date(2017, thisMonth, 10),
                        type: 'is-success'
                    },
                    {
                        date: new Date(2017, thisMonth, 10),
                        type: 'is-link'
                    },
                    new Date(2017, thisMonth, 12),
                    {
                        date: new Date(2017, thisMonth, 12),
                        type: 'is-warning'
                    },
                    {
                        date: new Date(2017, thisMonth, 16),
                        type: 'is-danger'
                    },
                    new Date(2017, thisMonth, 20),
                    {
                        date: new Date(2017, thisMonth, 29),
                        type: 'is-success'
                    },
                    {
                        date: new Date(2017, thisMonth, 29),
                        type: 'is-warning'
                    },
                    {
                        date: new Date(2017, thisMonth, 29),
                        type: 'is-info'
                    }
                ],
                bars: false,
            }
        }
        
        }
    
</script>

<style>

</style>
