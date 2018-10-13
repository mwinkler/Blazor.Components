
namespace TagSelectorComponent
{
    public class TagSelectorStyle
    {
        public static readonly TagSelectorStyle Bootstrap = new TagSelectorStyle
        {
            SelectorClass = "form-control",
            SelectedTagClass = "badge badge-primary",
            DropdownClass = "dropdown-menu",
            DropdownItemClass = "dropdown-item"
        };

        public string SelectorClass { get; set; }
        public string SelectedTagClass { get; set; }
        public string DropdownClass { get; set; }
        public string DropdownItemClass { get; set; }
    }
}
