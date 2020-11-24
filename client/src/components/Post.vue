<template>

<div class="card mb-3">
      <div class="media">
      <div class="media-left">
        <figure class="image is-48x48 ">
          <img :src="`https://dgalywyr863hv.cloudfront.net/pictures/athletes/1934257/5818643/4/large.jpg`" alt="Placeholder image">
        </figure>
      </div><br>
      <div class="media-content">
        <p class="title is-4">{{post.FirstName}} {{post.LastName}}</p>
        <p class="subtitle is-6"> <time :datetime="post.created_at">{{post.created_at}}</time></p>
      </div>
      
      </div>
      <div class="content">
      {{post.Note}}
      </div>
  <div class="card-image">
    <figure class="image">
      <img :src="post.URL">
    </figure>
  </div>
</div>
</template>

<script>
export default {
    props: {
        post: Object,
    }
}
</script>

<style>
    time {
      font-size: smaller;
      font-style: italic;
    }
</style>