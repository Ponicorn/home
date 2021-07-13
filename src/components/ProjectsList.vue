<template>
  <div class="projects-list">
    <project-item v-for="(project, index) in projects"
      :key="index"
      :project="project" 
      @click="showProject(project, project, project)" />
  </div>
  <ProjectDetails v-if="show" :project="focusProject" :close="closeFocus" />
</template>

<script>
import ProjectItem from './ProjectItem.vue'
import ProjectDetails from './ProjectDetails.vue'
import projects from '../assets/projects.json'

export default {
  name: 'ProjectsList',
  components: {
    ProjectItem,
    ProjectDetails
  },
  data() {
    return {
      projects,
      show: false,
      focusProject: null,
      keyListener: null
    }
  },
  mounted() {
    this.keyListener = document.addEventListener('keydown', (event) => {
      if(event.code === 'Escape') {
        this.closeFocus()
      }
    })
  },
  beforeUnmount() {
    document.removeEventListener(this.keyListener) 
  },
  methods: {
    showProject (project) {
      this.focusProject = project 
      this.show = true
    },
    closeFocus () {
      this.show = false
    }
  }
}
</script>
