.class final Landroid/support/design/widget/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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


# virtual methods
.method public createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_0

    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;-><init>()V

    :goto_0
    invoke-direct {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;-><init>(Landroid/support/design/widget/ValueAnimatorCompat$Impl;)V

    move-object v0, v1

    return-object v0

    :cond_0
    new-instance v3, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/design/widget/ValueAnimatorCompatImplEclairMr1;-><init>()V

    goto :goto_0
.end method
