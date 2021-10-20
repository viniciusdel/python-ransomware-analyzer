.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$TransitionState;,
        Landroid/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final SUPPORTS_TRANSITIONS:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 226
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 229
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 354
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 355
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 8

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/app/BackStackRecord;->setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 12

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/support/v4/app/BackStackRecord;->callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    return-void
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;Z)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1019
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    new-instance v8, Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v4/app/BackStackRecord$TransitionState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    move-object v4, v8

    .line 1024
    move-object v8, v4

    new-instance v9, Landroid/view/View;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1026
    const/4 v8, 0x0

    move v5, v8

    .line 1028
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move-object v9, v1

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 1029
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move v7, v8

    .line 1030
    move-object v8, v0

    move v9, v7

    move-object v10, v4

    move v11, v3

    move-object v12, v1

    move-object v13, v2

    invoke-direct/range {v8 .. v13}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1032
    const/4 v8, 0x1

    move v5, v8

    .line 1028
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1037
    :cond_1
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v2

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1038
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move v7, v8

    .line 1039
    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v0

    move v9, v7

    move-object v10, v4

    move v11, v3

    move-object v12, v1

    move-object v13, v2

    invoke-direct/range {v8 .. v13}, Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1042
    const/4 v8, 0x1

    move v5, v8

    .line 1037
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1046
    :cond_3
    move v8, v5

    if-nez v8, :cond_4

    .line 1047
    const/4 v8, 0x0

    move-object v4, v8

    .line 1050
    :cond_4
    move-object v8, v4

    move-object v0, v8

    return-object v0
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v7

    if-nez v7, :cond_0

    .line 820
    :goto_0
    return-void

    .line 778
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v7

    .line 779
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_5

    .line 780
    move-object v7, v3

    iget v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v7, :pswitch_data_0

    .line 818
    :goto_2
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v7

    goto :goto_1

    .line 782
    :pswitch_0
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v7, v8, v9}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 783
    goto :goto_2

    .line 785
    :pswitch_1
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v4, v7

    .line 786
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 787
    const/4 v7, 0x0

    move v5, v7

    :goto_3
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 788
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v6, v7

    .line 789
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v6

    iget v7, v7, Landroid/support/v4/app/Fragment;->mContainerId:I

    move-object v8, v4

    iget v8, v8, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v7, v8, :cond_2

    .line 790
    :cond_1
    move-object v7, v6

    move-object v8, v4

    if-ne v7, v8, :cond_3

    .line 791
    const/4 v7, 0x0

    move-object v4, v7

    .line 787
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 793
    :cond_3
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_4

    .line 798
    :cond_4
    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 799
    goto :goto_2

    .line 802
    :pswitch_2
    move-object v7, v1

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v7, v8}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 803
    goto :goto_2

    .line 805
    :pswitch_3
    move-object v7, v1

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v7, v8}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 806
    goto :goto_2

    .line 808
    :pswitch_4
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v7, v8, v9}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 809
    goto :goto_2

    .line 811
    :pswitch_5
    move-object v7, v1

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v7, v8}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 812
    goto :goto_2

    .line 814
    :pswitch_6
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v7, v8, v9}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    .line 820
    :cond_5
    goto/16 :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private callSharedElementEnd(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move v9, v4

    if-eqz v9, :cond_1

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    :goto_0
    move-object v6, v9

    .line 1265
    move-object v9, v6

    if-eqz v9, :cond_0

    .line 1266
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v9

    .line 1267
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v9

    .line 1268
    move-object v9, v6

    move-object v10, v7

    move-object v11, v8

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1270
    :cond_0
    return-void

    .line 1262
    :cond_1
    move-object v9, v2

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    goto :goto_0
.end method

.method private static captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1081
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1082
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureExitingViews(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    .line 1085
    :cond_0
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method private configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1132
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v21, v0

    move/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    move-object/from16 v7, v21

    .line 1133
    move-object/from16 v21, v7

    if-nez v21, :cond_0

    .line 1134
    const/16 v21, 0x0

    move/from16 v1, v21

    .line 1226
    :goto_0
    return v1

    .line 1136
    :cond_0
    move-object/from16 v21, v6

    move/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/support/v4/app/Fragment;

    move-object/from16 v8, v21

    .line 1137
    move-object/from16 v21, v5

    move/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/support/v4/app/Fragment;

    move-object/from16 v9, v21

    .line 1139
    move-object/from16 v21, v8

    move/from16 v22, v4

    invoke-static/range {v21 .. v22}, Landroid/support/v4/app/BackStackRecord;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v10, v21

    .line 1140
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v4

    invoke-static/range {v21 .. v23}, Landroid/support/v4/app/BackStackRecord;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1142
    move-object/from16 v21, v9

    move/from16 v22, v4

    invoke-static/range {v21 .. v22}, Landroid/support/v4/app/BackStackRecord;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    .line 1143
    const/16 v21, 0x0

    move-object/from16 v13, v21

    .line 1144
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v21

    .line 1145
    move-object/from16 v21, v11

    if-eqz v21, :cond_1

    .line 1146
    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v9

    move/from16 v24, v4

    invoke-direct/range {v21 .. v24}, Landroid/support/v4/app/BackStackRecord;->remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v21

    move-object/from16 v13, v21

    .line 1147
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1148
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 1149
    const/16 v21, 0x0

    move-object/from16 v13, v21

    .line 1164
    :cond_1
    :goto_1
    move-object/from16 v21, v10

    if-nez v21, :cond_5

    move-object/from16 v21, v11

    if-nez v21, :cond_5

    move-object/from16 v21, v12

    if-nez v21, :cond_5

    .line 1166
    const/16 v21, 0x0

    move/from16 v1, v21

    goto :goto_0

    .line 1152
    :cond_2
    move/from16 v21, v4

    if-eqz v21, :cond_4

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object/from16 v21, v0

    :goto_2
    move-object/from16 v15, v21

    .line 1155
    move-object/from16 v21, v15

    if-eqz v21, :cond_3

    .line 1156
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v21

    .line 1157
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v17, v21

    .line 1158
    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v23, v17

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1160
    :cond_3
    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v27, v4

    move-object/from16 v28, v14

    invoke-direct/range {v21 .. v28}, Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 1152
    :cond_4
    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object/from16 v21, v0

    goto :goto_2

    .line 1169
    :cond_5
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v21

    .line 1170
    move-object/from16 v21, v12

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    move-object/from16 v24, v13

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-static/range {v21 .. v25}, Landroid/support/v4/app/BackStackRecord;->captureExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    .line 1174
    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v21, v13

    if-eqz v21, :cond_7

    .line 1175
    move-object/from16 v21, v13

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    move-object/from16 v16, v21

    .line 1176
    move-object/from16 v21, v16

    if-eqz v21, :cond_7

    .line 1177
    move-object/from16 v21, v12

    if-eqz v21, :cond_6

    .line 1178
    move-object/from16 v21, v12

    move-object/from16 v22, v16

    invoke-static/range {v21 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1180
    :cond_6
    move-object/from16 v21, v11

    if-eqz v21, :cond_7

    .line 1181
    move-object/from16 v21, v11

    move-object/from16 v22, v16

    invoke-static/range {v21 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1187
    :cond_7
    new-instance v21, Landroid/support/v4/app/BackStackRecord$1;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    move-object/from16 v23, v1

    move-object/from16 v24, v8

    invoke-direct/range {v22 .. v24}, Landroid/support/v4/app/BackStackRecord$1;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/Fragment;)V

    move-object/from16 v16, v21

    .line 1195
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v21

    .line 1196
    new-instance v21, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v32, v21

    move-object/from16 v21, v32

    move-object/from16 v22, v32

    invoke-direct/range {v22 .. v22}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v18, v21

    .line 1198
    const/16 v21, 0x1

    move/from16 v19, v21

    .line 1199
    move-object/from16 v21, v8

    if-eqz v21, :cond_8

    .line 1200
    move/from16 v21, v4

    if-eqz v21, :cond_a

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v21

    :goto_3
    move/from16 v19, v21

    .line 1203
    :cond_8
    move-object/from16 v21, v10

    move-object/from16 v22, v12

    move-object/from16 v23, v11

    move/from16 v24, v19

    invoke-static/range {v21 .. v24}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v20, v21

    .line 1206
    move-object/from16 v21, v20

    if-eqz v21, :cond_9

    .line 1207
    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v7

    move-object/from16 v24, v16

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v28, v17

    move-object/from16 v29, v13

    move-object/from16 v30, v18

    move-object/from16 v31, v14

    invoke-static/range {v21 .. v31}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTransitionTargets(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1211
    move-object/from16 v21, v1

    move-object/from16 v22, v7

    move-object/from16 v23, v3

    move/from16 v24, v2

    move-object/from16 v25, v20

    invoke-direct/range {v21 .. v25}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1215
    move-object/from16 v21, v20

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1217
    move-object/from16 v21, v1

    move-object/from16 v22, v3

    move/from16 v23, v2

    move-object/from16 v24, v20

    invoke-direct/range {v21 .. v24}, Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    .line 1219
    move-object/from16 v21, v7

    move-object/from16 v22, v20

    invoke-static/range {v21 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1221
    move-object/from16 v21, v7

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v23, v10

    move-object/from16 v24, v17

    move-object/from16 v25, v12

    move-object/from16 v26, v15

    move-object/from16 v27, v11

    move-object/from16 v28, v14

    move-object/from16 v29, v20

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v31, v18

    invoke-static/range {v21 .. v31}, Landroid/support/v4/app/FragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1226
    :cond_9
    move-object/from16 v21, v20

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    :goto_4
    move/from16 v1, v21

    goto/16 :goto_0

    .line 1200
    :cond_a
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v21

    goto/16 :goto_3

    .line 1226
    :cond_b
    const/16 v21, 0x0

    goto :goto_4
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 12

    .prologue
    .line 414
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 416
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 417
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, v3

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 418
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t change tag of fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " now "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 422
    :cond_0
    move-object v6, v2

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 425
    :cond_1
    move v6, v1

    if-eqz v6, :cond_3

    .line 426
    move-object v6, v2

    iget v6, v6, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v6, :cond_2

    move-object v6, v2

    iget v6, v6, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v7, v1

    if-eq v6, v7, :cond_2

    .line 427
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t change container ID of fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    iget v9, v9, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " now "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 431
    :cond_2
    move-object v6, v2

    move-object v7, v2

    move v8, v1

    move-object v10, v7

    move v11, v8

    move v7, v11

    move-object v8, v10

    move v9, v11

    iput v9, v8, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v7, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 434
    :cond_3
    new-instance v6, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v5, v6

    .line 435
    move-object v6, v5

    move v7, v4

    iput v7, v6, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 436
    move-object v6, v5

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 437
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 438
    return-void
.end method

.method private excludeHiddenFragments(Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 9

    .prologue
    .line 1370
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 1371
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1372
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    move-object v5, v6

    .line 1373
    move-object v6, v5

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v6, v5

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v6, v5

    iget v6, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    move v7, v2

    if-ne v6, v7, :cond_0

    .line 1375
    move-object v6, v5

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v6, :cond_1

    .line 1376
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1377
    move-object v6, v3

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1379
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1371
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    move-object v6, v3

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->excludeTarget(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1384
    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 1389
    :cond_2
    return-void
.end method

.method private excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V
    .locals 14

    .prologue
    .line 1359
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/BackStackRecord$3;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Landroid/support/v4/app/BackStackRecord$3;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1367
    return-void
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1054
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 1055
    const/4 v2, 0x0

    move-object v0, v2

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1062
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 1063
    const/4 v2, 0x0

    move-object v0, v2

    .line 1065
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1071
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1072
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 1074
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapSharedElementTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method private mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v6, Landroid/support/v4/util/ArrayMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v4, v6

    .line 1342
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1343
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 1344
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 1345
    move-object v6, v4

    move-object v7, v5

    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1346
    move v6, v3

    if-eqz v6, :cond_1

    .line 1347
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v6

    move-object v4, v6

    .line 1354
    :cond_0
    :goto_0
    move-object v6, v4

    move-object v0, v6

    return-object v0

    .line 1350
    :cond_1
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method private mapSharedElementsIn(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1286
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->mapEnteringSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    move-object v4, v5

    .line 1290
    move v5, v2

    if-eqz v5, :cond_1

    .line 1291
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v5, :cond_0

    .line 1292
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1295
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1303
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 1297
    :cond_1
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v5, :cond_2

    .line 1298
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1301
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_0
.end method

.method private prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Landroid/support/v4/app/BackStackRecord$2;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v0

    move-object v12, v2

    move-object v13, v3

    move-object v14, v7

    move-object v15, v1

    move/from16 v16, v6

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v10 .. v18}, Landroid/support/v4/app/BackStackRecord$2;-><init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1258
    return-void
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1316
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1317
    move-object v7, v2

    move-object v0, v7

    .line 1327
    :goto_0
    return-object v0

    .line 1319
    :cond_0
    new-instance v7, Landroid/support/v4/util/ArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v3, v7

    .line 1320
    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 1321
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 1322
    move-object v7, v2

    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v6, v7

    .line 1323
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 1324
    move-object v7, v3

    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1321
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1327
    :cond_2
    move-object v7, v3

    move-object v0, v7

    goto :goto_0
.end method

.method private remapSharedElements(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Z)Landroid/support/v4/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/app/Fragment;",
            "Z)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1090
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v4, v5

    .line 1091
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1092
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1093
    move v5, v3

    if-eqz v5, :cond_2

    .line 1094
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v5

    .line 1101
    :cond_0
    :goto_0
    move v5, v3

    if-eqz v5, :cond_3

    .line 1102
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v5, :cond_1

    .line 1103
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1106
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    .line 1115
    :goto_1
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 1096
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 1108
    :cond_3
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    if-eqz v5, :cond_4

    .line 1109
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1112
    :cond_4
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V

    goto :goto_1
.end method

.method private setBackNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1417
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :goto_0
    move v4, v10

    .line 1418
    const/4 v10, 0x0

    move v5, v10

    :goto_1
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_3

    .line 1419
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 1420
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 1421
    move-object v10, v2

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object v8, v10

    .line 1422
    move-object v10, v8

    if-eqz v10, :cond_0

    .line 1423
    move-object v10, v8

    invoke-static {v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 1424
    move v10, v3

    if-eqz v10, :cond_2

    .line 1425
    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object v11, v6

    move-object v12, v9

    invoke-static {v10, v11, v12}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1417
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_0

    .line 1427
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object v11, v9

    move-object v12, v6

    invoke-static {v10, v11, v12}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1431
    :cond_3
    return-void
.end method

.method private setEpicenterIn(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1273
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1275
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 1277
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1278
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;->epicenter:Landroid/view/View;

    .line 1281
    :cond_0
    return-void
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 747
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    move v2, v3

    .line 748
    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 750
    move-object v3, v0

    move v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 753
    :cond_0
    return-void
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 756
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    if-eqz v4, :cond_0

    .line 757
    move-object v4, v2

    iget v4, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    move v3, v4

    .line 758
    move v4, v3

    if-eqz v4, :cond_0

    .line 759
    move-object v4, v1

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 762
    :cond_0
    return-void
.end method

.method private static setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v2

    if-eqz v4, :cond_2

    .line 1394
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1395
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1396
    move-object v4, v0

    move v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1402
    :goto_1
    return-void

    .line 1394
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1400
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1402
    :cond_2
    goto :goto_1
.end method

.method private setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/util/ArrayMap;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1435
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v8

    move v4, v8

    .line 1436
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 1437
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 1438
    move-object v8, v2

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1439
    move v8, v3

    if-eqz v8, :cond_0

    .line 1440
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1442
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object v9, v7

    move-object v10, v6

    invoke-static {v8, v9, v10}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1445
    :cond_1
    return-void
.end method

.method private static setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1406
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    if-eqz v6, :cond_0

    .line 1407
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1408
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 1409
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 1410
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/support/v4/util/ArrayMap;

    move-object v7, v4

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->setNameOverride(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1413
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 405
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 9

    .prologue
    .line 409
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 410
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 400
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 8

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v2, :cond_0

    .line 385
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 391
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 392
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 393
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 394
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 395
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 396
    return-void

    .line 387
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 388
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 389
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-boolean v4, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v4, :cond_2

    .line 519
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 520
    move-object v4, v3

    if-nez v4, :cond_0

    .line 521
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 524
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 525
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 526
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 529
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 530
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 532
    :cond_2
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v2, :cond_0

    .line 542
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 546
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 547
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 491
    move-object v3, v2

    const/4 v4, 0x7

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 492
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 493
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 495
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method bumpBackStackNesting(I)V
    .locals 9

    .prologue
    .line 588
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v5, :cond_0

    .line 610
    :goto_0
    return-void

    .line 591
    :cond_0
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 593
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v5

    .line 594
    :goto_1
    move-object v5, v2

    if-eqz v5, :cond_5

    .line 595
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    .line 596
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    move v7, v1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 597
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 600
    :cond_2
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 601
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_2
    move v5, v3

    if-ltz v5, :cond_4

    .line 602
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 603
    move-object v5, v4

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    move v7, v1

    add-int/2addr v6, v7

    iput v6, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 604
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 601
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 608
    :cond_4
    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v5

    goto/16 :goto_1

    .line 610
    :cond_5
    goto/16 :goto_0
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 833
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v5

    if-nez v5, :cond_0

    .line 869
    :goto_0
    return-void

    .line 836
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v5

    .line 837
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 838
    move-object v5, v3

    iget v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 867
    :goto_2
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v5

    goto :goto_1

    .line 840
    :pswitch_0
    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v5, v6}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 841
    goto :goto_2

    .line 843
    :pswitch_1
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 844
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_3
    move v5, v4

    if-ltz v5, :cond_1

    .line 845
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 844
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 848
    :cond_1
    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v5, v6}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 849
    goto :goto_2

    .line 851
    :pswitch_2
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 852
    goto :goto_2

    .line 854
    :pswitch_3
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 855
    goto :goto_2

    .line 857
    :pswitch_4
    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v5, v6}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 858
    goto :goto_2

    .line 860
    :pswitch_5
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 861
    goto :goto_2

    .line 863
    :pswitch_6
    move-object v5, v1

    move-object v6, v3

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v5, v6}, Landroid/support/v4/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    .line 869
    :cond_2
    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public commit()I
    .locals 3

    .prologue
    .line 613
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 3

    .prologue
    .line 617
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v1

    move v0, v1

    return v0
.end method

.method commitInternal(Z)I
    .locals 10

    .prologue
    .line 621
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "commit already called"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 622
    :cond_0
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 623
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Commit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 624
    new-instance v4, Landroid/support/v4/util/LogWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "FragmentManager"

    invoke-direct {v5, v6}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 625
    new-instance v4, Ljava/io/PrintWriter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v4

    .line 626
    move-object v4, v0

    const-string v5, "  "

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 628
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 629
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_2

    .line 630
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v5

    iput v5, v4, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 634
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v0

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 635
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move v0, v4

    return v0

    .line 632
    :cond_2
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 482
    move-object v3, v2

    const/4 v4, 0x6

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 483
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 484
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 486
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .locals 5

    .prologue
    .line 555
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "This transaction is already being added to the back stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 560
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 258
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 13

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move v9, v3

    if-eqz v9, :cond_8

    .line 262
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mName="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    move-object v9, v2

    const-string v10, " mIndex="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 264
    move-object v9, v2

    const-string v10, " mCommitted="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 265
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v9, :cond_0

    .line 266
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mTransition=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    move-object v9, v2

    const-string v10, " mTransitionStyle=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_0
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v9, :cond_1

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v9, :cond_2

    .line 272
    :cond_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    move-object v9, v2

    const-string v10, " mExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_2
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v9, :cond_3

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v9, :cond_4

    .line 278
    :cond_3
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mPopEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    move-object v9, v2

    const-string v10, " mPopExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    :cond_4
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    .line 284
    :cond_5
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mBreadCrumbTitleRes=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    move-object v9, v2

    const-string v10, " mBreadCrumbTitleText="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 289
    :cond_6
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v9, :cond_7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_8

    .line 290
    :cond_7
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    move-object v9, v2

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    move-object v9, v2

    const-string v10, " mBreadCrumbShortTitleText="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v9, :cond_10

    .line 298
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "Operations:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 300
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v9

    .line 301
    const/4 v9, 0x0

    move v6, v9

    .line 302
    :goto_0
    move-object v9, v5

    if-eqz v9, :cond_10

    .line 304
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v9, :pswitch_data_0

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 315
    :goto_1
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "  Op #"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 316
    move-object v9, v2

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    move-object v9, v2

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    move v9, v3

    if-eqz v9, :cond_c

    .line 319
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v9, :cond_9

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v9, :cond_a

    .line 320
    :cond_9
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "enterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    move-object v9, v2

    const-string v10, " exitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_a
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v9, :cond_b

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v9, :cond_c

    .line 326
    :cond_b
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "popEnterAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    move-object v9, v2

    const-string v10, " popExitAnim=#"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_c
    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 333
    const/4 v9, 0x0

    move v8, v9

    :goto_2
    move v9, v8

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_f

    .line 334
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 336
    move-object v9, v2

    const-string v10, "Removed: "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    :goto_3
    move-object v9, v2

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 305
    :pswitch_0
    const-string v9, "NULL"

    move-object v7, v9

    goto/16 :goto_1

    .line 306
    :pswitch_1
    const-string v9, "ADD"

    move-object v7, v9

    goto/16 :goto_1

    .line 307
    :pswitch_2
    const-string v9, "REPLACE"

    move-object v7, v9

    goto/16 :goto_1

    .line 308
    :pswitch_3
    const-string v9, "REMOVE"

    move-object v7, v9

    goto/16 :goto_1

    .line 309
    :pswitch_4
    const-string v9, "HIDE"

    move-object v7, v9

    goto/16 :goto_1

    .line 310
    :pswitch_5
    const-string v9, "SHOW"

    move-object v7, v9

    goto/16 :goto_1

    .line 311
    :pswitch_6
    const-string v9, "DETACH"

    move-object v7, v9

    goto/16 :goto_1

    .line 312
    :pswitch_7
    const-string v9, "ATTACH"

    move-object v7, v9

    goto/16 :goto_1

    .line 338
    :cond_d
    move v9, v8

    if-nez v9, :cond_e

    .line 339
    move-object v9, v2

    const-string v10, "Removed:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_e
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    const-string v10, "  #"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v9, v2

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    move-object v9, v2

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_f
    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v9

    .line 348
    add-int/lit8 v6, v6, 0x1

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_10
    return-void

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v1, :cond_0

    .line 378
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 380
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    move v0, v1

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v1, :cond_0

    .line 371
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 373
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    move v0, v1

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 971
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getTransition()I
    .locals 2

    .prologue
    .line 975
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    move v0, v1

    return v0
.end method

.method public getTransitionStyle()I
    .locals 2

    .prologue
    .line 979
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    move v0, v1

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 464
    move-object v3, v2

    const/4 v4, 0x4

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 465
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 466
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 468
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 2

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 983
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 873
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    sget-boolean v14, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 874
    const-string v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "popFromBackStack: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 875
    new-instance v14, Landroid/support/v4/util/LogWriter;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string v16, "FragmentManager"

    invoke-direct/range {v15 .. v16}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v6, v14

    .line 876
    new-instance v14, Ljava/io/PrintWriter;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v14

    .line 877
    move-object v14, v1

    const-string v15, "  "

    const/16 v16, 0x0

    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 880
    :cond_0
    sget-boolean v14, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v14, :cond_2

    .line 881
    move-object v14, v3

    if-nez v14, :cond_3

    .line 882
    move-object v14, v4

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v5

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-eqz v14, :cond_2

    .line 883
    :cond_1
    move-object v14, v1

    move-object v15, v4

    move-object/from16 v16, v5

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v14

    move-object v3, v14

    .line 890
    :cond_2
    :goto_0
    move-object v14, v1

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 892
    move-object v14, v3

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_1
    move v6, v14

    .line 893
    move-object v14, v3

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    :goto_2
    move v7, v14

    .line 894
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v8, v14

    .line 895
    :goto_3
    move-object v14, v8

    if-eqz v14, :cond_a

    .line 896
    move-object v14, v3

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    :goto_4
    move v9, v14

    .line 897
    move-object v14, v3

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :goto_5
    move v10, v14

    .line 898
    move-object v14, v8

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v14, :pswitch_data_0

    .line 950
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown cmd: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 885
    :cond_3
    move v14, v2

    if-nez v14, :cond_2

    .line 886
    move-object v14, v3

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/support/v4/app/BackStackRecord;->setNameOverrides(Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 892
    :cond_4
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    goto :goto_1

    .line 893
    :cond_5
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    goto :goto_2

    .line 896
    :cond_6
    move-object v14, v8

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    goto :goto_4

    .line 897
    :cond_7
    move-object v14, v8

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    goto :goto_5

    .line 900
    :pswitch_0
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 901
    move-object v14, v11

    move v15, v10

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 902
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 954
    :goto_6
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v8, v14

    .line 955
    goto :goto_3

    .line 906
    :pswitch_1
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 907
    move-object v14, v11

    if-eqz v14, :cond_8

    .line 908
    move-object v14, v11

    move v15, v10

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 909
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 912
    :cond_8
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v14, :cond_9

    .line 913
    const/4 v14, 0x0

    move v12, v14

    :goto_7
    move v14, v12

    move-object v15, v8

    iget-object v15, v15, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 914
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v15, v12

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/app/Fragment;

    move-object v13, v14

    .line 915
    move-object v14, v13

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 916
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v13

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 913
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 919
    :cond_9
    goto :goto_6

    .line 921
    :pswitch_2
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 922
    move-object v14, v11

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 923
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 924
    goto :goto_6

    .line 926
    :pswitch_3
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 927
    move-object v14, v11

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 928
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    .line 930
    goto :goto_6

    .line 932
    :pswitch_4
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 933
    move-object v14, v11

    move v15, v10

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 934
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    .line 936
    goto/16 :goto_6

    .line 938
    :pswitch_5
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 939
    move-object v14, v11

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 940
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 942
    goto/16 :goto_6

    .line 944
    :pswitch_6
    move-object v14, v8

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v11, v14

    .line 945
    move-object v14, v11

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 946
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v11

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 948
    goto/16 :goto_6

    .line 957
    :cond_a
    move v14, v2

    if-eqz v14, :cond_b

    .line 958
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v15, v15, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move/from16 v16, v7

    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v16

    move/from16 v17, v6

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 960
    const/4 v14, 0x0

    move-object v3, v14

    .line 963
    :cond_b
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v14, :cond_c

    .line 964
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v1

    iget v15, v15, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 965
    move-object v14, v1

    const/4 v15, -0x1

    iput v15, v14, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 967
    :cond_c
    move-object v14, v3

    move-object v1, v14

    return-object v1

    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 455
    move-object v3, v2

    const/4 v4, 0x3

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 456
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 457
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 459
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 7

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 10

    .prologue
    .line 445
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v1

    if-nez v4, :cond_0

    .line 446
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Must use non-zero containerViewId"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 449
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 450
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 639
    move-object/from16 v1, p0

    sget-boolean v14, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Run: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 641
    :cond_0
    move-object v14, v1

    iget-boolean v14, v14, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v14, :cond_1

    .line 642
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v14, :cond_1

    .line 643
    new-instance v14, Ljava/lang/IllegalStateException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const-string v16, "addToBackStack() called after commit()"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 647
    :cond_1
    move-object v14, v1

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 649
    const/4 v14, 0x0

    move-object v2, v14

    .line 650
    const/4 v14, 0x0

    move-object v3, v14

    .line 651
    const/4 v14, 0x0

    move-object v4, v14

    .line 652
    sget-boolean v14, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z

    if-eqz v14, :cond_2

    .line 653
    new-instance v14, Landroid/util/SparseArray;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v14

    .line 654
    new-instance v14, Landroid/util/SparseArray;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v14

    .line 656
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v4/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 658
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Landroid/support/v4/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v14

    move-object v2, v14

    .line 661
    :cond_2
    move-object v14, v2

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    :goto_0
    move v5, v14

    .line 662
    move-object v14, v2

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_1
    move v6, v14

    .line 663
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v7, v14

    .line 664
    :goto_2
    move-object v14, v7

    if-eqz v14, :cond_e

    .line 665
    move-object v14, v2

    if-eqz v14, :cond_5

    const/4 v14, 0x0

    :goto_3
    move v8, v14

    .line 666
    move-object v14, v2

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    :goto_4
    move v9, v14

    .line 667
    move-object v14, v7

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v14, :pswitch_data_0

    .line 731
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown cmd: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 661
    :cond_3
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    goto :goto_0

    .line 662
    :cond_4
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    goto :goto_1

    .line 665
    :cond_5
    move-object v14, v7

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    goto :goto_3

    .line 666
    :cond_6
    move-object v14, v7

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    goto :goto_4

    .line 669
    :pswitch_0
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 670
    move-object v14, v10

    move v15, v8

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 671
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 735
    :goto_5
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v7, v14

    .line 736
    goto :goto_2

    .line 674
    :pswitch_1
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 675
    move-object v14, v10

    iget v14, v14, Landroid/support/v4/app/Fragment;->mContainerId:I

    move v11, v14

    .line 676
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v14, :cond_c

    .line 677
    const/4 v14, 0x0

    move v12, v14

    :goto_6
    move v14, v12

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v15, v15, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_c

    .line 678
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v15, v12

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/app/Fragment;

    move-object v13, v14

    .line 679
    sget-boolean v14, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_7

    const-string v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OP_REPLACE: adding="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " old="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 681
    :cond_7
    move-object v14, v13

    iget v14, v14, Landroid/support/v4/app/Fragment;->mContainerId:I

    move v15, v11

    if-ne v14, v15, :cond_8

    .line 682
    move-object v14, v13

    move-object v15, v10

    if-ne v14, v15, :cond_9

    .line 683
    move-object v14, v7

    const/4 v15, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v10, v16

    iput-object v15, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 677
    :cond_8
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 685
    :cond_9
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v14, :cond_a

    .line 686
    move-object v14, v7

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 688
    :cond_a
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 689
    move-object v14, v13

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 690
    move-object v14, v1

    iget-boolean v14, v14, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v14, :cond_b

    .line 691
    move-object v14, v13

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    iget v15, v15, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 692
    sget-boolean v14, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v14, :cond_b

    const-string v14, "FragmentManager"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bump nesting of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v13

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 695
    :cond_b
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v13

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_7

    .line 700
    :cond_c
    move-object v14, v10

    if-eqz v14, :cond_d

    .line 701
    move-object v14, v10

    move v15, v8

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 702
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 704
    :cond_d
    goto/16 :goto_5

    .line 706
    :pswitch_2
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 707
    move-object v14, v10

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 708
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 709
    goto/16 :goto_5

    .line 711
    :pswitch_3
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 712
    move-object v14, v10

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 713
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    .line 714
    goto/16 :goto_5

    .line 716
    :pswitch_4
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 717
    move-object v14, v10

    move v15, v8

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 718
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    .line 719
    goto/16 :goto_5

    .line 721
    :pswitch_5
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 722
    move-object v14, v10

    move v15, v9

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 723
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 724
    goto/16 :goto_5

    .line 726
    :pswitch_6
    move-object v14, v7

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v10, v14

    .line 727
    move-object v14, v10

    move v15, v8

    iput v15, v14, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 728
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v10

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    .line 729
    goto/16 :goto_5

    .line 738
    :cond_e
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v15, v15, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move/from16 v16, v6

    move/from16 v17, v5

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 740
    move-object v14, v1

    iget-boolean v14, v14, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v14, :cond_f

    .line 741
    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 743
    :cond_f
    return-void

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 577
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 578
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 583
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 584
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 565
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 566
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 571
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 572
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 8

    .prologue
    .line 499
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 7

    .prologue
    .line 504
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 505
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 506
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 507
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 508
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 513
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 537
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6

    .prologue
    .line 472
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v2, v3

    .line 473
    move-object v3, v2

    const/4 v4, 0x5

    iput v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 474
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 475
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 477
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 241
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 242
    move-object v2, v1

    const-string v3, "BackStackEntry{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_0

    .line 245
    move-object v2, v1

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 249
    move-object v2, v1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    :cond_1
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
