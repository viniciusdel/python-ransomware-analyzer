.class Landroid/support/design/widget/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# instance fields
.field private mUserSetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    .line 38
    return-void
.end method


# virtual methods
.method final getUserSetVisibility()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    move v0, v1

    return v0
.end method

.method final internalSetVisibility(IZ)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 47
    move v3, v2

    if-eqz v3, :cond_0

    .line 48
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    .line 50
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 43
    return-void
.end method
