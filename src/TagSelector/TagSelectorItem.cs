namespace TagSelector
{
    public class TagSelectorItem
    {
        public TagSelectorItem()
        { }

        public TagSelectorItem(string key, string value)
        {
            Key = key;
            Value = value;
        }

        public string Key { get; set; }
        public string Value { get; set; }
    }
}
