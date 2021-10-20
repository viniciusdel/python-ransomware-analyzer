.class Landroid/support/design/widget/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AnimationUtils$AnimationListenerAdapter;
    }
.end annotation


# static fields
.field static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/design/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 28
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static lerp(FFF)F
    .locals 7

    .prologue
    .line 35
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v2

    move v5, v1

    move v6, v0

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    return v0
.end method

.method static lerp(IIF)I
    .locals 7

    .prologue
    .line 39
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v2

    move v5, v1

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method
