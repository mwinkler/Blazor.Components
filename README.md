# Blazor Components

Some Blazor components I'm working on:
- [Tree](#tree)
- [Tag Selector](#tagselector)
- [Page Panel](#pagepanel)

Build for ASP.NET Core 3.0-preview6

![Build status](https://hdsonix.visualstudio.com/Blazor%20Components/_apis/build/status/Blazor%20Components-ASP.NET%20Core-CI)


See running example: https://blazorcomponents.z6.web.core.windows.net/

## <a name="tree"></a>Tree

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tree.png)

```html
<Tree 
    Nodes="Items" 
    SelectedNode="SelectedItem" 
    ChildSelector="@(item => item.Childs)">
    <TitleTemplate>@context.Text</TitleTemplate>
</Tree>
```

**Client Dependencies**
```html
<link rel="stylesheet" href="_content/mwblazortree/styles.css" />
```

[Code example](https://github.com/mwinkler/Blazor.Components/blob/master/example/ComponentsDemo/Pages/TreeSample.razor)  
[Nuget package: MW.Blazor.Tree](https://www.nuget.org/packages/MW.Blazor.Tree/)

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


**Change Log**
- 1.1.2
  - Update to .NET Core 3.0-preview6
- 1.1.1
  - Convert from razor to blazor lib
- 1.1.0
  - Update to .NET Core 3 preview4
  - Move to namespace ```MW.Blazor```
  - Implement EventCallback
  - Breaking Change: SelectedNodes (```IList<TItem>```) -> SelectedNode (```TItem```)

## <a name="tagselector"></a>Tag Selector

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/tag-selector.gif)

```html
<TagSelector 
    SelectableTags="@Tags" 
    SelectedTags="@Selected" 
    Filter="@((item,term) => item.Contains(term))">
    <TagTemplate>@context</TagTemplate>
</TagSelector>
```
**Client Dependencies**
```html
<link rel="stylesheet" href="_content/mwblazortagselector/styles.css" />
<script src="_content/mwblazortagselector/interop.js"></script>
```
[Code example](https://github.com/mwinkler/Blazor.Components/blob/master/example/ComponentsDemo/Pages/TagSelectorSample.razor)  
[Nuget package: MW.Blazor.TagSelector](https://www.nuget.org/packages/MW.Blazor.TagSelector/)

**Features / Tasks**
- [x] Generic data support
- [x] Item templating
- [x] Autocomplete
- [x] Selection via keys (up/down/enter)
- [x] Styling (Bootstrap)
- [ ] Disabling selection of items
- [x] Event population (OnSelect, OnRemove)
- [x] Support EventCallback<>

**Change Log**
- 1.1.2
  - Update to .NET Core 3.0-preview6
- 1.1.1
  - Convert from razor to blazor lib
  - Add EventCallback for SelectedTags
- 1.1.0
  - Update to .NET Core 3 preview4
  - Move to namespace ```MW.Blazor```
  - Implement EventCallback

## <a name="pagepanel"></a>Page Panel

![](https://raw.githubusercontent.com/mwinkler/Blazor.Components/master/doc/page-panel.gif)

```html
<PagePanel PageIndex="@CurrentPage" Style="height:250px">
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

<button onclick="@(() => CurrentPage--)"><</button>
@CurrentPage
<button onclick="@(() => CurrentPage++)">></button>


@functions { int CurrentPage { get; set; } }
```

**Client Dependencies**
```html
<link rel="stylesheet" href="_content/mwblazorpagepanel/styles.css" />
```
[Code example](https://github.com/mwinkler/Blazor.Components/blob/master/example/ComponentsDemo/Pages/PagePanelSample.razor)  
[Nuget package: MW.Blazor.PagePanel](https://www.nuget.org/packages/MW.Blazor.PagePanel/)

**Features / Tasks**
- [x] Multiple pages on same page
- [ ] Defaults for 'Widths' property
- [ ] Property for transition time
- [ ] Simplify 'Widths' property

**Change Log**
- 1.1.2
  - Update to .NET Core 3.0-preview6
- 1.1.1
  - Convert from razor to blazor lib
- 1.1.0
  - Update to .NET Core 3 preview4
  - Move to namespace ```MW.Blazor```
  - Use CascadeValue to provide current page index