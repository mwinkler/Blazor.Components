# Blazor Components

Work in progress!

## Tree

```html
<Tree 
    Nodes=@Items 
    OnNodeSelected=@OnSelect 
    SelectedNodes=@SelectedItem 
    ExpandedNodes=@ExpandedNodes 
    ChildSelector=@(item => item.Childs) 
    HasChildNodes=@(item => item.Childs?.Any() == true)>
    <TitleTemplate>@context.Text</TitleTemplate>
</Tree>
```