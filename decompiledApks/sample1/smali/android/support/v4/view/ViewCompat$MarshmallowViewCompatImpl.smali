.class Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarshmallowViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1631
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getScrollIndicators(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1644
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatMarshmallow;->getScrollIndicators(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 1634
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;I)V

    .line 1635
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 1639
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;II)V

    .line 1640
    return-void
.end method
