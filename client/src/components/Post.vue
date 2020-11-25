<template>
  <div class="card mb-5 px-3 pb-3">

    <div class="media pt-3">
      <div class="media-left">
        <figure class="image is-48x48">
          <img :src="`http://localhost:3001/public/profiles/${post.Owner_id}.jpg`" alt="Placeholder image"/>
        </figure>
      </div>
      <br />
      <div class="media-content">
        <p class="title is-4">{{ post.FirstName }} {{ post.LastName }}</p>
        <p class="subtitle is-6">
          <time :datetime="post.created_at">{{ post.created_at | moment("MMMM Do, YYYY [at] h:mm a") }}</time>
        </p>
      </div>
    </div>
        <div class="content pl-5">
      <p class="title is-6">{{ post.Title }}</p>
    </div>
    <nav class="level">
  <div class="level-item has-text-centered">
    <div>
      <p class="heading">Distance</p>
      <p class="">{{ post.Distance }}</p>
    </div>
  </div>
  <div class="level-item has-text-centered">
    <div>
      <p class="heading">Duration</p>
      <p class="">{{ (new Date(post.End_Time).getHours() - new Date(post.Start_Time).getHours()) }}h {{ (new Date(post.End_Time).getMinutes() - new Date(post.Start_Time).getMinutes()) }}m</p>
      
    </div>
  </div>
  <div class="level-item has-text-centered">
    <div>
      <p class="heading">Elev Gain</p>
      <p class="">{{ post.Elevation }}ft</p>
    </div>
  </div>
</nav>
    <div class="card-image">
      <figure class="image">
        <img :src="post.URL" />
      </figure>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    post: Object,
  },
};



</script>

<style>
time {
  font-size: smaller;
  
}

</style>