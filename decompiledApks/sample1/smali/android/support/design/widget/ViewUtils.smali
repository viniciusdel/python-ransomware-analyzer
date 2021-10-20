.class Landroid/support/design/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;,
        Landroid/support/design/widget/ViewUtils$ViewUtilsImplBase;,
        Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;
    }
.end annotation


# static fields
.field static final DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

.field private static final IMPL:Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v1, Landroid/support/design/widget/ViewUtils$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Landroid/support/design/widget/ViewUtils$1;-><init>()V

    sput-object v1, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 56
    move v1, v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 57
    new-instance v1, Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/ViewUtils$ViewUtilsImplLollipop;-><init>(Landroid/support/design/widget/ViewUtils$1;)V

    sput-object v1, Landroid/support/design/widget/ViewUtils;->IMPL:Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v1, Landroid/support/design/widget/ViewUtils$ViewUtilsImplBase;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/ViewUtils$ViewUtilsImplBase;-><init>(Landroid/support/design/widget/ViewUtils$1;)V

    sput-object v1, Landroid/support/design/widget/ViewUtils;->IMPL:Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/support/design/widget/ViewUtils;->DEFAULT_ANIMATOR_CREATOR:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Creator;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method static setBoundsViewOutlineProvider(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    sget-object v1, Landroid/support/design/widget/ViewUtils;->IMPL:Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/design/widget/ViewUtils$ViewUtilsImpl;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 65
    return-void
.end method
