
namespace MW.Blazor
{
    public class TagSelectorStyle
    {
        public static readonly TagSelectorStyle Bootstrap = new TagSelectorStyle
        {
            SelectorClass = "form-control",
            SelectedTagClass = "badge badge-primary",
            DropdownClass = "dropdown-menu shadow",
            DropdownItemClass = "dropdown-item",
            DropdownItemHoverClass = "bg-primary text-white",
            InputboxClass = "",
            RemoveTagClass = "fas fa-times"
        };

        public string SelectorClass { get; set; }
        public string SelectedTagClass { get; set; }
        public string DropdownClass { get; set; }
        public string DropdownItemClass { get; set; }
        public string DropdownItemHoverClass { get; set; }
        public string InputboxClass { get; set; }
        public string RemoveTagClass {get; set; }
    }
}
