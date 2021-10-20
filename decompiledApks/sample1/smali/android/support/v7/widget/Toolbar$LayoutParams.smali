.class public Landroid/support/v7/widget/Toolbar$LayoutParams;
.super Landroid/support/v7/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 1875
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, -0x2

    const/4 v4, -0x1

    move v5, v1

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 1876
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 1865
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1858
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1866
    move-object v3, v0

    const v4, 0x800013

    iput v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1867
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7

    .prologue
    .line 1870
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1858
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1871
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1872
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1861
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1858
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1862
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
    .locals 4

    .prologue
    .line 1885
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 1858
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1886
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V
    .locals 4

    .prologue
    .line 1879
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 1858
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1881
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1882
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1896
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1897
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 1889
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1892
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1893
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 1900
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    .line 1901
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1902
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    .line 1903
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    .line 1904
    return-void
.end method
