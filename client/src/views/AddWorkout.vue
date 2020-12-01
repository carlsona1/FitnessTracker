<template>
    <section id="addworkout">
        <section class="hero box is-small" style="background-color: Tomato;">
                    <div class="hero-body">
                        <div class="container has-text-centered">
                        <h1 class="title has-text-weight-semi-bold has-text-white">
                            Manual Entry
                        </h1>
                        <h2 class="subtitle">
                            
                        </h2>
                        </div>
                    </div>
                </section>
        <div class="columns">
            <div class="column is-one-fifth">
                <aside class="menu">
                    <ul class="menu-list">
                        <router-link to="/upload"><li><a>Supported Devices</a></li></router-link>
                        <router-link to="/upload"><li>
                        <a>Upload Files</a>
                        </li></router-link>
                        <router-link to="/add"><li>
                        <a class="is-active">Create Manually</a></li></router-link>
                    </ul>
                </aside>
            </div>
            <div class="column is-four-fifths">
                <div class="">
                                <!-- <span class="icon is-small is-left">
                                <i class="fas fa-user"></i>
                                </span> -->

                                <!-- <span class="icon is-small is-left">
                            <i class="fas fa-user"></i>
                            </span>
                            <span class="icon is-small is-right">
                            <i class="fas fa-check"></i>
                            </span> 
                            <p class="help is-success">This username is available</p>
                            
                            
                            <div class="field">
                    <label class="label">Email</label>
                    <div class="control has-icons-left has-icons-right">
                        <input class="input is-danger" type="email" placeholder="Email input" value="hello@">
                        <span class="icon is-small is-left">
                        <i class="fas fa-envelope"></i>
                        </span>
                        <span class="icon is-small is-right">
                        <i class="fas fa-exclamation-triangle"></i>
                        </span>
                    </div>
                    <p class="help is-danger">This email is invalid</p>
                    </div>-->
                            

                    <!-- Entry Form -->
                    <div class="field is-grouped">
                        <div class="field">
                            <label class="label">Sport</label>
                            <div class="control">
                                <div class="select is-medium">
                                    <select v-model="exercise_type">
                                    <option>Ride      </option>
                                    <option>Run      </option>
                                    <option>Walk      </option>
                                    <option>Swim      </option>
                                    <option>Hike      </option>
                                    <option>Lift      </option>
                                    </select>
                                </div>
                            </div>

                            <div class="field pt-5">
                                <label class="label">Title</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Give it a name" value="New Workout" v-model="title">
                                </div>
                            </div>
                        </div>
                    
                        <div class="field ml-5">
                            <b-field class="" label="Start Time" v-model="starttime">
                                <b-datetimepicker
                                    placeholder=""
                                    icon="calendar-today"
                                    :locale="locale"
                                    editable>
                                </b-datetimepicker>
                            </b-field>
                            <b-field class=" pt-5"  label="End Time" v-model="endtime">
                                <b-datetimepicker
                                    placeholder=""
                                    icon="calendar-today"
                                    :locale="locale"
                                    editable>
                                </b-datetimepicker>
                            </b-field>
                        </div>
                            
                    </div>
                    <hr class="rounded">

                    <div class="field is-grouped">
                        <div class="field">
                            <label class="label">Distance</label>
                            <div class="control">
                                <input class="input" type="number" placeholder="Distance in mi" v-model="distance">
                            </div>
                        </div>

                        <div class="field">
                            <label class="label">Elevation</label>
                            <div class="control has-icons-left has-icons-right">
                                <input class="input is-success" type="number" placeholder="Elevation in ft"  v-model="elevation">
                            </div>
                        </div>
                    </div>
                    <p class="help is-black has-text-centered has-text-weight-semibold pt-3 pb-5">-- or --</p>

                    <div class="field is-grouped is-grouped-right">
                        <div class="field">
                            <label class="label">Sets</label>
                            <div class="control">
                                <input class="input" type="number" placeholder="Number of sets"  v-model="sets">
                            </div>
                        </div>

                        <div class="field">
                            <label class="label">Reps Per Set</label>
                            <div class="control has-icons-left has-icons-right">
                                <input class="input is-success" type="number" placeholder="Number of reps"  v-model="reps_per_set">
                            </div>
                        </div>

                        <div class="field">
                            <label class="label">Weight</label>
                            <div class="control has-icons-left has-icons-right">
                                <input class="input is-success" type="number" placeholder="Weight"  v-model="weight">
                            </div>
                        </div>
                    </div>
                    <hr class="rounded">
                    <div class="field">
                        <label class="label">Note</label>
                        <div class="control">
                            <textarea class="textarea" placeholder="How'd it go? How was the weather? How did you feel?"  v-model="note"></textarea>
                        </div>
                    </div>

                        <div class="field pt-2 pb-5">
                                <label class="label">URL</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Image or Video URL"  v-model="url">
                                </div>
                            </div>

                            <div class="field pb-5">
                            <label class="label">Privacy Setting</label>
                                <div class="control">
                                    <div class="select">
                                        <select  v-model="privacy_setting">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>4</option>
                                        </select>
                                    </div>
                                </div>
                        </div>

                        <hr class="rounded">

                        <div class="field is-grouped">
                        <div class="control">
                            <button class="button is-link has-text-white" style="background-color: Tomato;" @click.prevent="addWorkout">Create</button>
                        </div>
                        <div class="control pl-4 pt-2">
                            <a class="is-link">Cancel</a>
                        </div>
                        </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import { addWorkout } from "../models/workouts";
    export default {
        data: ()=>({
            privacy_setting: '',
            starttime: '',
            endtime: '',
            exercise_type: '',
            title: '',
            note: '',
            distance: '',
            elevation: '',
            sets: '',
            reps_per_set: '',
            weight: '',
            url: '',
        }),
          props: {
            post: Object,
        },
        methods: {
            async addWorkout(){
                const response = await addWorkout(this.privacy_setting, this.starttime, this.endtime, this.exercise_type, this.title,
                 this.note, this.distance, this.elevation, this.sets, this.reps_per_set, this.weight, this.url);
                this.post.push(response);
            }
        },
        computed: {
        sampleFormat() {
            const dtf = new Intl.DateTimeFormat(this.locale, {
                year: 'numeric',
                month: 'numeric',
                day: 'numeric',
                hour: 'numeric',
                minute: 'numeric',
                second: this.enableSeconds ? 'numeric' : undefined,
                timezone: 'UTC'
            })
            return dtf.format(new Date(2020, 11, 11, 13, 14, 15))
        }
    }
    }
</script>
<style>
#addworkout{
    margin-left: 100px;
    margin-right: 100px;
}
hr.rounded {
  border-top: 1px solid #bbb;
  border-radius: 5px;
}
</style>