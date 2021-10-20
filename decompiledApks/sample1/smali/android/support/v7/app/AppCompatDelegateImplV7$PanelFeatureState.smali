.class final Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Landroid/support/v7/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 1848
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1849
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    .line 1851
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->refreshDecorView:Z

    .line 1852
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 3

    .prologue
    .line 1954
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1955
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 1956
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 1958
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 3

    .prologue
    .line 1865
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1866
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1868
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 1869
    return-void
.end method

.method getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;
    .locals 9

    .prologue
    .line 1916
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 1927
    :goto_0
    return-object v0

    .line 1918
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-nez v3, :cond_1

    .line 1919
    move-object v3, v0

    new-instance v4, Landroid/support/v7/view/menu/ListMenuPresenter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v7, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v5, v6, v7}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 1921
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1922
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1925
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v3

    move-object v2, v3

    .line 1927
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 2

    .prologue
    .line 1855
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 1858
    :goto_0
    return v0

    .line 1856
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 1858
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1944
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-object v2, v3

    .line 1945
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    iput v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    .line 1946
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->wasLastOpen:Z

    .line 1947
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 1949
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1950
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1951
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1931
    move-object v0, p0

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    move-object v1, v2

    .line 1932
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    iput v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->featureId:I

    .line 1933
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->isOpen:Z

    iput-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->isOpen:Z

    .line 1935
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1936
    move-object v2, v1

    new-instance v3, Landroid/os/Bundle;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1937
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 1940
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 1904
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v2, v3, :cond_0

    .line 1913
    :goto_0
    return-void

    .line 1906
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1907
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1909
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1910
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 1911
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 1913
    :cond_2
    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 1872
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/util/TypedValue;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v5

    .line 1873
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move-object v3, v5

    .line 1874
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1877
    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    .line 1878
    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 1879
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1883
    :cond_0
    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    move-object v7, v2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    .line 1884
    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 1885
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1890
    :goto_0
    new-instance v5, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v5

    .line 1891
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1893
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 1895
    move-object v5, v1

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 1896
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->Theme_panelBackground:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->background:I

    .line 1898
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowAnimationStyle:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->windowAnimations:I

    .line 1900
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1901
    return-void

    .line 1887
    :cond_1
    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
