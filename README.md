# Blazor Components

Some Blazor components I'm working on.  
Build for ASP.NET Core 3.0.0-preview4

![Build status](https://hdsonix.visualstudio.com/Blazor%20Components/_apis/build/status/Blazor%20Components-ASP.NET%20Core-CI)

## Tree

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tree.png)

```html
<Tree 
    Nodes=@Items 
    SelectedNode=@SelectedItem 
    ChildSelector=@(item => item.Childs)>
    <TitleTemplate>@context.Text</TitleTemplate>
</Tree>
```

[Example](https://github.com/mwinkler/Blazor.Components/blob/master/example/ComponentsDemo/Pages/TreeSample.razor)  
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
- [x] Support EventCallback<>


## Tag Selector

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tag-selector.gif)

```html
<TagSelector SelectableTags=@Tags SelectedTags=@Selected Filter=@((item,term) => item.Contains(term))>
    <TagTemplate>@context</TagTemplate>
</TagSelector>
```

[Example](https://github.com/mwinkler/Blazor.Components/blob/master/example/ComponentsDemo/Pages/TagSelectorSample.razor)  
[Nuget: MW.Blazor.TagSelector](https://www.nuget.org/packages/MW.Blazor.TagSelector/)

**Features / Tasks**
- [x] Generic data support
- [x] Item templating
- [x] Autocomplete
- [x] Selection via keys (up/down/enter)
- [x] Styling (Bootstrap)
- [ ] Disabling selection of items
- [x] Event population (OnSelect, OnRemove)
- [x] Support EventCallback<>

## Page Panel

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/page-panel.gif)

```html
<PagePanel PageIndex=@CurrentPage Style="height:250px">
    <Page Widths="50%;100%;200%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#00ff90">
            Page 1
        </div>
    </Page>
    <Page Widths="50%;30%;20%;50%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#1596c7">
            Page 2
        </div>
    </Page>
    <Page Widths="70%;70%;20%;50%">
        <div class="d-flex justify-content-center align-items-center h-100 text-white h4" style="background:#b823be">
            Page 3
        </div>
    </Page>
    <Page Widths="60%;60%;60%;100%">
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

**Features / Tasks**
- [x] Multiple pages on same page
- [ ] Defaults for 'Widths' property
- [ ] Property for transition time
- [ ] Simplify 'Widths' property


[Example](https://github.com/mwinkler/Blazor.Components/blob/master/example/ComponentsDemo/Pages/PagePanelSample.razor)  
[Nuget: MW.Blazor.PagePanel](https://www.nuget.org/packages/MW.Blazor.PagePanel/)
