const { Client, SlashCommandBuilder, EmbedBuilder, ChatInputCommandInteraction } = require('discord.js')

module.exports = {
    data: new SlashCommandBuilder()
    .setName("socials")
    .setDescription("View the Socials of my Creator!"),
    /**
     * @param {ChatInputCommandInteraction} interaction 
     * @param {Client} client 
     */
    async execute(interaction, client) {
        
        const Response = new EmbedBuilder()
        .setTitle("♦️ Socials")
        .setDescription(
        `🎯 Midas │ 1.500 V-Bucks\n🌀 Aura │ 800 V-Bucks\n🔥 Red Knight │ 2.000 V-Bucks\n🎮 Leviathan Axe │ 1.000 V-Bucks\n👽 Alien Bundle │ 2.200 V-Bucks\n
`)
        .setTimestamp(Date.now())
        .setColor(client.mainColor)
        .setThumbnail('https://github.com/gokiimax.png')

        interaction.reply({embeds: [Response]})

    }
}