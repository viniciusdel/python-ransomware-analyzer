.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 2121
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2122
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2123
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2124
    return-void
.end method


# virtual methods
.method public getDragDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 2169
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    move v0, v3

    return v0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 7

    .prologue
    .line 2174
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    .line 2156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    move v0, v3

    return v0
.end method

.method public setDefaultDragDirs(I)V
    .locals 4

    .prologue
    .line 2143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 2144
    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 4

    .prologue
    .line 2133
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2134
    return-void
.end method
