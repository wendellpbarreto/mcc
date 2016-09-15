$('#artworks').on('cocoon:after-insert', function (e, insertedItem) {
	console.log("Asdasd");
	num = $('.artwork').length;
	insertedItem.find('.number').html(num);
});