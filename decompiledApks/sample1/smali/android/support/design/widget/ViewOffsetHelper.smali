.class Landroid/support/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    .line 43
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    move v1, v2

    .line 70
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 71
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 72
    return-void
.end method

.method private updateOffsets()V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 56
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 60
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/design/widget/ViewOffsetHelper;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 61
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 62
    move-object v2, v1

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 63
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/support/design/widget/ViewOffsetHelper;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    move v0, v1

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    move v0, v1

    return v0
.end method

.method public onViewLayout()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v1, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    .line 48
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    .line 51
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 52
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 97
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    .line 98
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 99
    const/4 v2, 0x1

    move v0, v2

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 82
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    .line 83
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    .line 84
    const/4 v2, 0x1

    move v0, v2

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
