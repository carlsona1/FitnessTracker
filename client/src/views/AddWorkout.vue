<template>
    <section>
        <section class="hero box" style="background-color: Tomato;">
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
                
                <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">From</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                        <p class="control is-expanded has-icons-left">
                            <input class="input" type="text" placeholder="Name">
                            <span class="icon is-small is-left">
                            <i class="fas fa-user"></i>
                            </span>
                        </p>
                        </div>
                        <div class="field">
                        <p class="control is-expanded has-icons-left has-icons-right">
                            <input class="input is-success" type="email" placeholder="Email" value="alex@smith.com">
                            <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                            </span>
                            <span class="icon is-small is-right">
                            <i class="fas fa-check"></i>
                            </span>
                        </p>
                        </div>
                    </div>
                    </div>

                    <div class="field is-horizontal">
                    <div class="field-label"></div>
                    <div class="field-body">
                        <div class="field is-expanded">
                        <div class="field has-addons">
                            <p class="control">
                            <a class="button is-static">
                                +44
                            </a>
                            </p>
                            <p class="control is-expanded">
                            <input class="input" type="tel" placeholder="Your phone number">
                            </p>
                        </div>
                        <p class="help">Do not enter the first zero</p>
                        </div>
                    </div>
                    </div>

                    <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">Department</label>
                    </div>
                    <div class="field-body">
                        <div class="field is-narrow">
                        <div class="control">
                            <div class="select is-fullwidth">
                            <select>
                                <option>Business development</option>
                                <option>Marketing</option>
                                <option>Sales</option>
                            </select>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="field is-horizontal">
                    <div class="field-label">
                        <label class="label">Already a member?</label>
                    </div>
                    <div class="field-body">
                        <div class="field is-narrow">
                        <div class="control">
                            <label class="radio">
                            <input type="radio" name="member">
                            Yes
                            </label>
                            <label class="radio">
                            <input type="radio" name="member">
                            No
                            </label>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">Subject</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                        <div class="control">
                            <input class="input is-danger" type="text" placeholder="e.g. Partnership opportunity">
                        </div>
                        <p class="help is-danger">
                            This field is required
                        </p>
                        </div>
                    </div>
                    </div>

                    <div class="field is-horizontal">
                    <div class="field-label is-normal">
                        <label class="label">Question</label>
                    </div>
                    <div class="field-body">
                        <div class="field">
                        <div class="control">
                            <textarea class="textarea" placeholder="Explain how we can help you"></textarea>
                        </div>
                        </div>
                    </div>
                    </div>

                    <div class="field is-horizontal">
                    <div class="field-label">
                        <!-- Left empty for spacing -->
                    </div>
                    <div class="field-body">
                        <div class="field">
                        <div class="control">
                            <button class="button is-primary">
                            Send message
                            </button>
                        </div>
                        </div>
                    </div>
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
</style>