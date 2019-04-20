
namespace MW.Blazor
{
    public struct PageState
    {
        public PageState(string width, string left)
        {
            Width = width;
            Left = left;
        }

        public string Width { get; set; }
        public string Left { get; set; }
    }
}
