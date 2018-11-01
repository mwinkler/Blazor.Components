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

[Example](https://github.com/mwinkler/Blazor.Components/blob/master/src/Components.Sample.App/Pages/TreeSample.cshtml)  
[Nuget: MW.Blazor.Tree](https://www.nuget.org/packages/MW.Blazor.Tree/)

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

[Example](https://github.com/mwinkler/Blazor.Components/blob/master/src/Components.Sample.App/Pages/TagSelectorSample.cshtml)  
[Nuget: MW.Blazor.TagSelector](https://www.nuget.org/packages/MW.Blazor.TagSelector/)

**Features / Tasks**
- [x] Generic data support
- [x] Item templating
- [x] Autocomplete
- [x] Selection via keys (up/down/enter)
- [x] Styling (Bootstrap)
- [ ] Disabling selection of items
- [x] Event population (OnSelect, OnRemove)

## Page Panel

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/page-panel.gif)

```html
<PagePanel PageIndex=@CurrentPage Class="mb-2" Style="height:250px">
    <Page PageIndex=@CurrentPage Widths="50%;100%;200%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#00ff90">
            Page 1
        </div>
    </Page>
    <Page PageIndex=@CurrentPage Widths="50%;30%;20%;50%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#1596c7">
            Page 2
        </div>
    </Page>
    <Page PageIndex=@CurrentPage Widths="70%;70%;20%;50%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#b823be">
            Page 3
        </div>
    </Page>
    <Page PageIndex=@CurrentPage Widths="60%;60%;60%;100%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#ff6a00">
            Page 4
        </div>
    </Page>
</PagePanel>

<button onclick=@{() => CurrentPage-- }><</button>
@CurrentPage
<button onclick=@{() => CurrentPage++ }>></button>


@functions { int CurrentPage { get; set; } }
```

[Example](https://github.com/mwinkler/Blazor.Components/blob/master/src/Components.Sample.App/Pages/PagePanelSample.cshtml) 