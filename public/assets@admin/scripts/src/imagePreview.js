$(function () {
	function previewImage(input) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function (e) {
				var $imgElement = $($(input).attr('data-preview-image'));

				if (!$imgElement.length) {
					$imgElement = $(input).parent().find('.image-preview');
				}

				if (!$imgElement.length) {
					$imgElement = $('<img class="image-preview" width="250">');
					$imgElement.prependTo($(input).parent());
				}

				$imgElement.attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	$(document).on('change', '[data-preview-image]', function () {
		previewImage(this);
	});
});