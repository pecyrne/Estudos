document.addEventListener('DOMContentLoaded', function () { /* Isso aqui é uma maneira de fazer com que o java script so execute depois que todo o codigo for carregado */
    const Input_container = document.querySelector('.Input_container');
    const Botao_pesquisa = document.querySelector('.Botao_pesquisa');
    const Input_pesquisa = document.querySelector('.Input_pesquisa');

    /* OBSERVAÇÃO NAO SEI PQ MAS ISSO AQUI PAROU DE FUNCIONAR??? bem, mais ou menos, se clicar 2x rapido ele vai, mas nao era esse o objetivo inicial.*/
    Botao_pesquisa.addEventListener('click', function () { /* Isso aqui ativa o botao quandoa alguem clica. e ao ativar ele, roda a animação no CSS */
        Input_container.classList.toggle('active');
        if (Input_container.classList.contains('active')) { /* Isso aqui, quando a pessoa clicar novamente no botao, ele nao vai ficar tentando ativar novamente a barra de pesquisa, mas sim mudar o "foco" pra ver na pratica é só clicar 2x (rapido) no botao de pesquisa */
            Input_pesquisa.focus();
        } else {
            Input_pesquisa.blur();
        }
    });

    document.addEventListener('click', function (event) { /* Quando a pessoa clicar novamente e o a barra de pesquisa estiver LIGADA e !TARGETED (meio que sem o bglh de digitar) ele vai la e "desativa" o input*/
        if (!Input_container.contains(event.target) && Input_pesquisa.classList.contains('active')) {
            Input_container.classList.remove('active');
            Input_pesquisa.blur();
        }
    });
});