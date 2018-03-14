function show_result(data){
    $('#result').empty();
    let result = document.getElementById('result');
    let header = document.createElement('h1');
    header.innerHTML = 'Ответ';
    result.appendChild(header);

    let counter = document.createElement('h3');
    result.appendChild(counter);
    counter.innerHTML = `Найдено ${data.counter} таких отрезков`;

    let res = document.createElement('h3');
    res.innerHTML = `Самый длинный из них:  ${data.result}.`;
    result.appendChild(res);

    let all_arrs = document.createElement('h3');
    all_arrs.innerHTML = `Все отрезки: </br>`;
    data.all_arrays.forEach(function(item, i){
       all_arrs.innerHTML += (i+1) + ': ' + item + "</br>";
    });
    result.appendChild(all_arrs);
}

$(document).ready(function() {
    $('#lab9_form').on("ajax:success", function(xrs, data) {
        show_result(xrs.detail[0]);
    });
});