console.log('HELLO WWORLD')

document.addEventListener('click', (e) => {
    e.target.preventDefault
    let button = e.target
    if (e.target.classList[0] === "remove_button") {
        button.previousElementSibling.value = 1
        console.log(button.previousElementSibling)
        button.parentElement.style.display = "none"
    }
    if (e.target.classList[0] === "add_answer_button") {
        add_answer(button)
    }
})
    
function add_answer(button){
    question_num = button.previousElementSibling.lastElementChild.name[27]
    answer_num = parseInt(button.previousElementSibling.lastElementChild.name[50]) + 1
    new_answer = document.createElement("fieldset")
    new_answer.innerHTML = `
            <label for="quiz_questions_attributes_${question_num}_answers_attributes_${answer_num}_content">Answer</label><br>
            <input type="text" name="quiz[questions_attributes][${question_num}][answers_attributes][${answer_num}][content]" id="quiz_questions_attributes_${question_num}_answers_attributes_${answer_num}_content">
            <input value="false" type="hidden" name="quiz[questions_attributes][${question_num}][answers_attributes][${answer_num}][_destroy]" id="quiz_questions_attributes_${question_num}_answers_attributes_${answer_num}__destroy">
            <button type="button" class="remove_button">Remove Answer</button>
        `
    button.previousElementSibling.append(new_answer)
    button.previousElementSibling.append(follow_input)
}