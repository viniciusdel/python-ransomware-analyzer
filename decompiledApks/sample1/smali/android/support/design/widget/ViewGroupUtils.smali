.class Landroid/support/design/widget/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ViewGroupUtils$1;,
        Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;,
        Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;,
        Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 48
    move v1, v0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 49
    new-instance v1, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplHoneycomb;-><init>(Landroid/support/design/widget/ViewGroupUtils$1;)V

    sput-object v1, Landroid/support/design/widget/ViewGroupUtils;->IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;-><init>(Landroid/support/design/widget/ViewGroupUtils$1;)V

    sput-object v1, Landroid/support/design/widget/ViewGroupUtils;->IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/ViewGroupUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 78
    return-void
.end method

.method static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v3, Landroid/support/design/widget/ViewGroupUtils;->IMPL:Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method
