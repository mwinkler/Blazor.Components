# Blazor Components

Work in progress!

## Tree

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tree.png)

```html
<Tree 
    Nodes=@Items 
    SelectedNodes=@SelectedItem 
    ChildSelector=@(item => item.Childs)>
    <TitleTemplate>@context.Text</TitleTemplate>
</Tree>
```

[See example](https://github.com/mwinkler/Blazor.Components/blob/master/src/Components.Sample.App/Pages/TreeSample.cshtml)

**Features / Tasks**
- [x] Generic data support
- [x] Item templating
- [x] Styling (Bootstrap/Font Awesome)
- [ ] Subtree loading indicator (lazy loading)
- [ ] Disabling selection of nodes
- [x] Single selection
- [ ] Multi selection (Checkboxes)
- [ ] Event population (OnSelect, OnExpand, ...)


## Tag Selector

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tag-selector.gif)

```html
<TagSelector SelectableTags=@Tags SelectedTags=@Selected Filter=@((item,term) => item.Contains(term))>
    <TagTemplate>@context</TagTemplate>
</TagSelector>
```

[See example](https://github.com/mwinkler/Blazor.Components/blob/master/src/Components.Sample.App/Pages/TagSelectorSample.cshtml)

**Features / Tasks**
- [x] Generic data support
- [x] Item templating
- [x] Autocomplete
- [x] Selection via keys (up/down/enter)
- [x] Styling (Bootstrap)
- [ ] Disabling selection of items
- [x] Event population (OnSelect, OnRemove)