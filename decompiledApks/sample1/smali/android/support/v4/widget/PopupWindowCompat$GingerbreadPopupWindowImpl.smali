.class Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GingerbreadPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 77
    return-void
.end method
