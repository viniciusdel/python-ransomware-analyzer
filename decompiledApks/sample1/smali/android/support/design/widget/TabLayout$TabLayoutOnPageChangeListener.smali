.class public Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 7

    .prologue
    .line 1729
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1730
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 1731
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 1735
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v3, v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 1736
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    .line 1737
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10

    .prologue
    .line 1742
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout;

    move-object v4, v6

    .line 1743
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 1746
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 1749
    move-object v6, v4

    move v7, v1

    move v8, v2

    move v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1751
    :cond_1
    return-void

    .line 1746
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 6

    .prologue
    .line 1755
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    move-object v2, v3

    .line 1756
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1759
    move-object v3, v2

    move-object v4, v2

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 1762
    :cond_0
    return-void

    .line 1759
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
