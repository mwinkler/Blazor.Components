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