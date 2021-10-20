.class Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpaListenerAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 635
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator$1;)V
    .locals 3

    .prologue
    .line 635
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 643
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method
