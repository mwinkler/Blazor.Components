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
- [x] Styling (currently Bootstrap/Font Awesome)
- [ ] Subtree loading indicator (lazy loading)
- [ ] Disabling selection of nodes
- [x] Single selection
- [ ] Multi selection (Checkboxes)


## Tag Selector

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tag-selector.gif)

```html
<TagSelector SelectableTags=@Items></TagSelector>
```

[See example](https://github.com/mwinkler/Blazor.Components/blob/master/src/Components.Sample.App/Pages/TagSelectorSample.cshtml)

**Features / Tasks**
- [ ] Generic data support
- [ ] Item templating
- [x] Autocomplete
- [x] Selection via keys (up/down/enter)
- [x] Styling (currently Bootstrap)
- [ ] Disabling selection of items