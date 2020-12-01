<template>
  <div class="card mb-5 px-5 pb-5">
    <div class="media pt-5">
      <div class="media-left">
        <figure class="image is-48x48">
          <img
            :src="`./server/public/profiles/${post.Owner_id}.jpg`"
            alt="Placeholder image"
          />
        </figure>
      </div>
      <br />
      <div class="media-content">
        <p class="title is-4">{{ post.FirstName }} {{ post.LastName }}</p>
        <p class="subtitle is-6">
          <time :datetime="post.created_at">{{post.created_at | moment("MMMM Do, YYYY [at] h:mm a")}}</time>
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
          <p class="">{{ post.Distance }} mi</p>
        </div>
      </div>
      <div class="level-item has-text-centered">
        <div>
          <p class="heading">Duration</p>
          <p class="">
            {{ new Date(post.End_Time).getHours() - new Date(post.Start_Time).getHours() }}h
            {{ new Date(post.End_Time).getMinutes() - new Date(post.Start_Time).getMinutes() }}m
          </p>
        </div>
      </div>
      <div class="level-item has-text-centered">
        <div>
          <p class="heading">Elev Gain</p>
          <p class="">{{ post.Elevation }} ft</p>
        </div>
      </div>
    </nav>
    <div class="card-image pb-3">
      <figure class="image">
        <img :src="post.URL" />
      </figure>
    </div>

    <div class="content mt-1" style="font-size: smaller">
      <span class="has-text-weight-semibold ml-2 ">{{post.Reactions}} reactions</span>
      <div class="buttons is-pulled-right">
    <button class="button is-light"><i class="far fa-thumbs-up"></i></button>
    <button class="button is-light" @click.prevent="react"><i class="fas fa-heart"></i></button>
    </div>
    </div>

    <div class="media" v-for="c in post.Comments" :key="c.id">
      <div class="media-content pt-3">
        <b >{{c.FirstName}} {{c.LastName}} </b>
        <span>{{c.Text}}</span>
      </div>
    </div>

    <div class="field has-addons" style="width: 100%">
                    <div class="control is-expanded">
                      <input class="input" type="text" placeholder="Add a comment" v-model="commentText">
                    </div>
                    <div class="control">
                      <a class="button" @click.prevent="comment">
                        Post
                      </a>
                    </div>
                  </div>
    
   

    

  </div>
</template>

<script>
import { react, comment } from "../models/feed";
export default {
  data: ()=>({
    commentText: ''
  }),
  props: {
    post: Object,
  },
  methods: {
    react(){
    const that = this;
      react(this.post.id)
      .then(x=> that.post.Reactions += 1)
      .catch(err=> console.error(err))
    },
    async comment(){
      const response = await comment(this.post.id, this.commentText);
      this.post.Comments.push(response);
    }
  }
};
</script>

<style>
time {
  font-size: smaller;
}
.media .image img {
  border-radius: 50%;

}
</style>