.class Landroid/support/design/widget/CircularBorderDrawableLollipop;
.super Landroid/support/design/widget/CircularBorderDrawable;
.source "CircularBorderDrawableLollipop.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CircularBorderDrawableLollipop;->copyBounds(Landroid/graphics/Rect;)V

    .line 29
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CircularBorderDrawableLollipop;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 30
    return-void
.end method
