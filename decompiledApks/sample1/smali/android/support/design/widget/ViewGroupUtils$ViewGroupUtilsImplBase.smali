.class Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"

# interfaces
.implements Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ViewGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewGroupUtilsImplBase"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/ViewGroupUtils$1;)V
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ViewGroupUtils$ViewGroupUtilsImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 34
    return-void
.end method
