.class Landroid/support/v4/view/ViewCompatMarshmallow;
.super Ljava/lang/Object;
.source "ViewCompatMarshmallow.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getScrollIndicators()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollIndicators(I)V

    .line 24
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setScrollIndicators(II)V

    .line 28
    return-void
.end method
