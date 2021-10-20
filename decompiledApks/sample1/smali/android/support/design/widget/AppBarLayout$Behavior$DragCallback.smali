.class public abstract Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
.super Ljava/lang/Object;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DragCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 655
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canDrag(Landroid/support/design/widget/AppBarLayout;)Z
    .param p1    # Landroid/support/design/widget/AppBarLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
