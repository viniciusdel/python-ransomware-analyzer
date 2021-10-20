.class Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewUtilsImplLollipop"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/ViewUtils$1;)V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;-><init>()V

    return-void
.end method


# virtual methods
.method public setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 49
    return-void
.end method
