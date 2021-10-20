.class public abstract Landroid/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# static fields
.field static IMPL:Landroid/support/v4/animation/AnimatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Landroid/support/v4/animation/DonutAnimatorCompatProvider;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/animation/DonutAnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static clearInterpolator(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    sget-object v1, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/animation/AnimatorProvider;->clearInterpolator(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public static emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0}, Landroid/support/v4/animation/AnimatorProvider;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
