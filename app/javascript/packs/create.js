console.log('HELLO WWORLD')

document.addEventListener('click', (e) => {
    e.target.preventDefault
    let button = e.target
    if (e.target.classList[0] === "remove_button") {
        button.previousElementSibling.value = 1
        console.log(button.previousElementSibling)
        button.parentElement.style.display = "none"
    }
})
