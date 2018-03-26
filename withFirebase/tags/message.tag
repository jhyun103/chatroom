<message>

	<span>{ msg.author}</span>
	<span>{ msg.message}</span>
	<span>{ msg.startedAt}</span>
	<span>{ msg.vote.up}</span>
	<button type = "vote" onclick={voteMsg}>vote</button>

	<script>
		var that = this;
		console.log('message.tag');
		
		voteMsg(e){
			
		database.ref("messages/" + this.msg.key + "/vote/up").set(this.msg.vote.up++);
			that.update();
		}
	</script>

	<style>
		:scope {
			display: block;
			border: 1px solid dodgerblue;
			padding: 0.5em;
		}
		:scope:not(:last-child) {
			margin-bottom: 1em;
		}
	</style>
</message>
