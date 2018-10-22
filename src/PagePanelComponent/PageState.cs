using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PagePanelComponent
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
