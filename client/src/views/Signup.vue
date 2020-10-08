<template>

<div class="level section">
    <div class="level-item">
        <div class="box">
            <form>
                <div class="label">Name</div> 
                    <div class="field is-grouped">
                        <input class="input is-rounded" type="text" placeholder="First name">
                        <input class="input is-rounded" type="text" placeholder="Last name">
                    </div>
                <div class="field">
                    <div class="block">
                        <div class="label">Birthday</div> 
                        <div class="field is-grouped">
                                <div class="select">
                                    <select>
                                        <option>MM</option>
                                        <option>With options</option>
                                    </select>
                                </div>

                                <div class="select">
                                    <select>
                                        <option>DD</option>
                                        <option>With options</option>
                                    </select>
                                </div>

                                <div class="select">
                                    <select>
                                        <option>YYYY</option>
                                        <option>With options</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="label">Gender</div> 
                    <input class="input is-rounded" type="text" placeholder="Gender">
                    </div>
                <div class="label">Email</div> 
                <input class="input is-rounded" type="text" placeholder="Email">
                <div class="label">Password</div> 
                <input class="input is-rounded" type="text" placeholder="Password">
                <div class="field">
                <p class="control">
                    <button class="button is-success">
                    Get Started
                    </button>
                </p>
                </div>
            </form>
        </div>
    </div>
</div>
</template>

<script>
export default {
}
</script>

<style>
    
</style>