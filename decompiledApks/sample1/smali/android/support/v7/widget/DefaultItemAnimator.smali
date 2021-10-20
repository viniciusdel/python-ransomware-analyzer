.class public Landroid/support/v7/widget/DefaultItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;,
        Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;,
        Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 39
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 40
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 43
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 44
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 45
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 47
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 48
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 49
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 50
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 635
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 12

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/DefaultItemAnimator;)V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method private animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 224
    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v3, v4

    .line 225
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 226
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator$5;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator$5;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 245
    return-void
.end method

.method private animateChangeImpl(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 15

    .prologue
    .line 339
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v2, v7

    .line 340
    move-object v7, v2

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    move-object v3, v7

    .line 341
    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v7

    .line 342
    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_1
    move-object v5, v7

    .line 343
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 344
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v6, v7

    .line 346
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 347
    move-object v7, v6

    move-object v8, v1

    iget v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 348
    move-object v7, v6

    move-object v8, v1

    iget v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    move-object v9, v1

    iget v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    .line 349
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v8, Landroid/support/v7/widget/DefaultItemAnimator$7;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/DefaultItemAnimator$7;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 367
    :cond_0
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 368
    move-object v7, v5

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v6, v7

    .line 369
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 370
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v8, Landroid/support/v7/widget/DefaultItemAnimator$8;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/support/v7/widget/DefaultItemAnimator$8;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 388
    :cond_1
    return-void

    .line 340
    :cond_2
    move-object v7, v2

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto/16 :goto_0

    .line 342
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 19

    .prologue
    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v10

    .line 272
    move v10, v4

    move v11, v2

    sub-int/2addr v10, v11

    move v7, v10

    .line 273
    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    move v8, v10

    .line 274
    move v10, v7

    if-eqz v10, :cond_0

    .line 275
    move-object v10, v6

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    .line 277
    :cond_0
    move v10, v8

    if-eqz v10, :cond_1

    .line 278
    move-object v10, v6

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    .line 283
    :cond_1
    move-object v10, v6

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    move-object v9, v10

    .line 284
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 285
    move-object v10, v9

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    new-instance v11, Landroid/support/v7/widget/DefaultItemAnimator$6;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    move-object v14, v1

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator$6;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 307
    return-void
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v4

    .line 194
    move-object v4, v2

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    move-object v3, v4

    .line 195
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 196
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator$4;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator$4;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 212
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 2

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 541
    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 392
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object v4, v5

    .line 393
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 395
    move-object v5, v1

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 391
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 403
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    .line 405
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 406
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    .line 408
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 411
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 412
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 419
    :goto_0
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 420
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 421
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 422
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 423
    const/4 v4, 0x1

    move v0, v4

    :goto_1
    return v0

    .line 413
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v2

    if-ne v4, v5, :cond_1

    .line 414
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 415
    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    .line 417
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/animation/AnimatorCompatHelper;->clearInterpolator(Landroid/view/View;)V

    .line 514
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 515
    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 217
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 218
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 219
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 23

    .prologue
    .line 312
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v12, v1

    move-object v13, v2

    if-ne v12, v13, :cond_0

    .line 315
    move-object v12, v0

    move-object v13, v1

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v12

    move v0, v12

    .line 335
    :goto_0
    return v0

    .line 317
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v12

    move v7, v12

    .line 318
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v12

    move v8, v12

    .line 319
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v12

    move v9, v12

    .line 320
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 321
    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v7

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v10, v12

    .line 322
    move v12, v6

    move v13, v4

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v8

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v11, v12

    .line 324
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v7

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 325
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v8

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 326
    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v9

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 327
    move-object v12, v2

    if-eqz v12, :cond_1

    .line 329
    move-object v12, v0

    move-object v13, v2

    invoke-direct {v12, v13}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 330
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v10

    neg-int v13, v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 331
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move v13, v11

    neg-int v13, v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 332
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 334
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 335
    const/4 v12, 0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 19

    .prologue
    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v9

    .line 251
    move v9, v2

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v2, v9

    .line 252
    move v9, v3

    int-to-float v9, v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v3, v9

    .line 253
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 254
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v7, v9

    .line 255
    move v9, v5

    move v10, v3

    sub-int/2addr v9, v10

    move v8, v9

    .line 256
    move v9, v7

    if-nez v9, :cond_0

    move v9, v8

    if-nez v9, :cond_0

    .line 257
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 258
    const/4 v9, 0x0

    move v0, v9

    .line 267
    :goto_0
    return v0

    .line 260
    :cond_0
    move v9, v7

    if-eqz v9, :cond_1

    .line 261
    move-object v9, v6

    move v10, v7

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 263
    :cond_1
    move v9, v8

    if-eqz v9, :cond_2

    .line 264
    move-object v9, v6

    move v10, v8

    neg-int v10, v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 266
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v10, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILandroid/support/v7/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 267
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 188
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 189
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 630
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 631
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 630
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v7

    .line 430
    move-object v7, v2

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 432
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_0
    move v7, v3

    if-ltz v7, :cond_1

    .line 433
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v4, v7

    .line 434
    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 435
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 436
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 437
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 438
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 432
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 441
    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 442
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 444
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 446
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 447
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 448
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 451
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_1
    move v7, v3

    if-ltz v7, :cond_5

    .line 452
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 453
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 454
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 455
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 451
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 458
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_2
    move v7, v3

    if-ltz v7, :cond_8

    .line 459
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 460
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_3
    move v7, v5

    if-ltz v7, :cond_6

    .line 461
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v6, v7

    .line 462
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v1

    if-ne v7, v8, :cond_7

    .line 463
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 464
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 465
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 466
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 467
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 468
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 458
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 460
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 474
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_4
    move v7, v3

    if-ltz v7, :cond_a

    .line 475
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v4, v7

    .line 476
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 477
    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 478
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 479
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 480
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 474
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 487
    :cond_a
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 493
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 499
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 505
    :cond_d
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 509
    :cond_e
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 510
    return-void
.end method

.method public endAnimations()V
    .locals 12

    .prologue
    .line 545
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 546
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_0
    move v9, v2

    if-ltz v9, :cond_0

    .line 547
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v3, v9

    .line 548
    move-object v9, v3

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v9

    .line 549
    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 550
    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 551
    move-object v9, v0

    move-object v10, v3

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 552
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 546
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 554
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 555
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_1
    move v9, v2

    if-ltz v9, :cond_1

    .line 556
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v9

    .line 557
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 558
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 555
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 560
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 561
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_2
    move v9, v2

    if-ltz v9, :cond_2

    .line 562
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v9

    .line 563
    move-object v9, v3

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, v9

    .line 564
    move-object v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 565
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 566
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 561
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 568
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 569
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v2, v9

    :goto_3
    move v9, v2

    if-ltz v9, :cond_3

    .line 570
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move v11, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 569
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 572
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 573
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v9

    if-nez v9, :cond_4

    .line 627
    :goto_4
    return-void

    .line 577
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 578
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_5
    move v9, v3

    if-ltz v9, :cond_7

    .line 579
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 580
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 581
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_6
    move v9, v5

    if-ltz v9, :cond_6

    .line 582
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object v6, v9

    .line 583
    move-object v9, v6

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v9

    .line 584
    move-object v9, v7

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v9

    .line 585
    move-object v9, v8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 586
    move-object v9, v8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 587
    move-object v9, v0

    move-object v10, v6

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 588
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 589
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 590
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 581
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 578
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 594
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 595
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_7
    move v9, v3

    if-ltz v9, :cond_a

    .line 596
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 597
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 598
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_8
    move v9, v5

    if-ltz v9, :cond_9

    .line 599
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v9

    .line 600
    move-object v9, v6

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, v9

    .line 601
    move-object v9, v7

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 602
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 603
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 604
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 605
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 598
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 595
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 609
    :cond_a
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v9

    .line 610
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_9
    move v9, v3

    if-ltz v9, :cond_d

    .line 611
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    .line 612
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 613
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    :goto_a
    move v9, v5

    if-ltz v9, :cond_c

    .line 614
    move-object v9, v0

    move-object v10, v4

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 615
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 616
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 613
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 610
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 621
    :cond_d
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 622
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 623
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 624
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 626
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 627
    goto/16 :goto_4
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 24

    .prologue
    .line 97
    move-object/from16 v1, p0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v2, v17

    .line 98
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    :goto_1
    move/from16 v3, v17

    .line 99
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v4, v17

    .line 100
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x1

    :goto_3
    move/from16 v5, v17

    .line 101
    move/from16 v17, v2

    if-nez v17, :cond_4

    move/from16 v17, v3

    if-nez v17, :cond_4

    move/from16 v17, v5

    if-nez v17, :cond_4

    move/from16 v17, v4

    if-nez v17, :cond_4

    .line 183
    :goto_4
    return-void

    .line 97
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 98
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 99
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 100
    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 106
    :cond_4
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v6, v17

    :goto_5
    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v7, v17

    .line 107
    move-object/from16 v17, v1

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v18}, Landroid/support/v7/widget/DefaultItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 108
    goto :goto_5

    .line 109
    :cond_5
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 111
    move/from16 v17, v3

    if-eqz v17, :cond_6

    .line 112
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v17

    .line 113
    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    .line 114
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 115
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v17, Landroid/support/v7/widget/DefaultItemAnimator$1;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/widget/DefaultItemAnimator$1;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v7, v17

    .line 127
    move/from16 v17, v2

    if-eqz v17, :cond_a

    .line 128
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 129
    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 135
    :cond_6
    :goto_6
    move/from16 v17, v4

    if-eqz v17, :cond_7

    .line 136
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v17

    .line 137
    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    .line 138
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 139
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v17, Landroid/support/v7/widget/DefaultItemAnimator$2;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/widget/DefaultItemAnimator$2;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v7, v17

    .line 150
    move/from16 v17, v2

    if-eqz v17, :cond_b

    .line 151
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v17, v0

    move-object/from16 v8, v17

    .line 152
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 158
    :cond_7
    :goto_7
    move/from16 v17, v5

    if-eqz v17, :cond_9

    .line 159
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v17

    .line 160
    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    .line 161
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 162
    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v17, Landroid/support/v7/widget/DefaultItemAnimator$3;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Landroid/support/v7/widget/DefaultItemAnimator$3;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    move-object/from16 v7, v17

    .line 172
    move/from16 v17, v2

    if-nez v17, :cond_8

    move/from16 v17, v3

    if-nez v17, :cond_8

    move/from16 v17, v4

    if-eqz v17, :cond_f

    .line 173
    :cond_8
    move/from16 v17, v2

    if-eqz v17, :cond_c

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v17

    :goto_8
    move-wide/from16 v8, v17

    .line 174
    move/from16 v17, v3

    if-eqz v17, :cond_d

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v17

    :goto_9
    move-wide/from16 v10, v17

    .line 175
    move/from16 v17, v4

    if-eqz v17, :cond_e

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v17

    :goto_a
    move-wide/from16 v12, v17

    .line 176
    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    add-long v17, v17, v19

    move-wide/from16 v14, v17

    .line 177
    move-object/from16 v17, v6

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v16, v17

    .line 178
    move-object/from16 v17, v16

    move-object/from16 v18, v7

    move-wide/from16 v19, v14

    invoke-static/range {v17 .. v20}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 183
    :cond_9
    :goto_b
    goto/16 :goto_4

    .line 131
    :cond_a
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    .line 154
    :cond_b
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7

    .line 173
    :cond_c
    const-wide/16 v17, 0x0

    goto :goto_8

    .line 174
    :cond_d
    const-wide/16 v17, 0x0

    goto :goto_9

    .line 175
    :cond_e
    const-wide/16 v17, 0x0

    goto :goto_a

    .line 180
    :cond_f
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    goto :goto_b
.end method
