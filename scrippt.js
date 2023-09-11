document.addEventListener('DOMContentLoaded', function() {
    const sortAZCheckbox = document.getElementById('sortAZ');
    const sortZACheckbox = document.getElementById('sortZA');
    const form = document.querySelector('.check');

    sortAZCheckbox.addEventListener('change', function() {
        if (sortAZCheckbox.checked) {
            const orderByInput = form.querySelector('[name="orderBy"]');
            orderByInput.value = 'ASC'; 
            form.submit();
        }
    });

    sortZACheckbox.addEventListener('change', function() {
        if (sortZACheckbox.checked) {
            const orderByInput = form.querySelector('[name="orderBy"]');
            orderByInput.value = 'DESC'; 
            form.submit();
        }
    });
});

const children = document.querySelectorAll('.child');

children.forEach(child => {
    let originalContent = child.innerHTML;
    let detailsVisible = false;

    child.addEventListener('click', function() {
        if (detailsVisible) {
            this.innerHTML = originalContent;
        } else {
            const details = this.getAttribute('data-details');
            this.innerHTML = details;
        }
        detailsVisible = !detailsVisible; 
    });
});
