<template>
    <section class="projet-details-wrap" @click="triggerCloseBackground"> 
        <article class="project-details">
            <div class="head">
                <h1>{{ project.name }}</h1>
                <div class="close pointer" @click="close">X</div>
            </div>
            <div class="description">
                <div class="image">
                    <div class="image-wrap-correction">
                        <img :src="projectImage" :srcset="projectImageHd">
                    </div>
                </div>
                <div class="text">
                    <div>
                        {{ project.desc }}
                    </div>    
                    <div class="lien pointer">
                        <a class="button" target="_blank" :href="project.url">Liens du projet</a>
                    </div>
                </div>
            </div>
        </article> 
    </section>
</template>

<script>
export default {
    name: 'ProjectDetails',
    props: ['project', 'close'],
    computed: {
        projectImage () {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `/src/assets/images/${lowerCaseName}.med.png`
        },
        projectImageHd () {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `/src/assets/images/${lowerCaseName}.high.png 2x`
        }
    },
    methods: {
        triggerCloseBackground (event) {
            if (event.target.classList.contains('projet-details-wrap')) {
                this.close()
            }
        }
    }
}
</script>