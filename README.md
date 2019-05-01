# vim-nerdtree-image-helper

This is a vim/NERDTree plugin which provides some mappings for inserting images into Markdown documents.

## Mappings

1. In NERDTree select the image you want to insert and use one of the following mappings:
	* `<leader>ifn` : insert figure normal
	* `<leader>ifl` : insert figure left
	* `<leader>ifr` : insert figure right
	* `<leader>ifcn` : insert figure with caption normal
	* `<leader>ifcl` : insert figure with caption left
	* `<leader>ifcr` : insert figure with caption right
2. This will trigger one of the snippets in `markdown.snippets` prefilled with the relative path of the image.

### Example

`<leader>ifcl` will insert the following code into your markdown document:

```html
<figure class="left">               
  <img src="img/EXAMPLE_IMAGE.png" alt="">
  <figcaption></figcaption>
</figure> 
```

## NOTE  

The images have to be in a subfolder called `img`.
For example you have a the file `somefolder/foobar.md`. Then the images have to be in `somefolder/img`.

## Dependencies

This plugin depends on [SirVer/ultisnips](https://github.com/sirver/UltiSnips).

## Installation

* Install with your plugin manager of choice.
* Add the snippets in `markdown.snippets` to your UltiSnips snippets.

## TODO

* fix insert-markdown-image-mapping.vim
* fix yank-mapping.vim
