
window.tagSelectorComponent = {
    getValue: function (element) {
        return element.value;
    },
    setValue: function(element, value) {
        element.value = value;
    },
    blur: function (element) {
        element.blur();
    }
};