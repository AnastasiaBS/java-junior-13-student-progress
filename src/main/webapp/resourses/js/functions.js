function modifyDiscipline() {

    var items = $("input[type=checkbox]:checked");
    if (items.length == 0) {
        alert("Пожалуйста, выберите одну дисциплину!");
        return;
    }
    if (items.length > 1) {
        alert("Пожалуйста, выберите только одну дисциплину!")
        return;
    }
    var id = $(items[0]).attr("value");
    $('#formModifyingDiscipline input').val(id);
    $('#formModifyingDiscipline').submit();

}