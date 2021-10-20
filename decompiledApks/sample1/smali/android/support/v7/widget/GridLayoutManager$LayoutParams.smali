.class public Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field private mSpanIndex:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 888
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 879
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 889
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 884
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 879
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 885
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 4

    .prologue
    .line 900
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 879
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 901
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 897
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .prologue
    .line 892
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 879
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 881
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 893
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 2

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 7

    .prologue
    .line 872
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I
    .locals 2

    .prologue
    .line 872
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move v0, v1

    return v0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I
    .locals 7

    .prologue
    .line 872
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move v0, v2

    return v0
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 2

    .prologue
    .line 917
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move v0, v1

    return v0
.end method

.method public getSpanSize()I
    .locals 2

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    move v0, v1

    return v0
.end method
