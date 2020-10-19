<template>

<div class="card mb-3">
      <div class="media">
      <div class="media-left">
        <figure class="image is-48x48 ">
          <img :src="post.owner.profile" alt="Placeholder image">
        </figure>
      </div>
      <div class="media-content">
        <p class="title is-4">{{post.owner.name}}</p>
        <p class="subtitle is-6"><time datetime="2020-10-6">Oct 6 2020 - 11:09 AM</time></p>
      </div>
      
      </div>
      <div class="content">
      {{post.message}}
      </div>
  <div class="card-image">
    <figure class="image">
      <img :src="post.url">
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