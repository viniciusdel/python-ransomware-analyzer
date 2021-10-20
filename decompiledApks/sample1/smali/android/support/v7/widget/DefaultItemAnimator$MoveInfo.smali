.class Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 58
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    .line 59
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    .line 60
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toX:I

    .line 61
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V
    .locals 13

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
