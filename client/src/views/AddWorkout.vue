<template>
    <section>
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
                                    <select>
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
                                    <input class="input" type="text" placeholder="Give it a name" value="New Workout">
                                </div>
                            </div>
                        </div>
                    
                        <div class="field ml-5">
                            <b-field class="" label="Start Time">
                                <b-datetimepicker
                                    placeholder=""
                                    icon="calendar-today"
                                    :locale="locale"
                                    editable>
                                </b-datetimepicker>
                            </b-field>
                            <b-field class=" pt-5"  label="End Time">
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
                                <input class="input" type="number" placeholder="Distance in ft">
                            </div>
                        </div>

                        <div class="field">
                            <label class="label">Elevation</label>
                            <div class="control has-icons-left has-icons-right">
                                <input class="input is-success" type="number" placeholder="Elevation in ft">
                            </div>
                        </div>
                    </div>
                    <p class="help is-black has-text-centered has-text-weight-semibold pt-3 pb-5">-- or --</p>

                    <div class="field is-grouped is-grouped-right">
                        <div class="field">
                            <label class="label">Sets</label>
                            <div class="control">
                                <input class="input" type="number" placeholder="Number of sets">
                            </div>
                        </div>

                        <div class="field">
                            <label class="label">Reps Per Set</label>
                            <div class="control has-icons-left has-icons-right">
                                <input class="input is-success" type="number" placeholder="Number of reps">
                            </div>
                        </div>

                        <div class="field">
                            <label class="label">Weight</label>
                            <div class="control has-icons-left has-icons-right">
                                <input class="input is-success" type="number" placeholder="Weight">
                            </div>
                        </div>
                    </div>
                    <hr class="rounded">
                    <div class="field">
                        <label class="label">Note</label>
                        <div class="control">
                            <textarea class="textarea" placeholder="How'd it go? How was the weather? How did you feel?"></textarea>
                        </div>
                    </div>

                        <div class="field pt-2 pb-5">
                                <label class="label">URL</label>
                                <div class="control">
                                    <input class="input" type="text" placeholder="Image or Video URL">
                                </div>
                            </div>

                            <div class="field pb-5">
                            <label class="label">Privacy Setting</label>
                                <div class="control">
                                    <div class="select">
                                        <select>
                                        <option>Only You</option>
                                        <option>Followers</option>
                                        <option>Everyone</option>
                                        </select>
                                    </div>
                                </div>
                        </div>

                        <hr class="rounded">

                        <div class="field is-grouped">
                        <div class="control">
                            <button class="button is-link has-text-white" style="background-color: Tomato;">Create</button>
                        </div>
                        <div class="control">
                            <button class="button is-link">Cancel</button>
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
            dropFiles: []
        }),
        methods: {
            deleteDropFile(index) {
                this.dropFiles.splice(index, 1)
            },
            async addWorkout(){
                const response = await addWorkout(this.post.id, this.commentText);
                this.post.Comments.push(response);
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
hr.rounded {
  border-top: 1px solid #bbb;
  border-radius: 5px;
}
</style>