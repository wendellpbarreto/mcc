$(document).ready(function() {

    $('input[name="daterange"]').daterangepicker({
        format: 'DD/MM/YYYY',
        startDate: moment().startOf('month'),
        endDate: moment(),
        minDate: '01/08/2015',
        showDropdowns: true,
        showWeekNumbers: true,
        timePicker: false,
        ranges: {
            'Hoje': [moment(), moment()],
            'Ontem': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Mês Passado': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')],
            'Mês Atual': [moment().startOf('month'), moment().endOf('month')],
            'Desde o Começo': [moment("01/08/2015", "DD/MM/YYYY"), moment()]
        },
        opens: 'right',
        drops: 'down',
        buttonClasses: ['btn', 'btn-sm'],
        applyClass: 'btn-primary',
        cancelClass: 'btn-default',
        separator: ' até ',
        locale: {
            applyLabel: 'Escolher',
            cancelLabel: 'Cancelar',
            fromLabel: 'De',
            toLabel: 'Até',
            customRangeLabel: 'Customizado',
            daysOfWeek: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex','Sáb'],
            monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
            firstDay: 1
        }
    });


});