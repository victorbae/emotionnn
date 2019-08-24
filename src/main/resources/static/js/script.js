$(function () {
    $('#input').on('change', function () {
        if (arquivoValido()) {
            $('#message').addClass('d-none');
            changeImg(this);
            $('#rm-img').removeClass('d-none');
            $('.pega-mt').css('margin-top', '0px');
        }
    })

    $('#rm-img').on('click', function () {
        $('#input').val('');
        $('#img-upload').attr('src', 'img/image-icon.png').width(300).height(300);
        $('#rm-img').addClass('d-none');
    })

    function changeImg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#img-upload').attr('src', e.target.result).width(300).height(300);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    function arquivoValido() {
        var $input = $('#input');
        var path = $input.val();
        var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;
        if (!allowedExtensions.exec(path)) {
            $('#formato-incorreto').removeClass('d-none');
            $input.val('');
            return false;
        }
        $('#formato-incorreto').addClass('d-none');
        return true;
    }

});
