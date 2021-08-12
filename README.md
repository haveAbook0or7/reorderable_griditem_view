# reorderable_griditem_view

A grid view that can be replaced by a long tap

## Demo
<img src="https://user-images.githubusercontent.com/88770933/129170441-e8faf454-ffdc-445b-9937-751f92759d15.gif" width="250">

***
## Constructors

	ReorderableGridview.builder({  
		int crossAxisCount = 3,  
	    double axisSpacing = 4.0,  
		required int itemcount,  
	    required Widget Function(int) itembuilder,  
	    required dynamic Function(int) keybuilder,  
	    Function(dynamic keys)? onReorder,  
	    Function(int index)? onTap,  
	    Key? key,  
	})

## Properties(English)

### crossAxisCount → int  
`Number of columns.`
### axisSpacing → double
`The size of the gap between items.`
### itemcount → int
`The number of items in the GridView.`
### itembuilder → Widget Function(int index)
`Called, to build grid item widgets.`
### keybuilder → dynamic Function(int index)
`Called to give a key to each item.`
### onReorder → Function(dynamic keys)?
`A callback used by the list to report that a list item has been dragged to a new location in the list and the application should update the order of the items.`<br>
`Each time you move an item, it returns the sorted keyliist. The contents of keyliist are set by "keybuilder".`
### onTap → Function(int index)?
`Called when the user taps each item.`

## Properties(日本語)

### crossAxisCount → int  
`列の数(横に並べるアイテムの数)`
### axisSpacing → double
`アイテムとアイテムの隙間のサイズ`
### itemcount → int
`アイテムの数`
### itembuilder → Widget Function(int index)
`グリッドアイテムを作成するのに使用する。`
### keybuilder → dynamic Function(int index)
`各アイテムのキーを設定する`
### onReorder → Function(dynamic keys)?
`アイテムを移動するたびに、並び替えたキーリストが返されます。 キーリストの中身は「keybuilder」で設定されたものです。`
### onTap → Function(int index)?
`各アイテムをタップしたときの動作を定義します。`