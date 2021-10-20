.class Landroid/support/design/widget/ViewOffsetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 44
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-nez v4, :cond_0

    .line 45
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/ViewOffsetHelper;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v5, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    .line 47
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 49
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    if-eqz v4, :cond_1

    .line 50
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v4

    .line 51
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 53
    :cond_1
    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    if-eqz v4, :cond_2

    .line 54
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v4

    .line 55
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 58
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v2, :cond_0

    .line 72
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v2

    move v0, v2

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 76
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v2, :cond_0

    .line 63
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v2

    move v0, v2

    .line 67
    :goto_0
    return v0

    .line 65
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 67
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
