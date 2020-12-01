<template>
    <section>
        <section class="hero box is-small" style="background-color: Tomato;">
                    <div class="hero-body">
                        <div class="container has-text-centered">
                        <h1 class="title has-text-weight-semi-bold has-text-white">
                            Upload Your Workouts
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
                        <a class="is-active">Upload Files</a>
                        </li></router-link>
                        <router-link to="/add"><li>
                        <a>Create Manually</a></li></router-link>
                    </ul>
                </aside>
            </div>
            <div class="column is-four-fifths">
            
            <div class="columns">
            <div class="column is-one-third">
                <b-field class="pt-2">
                    <b-upload v-model="dropFiles"
                        multiple
                        drag-drop>
                        <section class="section">
                            <div class="content has-text-centered">
                                <p>
                                    <b-icon
                                        icon="upload"
                                        size="is-large">
                                    </b-icon>
                                </p>
                                <p>Drop your files here or click to upload</p>
                            </div>
                        </section>
                    </b-upload>
                </b-field>
                <div class="pt-1">
                <button class="button is-dark">Submit</button></div>
            </div>
            <div class="column is-one-third">
                <div class="tags">
                    <span v-for="(file, index) in dropFiles"
                        :key="index"
                        class="tag is-primary" >
                        {{file.name}}
                        <button class="delete is-small"
                            type="button"
                            @click="deleteDropFile(index)">
                        </button>
                    </span>
                </div>
            </div>
            <div class="column is-one-third">
                </div>
            </div>
                <div class="container pb-2">
                    <h5 class="subtitle is-6">File types include .gpx, .tcx, or .fit files (25MB or smaller). Multiple files accepted.</h5>
                </div>

                <hr class="rounded">

                <div class="container pt-4">
                    <h4 class="title is-4 pb-1">Coming Soon...</h4>
                    <h5 class="subtitle is-5">Import Data from Services such as Nike & MapMyFitness</h5>
                </div>
            </div>

          
            

        </div>
    </section>
</template>

<script>
    export default {
        data() {
            return {
                dropFiles: []
            }
        },
        methods: {
            deleteDropFile(index) {
                this.dropFiles.splice(index, 1)
            }
        }
    }
</script>
<style>
hr.rounded {
  border-top: 2px solid #bbb;
  border-radius: 5px;
}
section{
    margin-top: -5px;
}
</style>