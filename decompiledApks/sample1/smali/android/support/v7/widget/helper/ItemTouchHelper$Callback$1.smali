.class final Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1342
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    .line 1344
    move-object v0, p0

    move v1, p1

    move v2, v1

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    move v0, v2

    return v0
.end method
