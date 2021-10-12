<template>
    <article class="project-item">
        <img loading="lazy" :src="projectImage" :srcset="projectImageHd" :alt="project.name">
    </article>
</template>

<script>
export default {
    name: 'ProjectItem',
    props: ['project'],
    computed: {
        projectImage() {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `/images/${lowerCaseName}.med.webp`
        },
        projectImageHd() {
            const lowerCaseName = this.project?.name.toLowerCase()
            return `
            /images/${lowerCaseName}.med.webp,
            /images/${lowerCaseName}.high.webp 2x`
        }
    }
}
</script>
