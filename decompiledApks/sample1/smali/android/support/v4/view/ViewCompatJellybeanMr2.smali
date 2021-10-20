.class Landroid/support/v4/view/ViewCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "ViewCompatJellybeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 33
    return-void
.end method
