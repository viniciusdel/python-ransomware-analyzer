.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;,
        Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mController:Landroid/support/v4/app/FragmentController;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 406
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 502
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 830
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 831
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 832
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 833
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 496
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 511
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 512
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 514
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 2330
    return-void
.end method

.method private checkStateLoss()V
    .locals 6

    .prologue
    .line 1488
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v1, :cond_0

    .line 1489
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1492
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1493
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not perform this action inside of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1496
    :cond_1
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    .line 853
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v3, v4

    .line 854
    move-object v4, v3

    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 855
    move-object v4, v3

    const-wide/16 v5, 0xdc

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 856
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 19

    .prologue
    .line 839
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v8, Landroid/view/animation/AnimationSet;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v8

    .line 840
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move v10, v1

    move v11, v2

    move v12, v1

    move v13, v2

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v8

    .line 842
    move-object v8, v6

    sget-object v9, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 843
    move-object v8, v6

    const-wide/16 v9, 0xdc

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 844
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 845
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move v10, v3

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v7, v8

    .line 846
    move-object v8, v7

    sget-object v9, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 847
    move-object v8, v7

    const-wide/16 v9, 0xdc

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 848
    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 849
    move-object v8, v5

    move-object v0, v8

    return-object v0
.end method

.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
    .locals 5

    .prologue
    .line 522
    move-object v0, p0

    move-object v3, v0

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_0

    .line 523
    const/4 v3, 0x1

    move v0, v3

    .line 532
    :goto_0
    return v0

    .line 524
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_2

    .line 525
    move-object v3, v0

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 526
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 527
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    .line 528
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 526
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static reverseTransit(I)I
    .locals 3

    .prologue
    .line 2194
    move v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 2195
    move v2, v0

    sparse-switch v2, :sswitch_data_0

    .line 2206
    :goto_0
    move v2, v1

    move v0, v2

    return v0

    .line 2197
    :sswitch_0
    const/16 v2, 0x2002

    move v1, v2

    .line 2198
    goto :goto_0

    .line 2200
    :sswitch_1
    const/16 v2, 0x1001

    move v1, v2

    .line 2201
    goto :goto_0

    .line 2203
    :sswitch_2
    const/16 v2, 0x1003

    move v1, v2

    goto :goto_0

    .line 2195
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 12

    .prologue
    .line 938
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 942
    const/4 v5, 0x0

    move-object v3, v5

    .line 944
    :try_start_0
    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 945
    const-class v5, Landroid/view/animation/Animation;

    const-string v6, "mListener"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 946
    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 948
    :cond_2
    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    .line 957
    :goto_1
    move-object v5, v2

    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 960
    :cond_3
    goto :goto_0

    .line 949
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 950
    const-string v5, "FragmentManager"

    const-string v6, "No field with the name mListener is found in Animation class"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 953
    goto :goto_1

    .line 951
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 952
    const-string v5, "FragmentManager"

    const-string v6, "Cannot access Animation\'s mListener field"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_1
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 11

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, p1

    const-string v5, "FragmentManager"

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 544
    const-string v5, "FragmentManager"

    const-string v6, "Activity state:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 545
    new-instance v5, Landroid/support/v4/util/LogWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "FragmentManager"

    invoke-direct {v6, v7}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 546
    new-instance v5, Ljava/io/PrintWriter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v3, v5

    .line 547
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v5, :cond_0

    .line 549
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    const-string v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    move-object v5, v1

    throw v5

    .line 550
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 551
    const-string v5, "FragmentManager"

    const-string v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 552
    goto :goto_0

    .line 555
    :cond_0
    move-object v5, v0

    :try_start_1
    const-string v6, "  "

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    goto :goto_0

    .line 556
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 557
    const-string v5, "FragmentManager"

    const-string v6, "Failed dumping state"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 4

    .prologue
    .line 2218
    move v0, p0

    move v1, p1

    const/4 v3, -0x1

    move v2, v3

    .line 2219
    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 2230
    :goto_0
    move v3, v2

    move v0, v3

    return v0

    .line 2221
    :sswitch_0
    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    .line 2222
    goto :goto_0

    .line 2221
    :cond_0
    const/4 v3, 0x2

    goto :goto_1

    .line 2224
    :sswitch_1
    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    :goto_2
    move v2, v3

    .line 2225
    goto :goto_0

    .line 2224
    :cond_1
    const/4 v3, 0x4

    goto :goto_2

    .line 2227
    :sswitch_2
    move v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_3
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_3

    .line 2219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .locals 6

    .prologue
    .line 1645
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1646
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1648
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1649
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1650
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 8

    .prologue
    .line 1312
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1313
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1315
    :cond_0
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1316
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1317
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v3, :cond_4

    .line 1318
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1319
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment already added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1321
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1322
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1323
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1324
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_3

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_3

    .line 1325
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1327
    :cond_3
    move v3, v2

    if-eqz v3, :cond_4

    .line 1328
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 1331
    :cond_4
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 6

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 640
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 642
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 643
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .locals 9

    .prologue
    .line 1525
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 1526
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1527
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 1528
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1530
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 1531
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1532
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1533
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    .line 1539
    :goto_0
    return v0

    .line 1536
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 1537
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding back stack index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1538
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v6, v3

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1539
    move v5, v3

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 1541
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    .line 2025
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Already attached"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2026
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2027
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 2028
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 2029
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1410
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1411
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_5

    .line 1412
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1413
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v4, :cond_5

    .line 1414
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 1415
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1417
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1418
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment already added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1420
    :cond_2
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add from attach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1421
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1422
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1423
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_4

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_4

    .line 1424
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1426
    :cond_4
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move v7, v2

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1429
    :cond_5
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .locals 5

    .prologue
    .line 565
    move-object v0, p0

    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    move-object v0, v1

    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1391
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1392
    :cond_0
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v4, :cond_4

    .line 1393
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1394
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_4

    .line 1396
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1397
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove from detach: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1398
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1400
    :cond_2
    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_3

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_3

    .line 1401
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1403
    :cond_3
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1404
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    move v7, v2

    move v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1407
    :cond_4
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 4

    .prologue
    .line 2041
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2042
    move-object v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2043
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 2086
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2087
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2088
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 2089
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2090
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2087
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2094
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 2169
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2170
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2171
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 2172
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2173
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2174
    const/4 v4, 0x1

    move v0, v4

    .line 2179
    :goto_1
    return v0

    .line 2170
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2179
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 4

    .prologue
    .line 2036
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2037
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2038
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 11

    .prologue
    .line 2108
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v7, 0x0

    move v3, v7

    .line 2109
    const/4 v7, 0x0

    move-object v4, v7

    .line 2110
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 2111
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 2112
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v6, v7

    .line 2113
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 2114
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2115
    const/4 v7, 0x1

    move v3, v7

    .line 2116
    move-object v7, v4

    if-nez v7, :cond_0

    .line 2117
    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 2119
    :cond_0
    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 2111
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2125
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 2126
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 2127
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v6, v7

    .line 2128
    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2129
    :cond_3
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 2126
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2134
    :cond_5
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 2136
    move v7, v3

    move v0, v7

    return v0
.end method

.method public dispatchDestroy()V
    .locals 4

    .prologue
    .line 2077
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2078
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2079
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2080
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2081
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    .line 2082
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    .line 2083
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 4

    .prologue
    .line 2073
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2074
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 5

    .prologue
    .line 2097
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 2098
    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2099
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    move-object v2, v3

    .line 2100
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2101
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    .line 2098
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2105
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 2155
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2156
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2157
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 2158
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2159
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2160
    const/4 v4, 0x1

    move v0, v4

    .line 2165
    :goto_1
    return v0

    .line 2156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2165
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6

    .prologue
    .line 2183
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 2184
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2185
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 2186
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 2187
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2191
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 4

    .prologue
    .line 2056
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2057
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 2140
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 2141
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 2142
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2143
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 2144
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 2145
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2146
    const/4 v5, 0x1

    move v2, v5

    .line 2142
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2151
    :cond_1
    move v5, v2

    move v0, v5

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 4

    .prologue
    .line 2069
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2070
    return-void
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    .line 2051
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2052
    move-object v1, v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2053
    return-void
.end method

.method public dispatchStart()V
    .locals 4

    .prologue
    .line 2046
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2047
    move-object v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2048
    return-void
.end method

.method public dispatchStop()V
    .locals 4

    .prologue
    .line 2063
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2065
    move-object v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2066
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 719
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 722
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 723
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 724
    move v11, v6

    if-lez v11, :cond_1

    .line 725
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Active Fragments in "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    move-object v11, v3

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    move-object v11, v3

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_1

    .line 729
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object v8, v11

    .line 730
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 731
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 732
    move-object v11, v8

    if-eqz v11, :cond_0

    .line 733
    move-object v11, v8

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 728
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 739
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 740
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 741
    move v11, v6

    if-lez v11, :cond_2

    .line 742
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Added Fragments:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const/4 v11, 0x0

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_2

    .line 744
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object v8, v11

    .line 745
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 751
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    .line 752
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 753
    move v11, v6

    if-lez v11, :cond_3

    .line 754
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Fragments Created Menus:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const/4 v11, 0x0

    move v7, v11

    :goto_2
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_3

    .line 756
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/Fragment;

    move-object v8, v11

    .line 757
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 758
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 763
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 764
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 765
    move v11, v6

    if-lez v11, :cond_4

    .line 766
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Back Stack:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const/4 v11, 0x0

    move v7, v11

    :goto_3
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_4

    .line 768
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/BackStackRecord;

    move-object v8, v11

    .line 769
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 770
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v12}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    move-object v11, v8

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 767
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 776
    :cond_4
    move-object v11, v0

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v7, v12

    monitor-enter v11

    .line 777
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_5

    .line 778
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 779
    move v11, v6

    if-lez v11, :cond_5

    .line 780
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Back Stack Indices:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    const/4 v11, 0x0

    move v8, v11

    :goto_4
    move v11, v8

    move v12, v6

    if-ge v11, v12, :cond_5

    .line 782
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/BackStackRecord;

    move-object v9, v11

    .line 783
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 784
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 781
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 789
    :cond_5
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 790
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "mAvailBackStackIndices: "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    :cond_6
    move-object v11, v7

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    .line 796
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v6, v11

    .line 797
    move v11, v6

    if-lez v11, :cond_7

    .line 798
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "Pending Actions:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    const/4 v11, 0x0

    move v7, v11

    :goto_5
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 800
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    move-object v8, v11

    .line 801
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  #"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    move-object v11, v3

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 799
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 793
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v7

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v10

    throw v11

    .line 807
    :cond_7
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "FragmentManager misc state:"

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mHost="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 809
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mContainer="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 810
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_8

    .line 811
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mParent="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 813
    :cond_8
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mCurState="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 814
    move-object v11, v3

    const-string v12, " mStateSaved="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 815
    move-object v11, v3

    const-string v12, " mDestroyed="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 816
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v11, :cond_9

    .line 817
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mNeedMenuInvalidate="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    move-object v11, v3

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 820
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 821
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mNoTransactionsBecause="

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v11, :cond_b

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 825
    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v3

    const-string v12, "  mAvailIndices: "

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    move-object v11, v3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    :cond_b
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 9

    .prologue
    .line 1506
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    if-nez v5, :cond_0

    .line 1507
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1509
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1510
    move-object v5, v0

    :try_start_0
    iget-boolean v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v5, :cond_2

    .line 1511
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Activity has been destroyed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1521
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 1513
    :cond_2
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 1514
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1516
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1517
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1518
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1519
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v5

    .line 1521
    :cond_4
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    return-void
.end method

.method public execPendingActions()Z
    .locals 9

    .prologue
    .line 1584
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v5, :cond_0

    .line 1585
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Recursive entry to executePendingTransactions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1588
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 1589
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Must be called from main thread of process"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1592
    :cond_1
    const/4 v5, 0x0

    move v1, v5

    .line 1597
    :goto_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1598
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1599
    :cond_2
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v5, :cond_9

    .line 1621
    const/4 v5, 0x0

    move v2, v5

    .line 1622
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1623
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 1624
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_3

    .line 1625
    move v5, v2

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 1622
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1602
    :cond_4
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 1603
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v5, v5

    move v6, v2

    if-ge v5, v6, :cond_6

    .line 1604
    :cond_5
    move-object v5, v0

    move v6, v2

    new-array v6, v6, [Ljava/lang/Runnable;

    iput-object v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1606
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 1607
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1608
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1609
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1611
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1612
    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_7

    .line 1613
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1614
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 1612
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1609
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v4

    throw v5

    .line 1616
    :cond_7
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1617
    const/4 v5, 0x1

    move v1, v5

    .line 1618
    goto/16 :goto_0

    .line 1628
    :cond_8
    move v5, v2

    if-nez v5, :cond_9

    .line 1629
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1630
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1633
    :cond_9
    move v5, v1

    move v0, v5

    return v0
.end method

.method public executePendingTransactions()Z
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 1432
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1434
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1435
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1436
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 1437
    move-object v4, v3

    move-object v0, v4

    .line 1450
    :goto_1
    return-object v0

    .line 1434
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1441
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1443
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_2
    move v4, v2

    if-ltz v4, :cond_3

    .line 1444
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1445
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    iget v4, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 1446
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 1443
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1450
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 6

    .prologue
    .line 1454
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 1456
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1457
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1458
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1459
    move-object v4, v3

    move-object v0, v4

    .line 1472
    :goto_1
    return-object v0

    .line 1456
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1463
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    move-object v4, v1

    if-eqz v4, :cond_3

    .line 1465
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_2
    move v4, v2

    if-ltz v4, :cond_3

    .line 1466
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1467
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1468
    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    .line 1465
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1472
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 7

    .prologue
    .line 1476
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 1477
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 1478
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1479
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v3, v5

    if-eqz v4, :cond_0

    .line 1480
    move-object v4, v3

    move-object v0, v4

    .line 1484
    :goto_1
    return-object v0

    .line 1477
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1484
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 8

    .prologue
    .line 1570
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1571
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1572
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1573
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1575
    :cond_0
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Freeing back stack index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1576
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1577
    move-object v4, v2

    monitor-exit v4

    .line 1578
    return-void

    .line 1577
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .locals 4

    .prologue
    .line 634
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-object v0, v2

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 11

    .prologue
    .line 663
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v2

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 664
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 665
    const/4 v5, 0x0

    move-object v0, v5

    .line 676
    :goto_0
    return-object v0

    .line 667
    :cond_0
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 668
    move-object v5, v0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment no longer exists for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 671
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 672
    move-object v5, v4

    if-nez v5, :cond_2

    .line 673
    move-object v5, v0

    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fragment no longer exists for key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 676
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;
    .locals 2

    .prologue
    .line 2327
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1351
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hide: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1352
    :cond_0
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v5, :cond_4

    .line 1353
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1354
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1355
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v5

    move-object v4, v5

    .line 1357
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1358
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1359
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1361
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1364
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1366
    :cond_3
    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1368
    :cond_4
    return-void
.end method

.method public isDestroyed()Z
    .locals 2

    .prologue
    .line 699
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    move v0, v1

    return v0
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 12

    .prologue
    .line 861
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v1

    iget v10, v10, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v5, v7

    .line 863
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 864
    move-object v7, v5

    move-object v0, v7

    .line 915
    :goto_0
    return-object v0

    .line 867
    :cond_0
    move-object v7, v1

    iget v7, v7, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v7, :cond_1

    .line 868
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v6, v7

    .line 869
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 870
    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 874
    :cond_1
    move v7, v2

    if-nez v7, :cond_2

    .line 875
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 878
    :cond_2
    move v7, v2

    move v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v7

    move v6, v7

    .line 879
    move v7, v6

    if-gez v7, :cond_3

    .line 880
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 883
    :cond_3
    move v7, v6

    packed-switch v7, :pswitch_data_0

    .line 898
    move v7, v4

    if-nez v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 899
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result v7

    move v4, v7

    .line 901
    :cond_4
    move v7, v4

    if-nez v7, :cond_5

    .line 902
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 885
    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f900000    # 1.125f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 887
    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f79999a    # 0.975f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 889
    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x3f79999a    # 0.975f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 891
    :pswitch_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f89999a    # 1.075f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 893
    :pswitch_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 895
    :pswitch_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0

    .line 915
    :cond_5
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .locals 7

    .prologue
    .line 1278
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1282
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 1283
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1284
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1286
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1287
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1293
    :goto_1
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocated fragment index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1294
    :cond_3
    goto :goto_0

    .line 1290
    :cond_4
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 1291
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    .line 1297
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1301
    :cond_0
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Freeing fragment index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1302
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1303
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1304
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1306
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1307
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    .line 1308
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->initState()V

    .line 1309
    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 15

    .prologue
    .line 1234
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v8, :cond_0

    move v8, v1

    if-eqz v8, :cond_0

    .line 1235
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "No host"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1238
    :cond_0
    move v8, v4

    if-nez v8, :cond_1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    move v9, v1

    if-ne v8, v9, :cond_1

    .line 1264
    :goto_0
    return-void

    .line 1242
    :cond_1
    move-object v8, v0

    move v9, v1

    iput v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1243
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 1244
    const/4 v8, 0x0

    move v5, v8

    .line 1245
    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1246
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v7, v8

    .line 1247
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 1248
    move-object v8, v0

    move-object v9, v7

    move v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1249
    move-object v8, v7

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v8, :cond_2

    .line 1250
    move v8, v5

    move-object v9, v7

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v9}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v9

    or-int/2addr v8, v9

    move v5, v8

    .line 1245
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1255
    :cond_3
    move v8, v5

    if-nez v8, :cond_4

    .line 1256
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1259
    :cond_4
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    .line 1260
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1261
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1264
    :cond_5
    goto :goto_0
.end method

.method moveToState(IZ)V
    .locals 8

    .prologue
    .line 1230
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1231
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    .line 1226
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1227
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 17

    .prologue
    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v9, :cond_0

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v9, :cond_1

    :cond_0
    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 966
    const/4 v9, 0x1

    move v2, v9

    .line 968
    :cond_1
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v9, :cond_2

    move v9, v2

    move-object v10, v1

    iget v10, v10, Landroid/support/v4/app/Fragment;->mState:I

    if-le v9, v10, :cond_2

    .line 970
    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    move v2, v9

    .line 974
    :cond_2
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v9, :cond_3

    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v10, 0x4

    if-ge v9, v10, :cond_3

    move v9, v2

    const/4 v10, 0x3

    if-le v9, v10, :cond_3

    .line 975
    const/4 v9, 0x3

    move v2, v9

    .line 977
    :cond_3
    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    move v10, v2

    if-ge v9, v10, :cond_1f

    .line 981
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_4

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v9, :cond_4

    .line 1223
    :goto_0
    return-void

    .line 984
    :cond_4
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 989
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 990
    move-object v9, v0

    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 992
    :cond_5
    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 1222
    :cond_6
    :goto_1
    move-object v9, v1

    move v10, v2

    iput v10, v9, Landroid/support/v4/app/Fragment;->mState:I

    .line 1223
    goto :goto_0

    .line 994
    :pswitch_0
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 995
    :cond_7
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v9, :cond_9

    .line 996
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 997
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 999
    move-object v9, v1

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_state"

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1001
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_8

    .line 1002
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_req_state"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 1005
    :cond_8
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:user_visible_hint"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1007
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v9, :cond_9

    .line 1008
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1009
    move v9, v2

    const/4 v10, 0x3

    if-le v9, v10, :cond_9

    .line 1010
    const/4 v9, 0x3

    move v2, v9

    .line 1014
    :cond_9
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1015
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1016
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v10, :cond_a

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    :goto_2
    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1018
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1019
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1020
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v9, :cond_b

    .line 1021
    new-instance v9, Landroid/support/v4/app/SuperNotCalledException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " did not call through to super.onAttach()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1016
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v10

    goto :goto_2

    .line 1024
    :cond_b
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-nez v9, :cond_c

    .line 1025
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 1028
    :cond_c
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v9, :cond_d

    .line 1029
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1031
    :cond_d
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1032
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_f

    .line 1036
    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1038
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_1c

    .line 1039
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1040
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_1b

    .line 1041
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1045
    :goto_3
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v9, :cond_e

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    :cond_e
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1052
    :cond_f
    :goto_4
    :pswitch_1
    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_17

    .line 1053
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_10

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1054
    :cond_10
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v9, :cond_15

    .line 1055
    const/4 v9, 0x0

    move-object v6, v9

    .line 1056
    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v9, :cond_11

    .line 1057
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object v10, v1

    iget v10, v10, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object v6, v9

    .line 1058
    move-object v9, v6

    if-nez v9, :cond_11

    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v9, :cond_11

    .line 1059
    move-object v9, v0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No view found for id 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") for fragment "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1066
    :cond_11
    move-object v9, v1

    move-object v10, v6

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1067
    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v11

    move-object v12, v6

    move-object v13, v1

    iget-object v13, v13, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1069
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_1e

    .line 1070
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1071
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_1d

    .line 1072
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    .line 1076
    :goto_5
    move-object v9, v6

    if-eqz v9, :cond_13

    .line 1077
    move-object v9, v0

    move-object v10, v1

    move v11, v3

    const/4 v12, 0x1

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v9

    move-object v7, v9

    .line 1079
    move-object v9, v7

    if-eqz v9, :cond_12

    .line 1080
    move-object v9, v0

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1081
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1083
    :cond_12
    move-object v9, v6

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1085
    :cond_13
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v9, :cond_14

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    :cond_14
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v11, v1

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1092
    :cond_15
    :goto_6
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1093
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_16

    .line 1094
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1096
    :cond_16
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1100
    :cond_17
    :pswitch_2
    move v9, v2

    const/4 v10, 0x3

    if-le v9, v10, :cond_19

    .line 1101
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_18

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto STARTED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1102
    :cond_18
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 1105
    :cond_19
    :pswitch_3
    move v9, v2

    const/4 v10, 0x4

    if-le v9, v10, :cond_6

    .line 1106
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_1a

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveto RESUMED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1107
    :cond_1a
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1108
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performResume()V

    .line 1109
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1110
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 1043
    :cond_1b
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_3

    .line 1048
    :cond_1c
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_4

    .line 1074
    :cond_1d
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_5

    .line 1088
    :cond_1e
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_6

    .line 1113
    :cond_1f
    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    move v10, v2

    if-le v9, v10, :cond_6

    .line 1114
    move-object v9, v1

    iget v9, v9, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_1

    .line 1174
    :cond_20
    :goto_7
    :pswitch_4
    move v9, v2

    const/4 v10, 0x1

    if-ge v9, v10, :cond_6

    .line 1175
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v9, :cond_21

    .line 1176
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v9, :cond_21

    .line 1183
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    move-object v6, v9

    .line 1184
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1185
    move-object v9, v6

    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 1188
    :cond_21
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v9, :cond_2d

    .line 1193
    move-object v9, v1

    move v10, v2

    iput v10, v9, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1194
    const/4 v9, 0x1

    move v2, v9

    goto/16 :goto_1

    .line 1116
    :pswitch_5
    move v9, v2

    const/4 v10, 0x5

    if-ge v9, v10, :cond_23

    .line 1117
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_22

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom RESUMED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1118
    :cond_22
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performPause()V

    .line 1119
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1122
    :cond_23
    :pswitch_6
    move v9, v2

    const/4 v10, 0x4

    if-ge v9, v10, :cond_25

    .line 1123
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_24

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom STARTED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1124
    :cond_24
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 1127
    :cond_25
    :pswitch_7
    move v9, v2

    const/4 v10, 0x3

    if-ge v9, v10, :cond_27

    .line 1128
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_26

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom STOPPED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1129
    :cond_26
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 1132
    :cond_27
    :pswitch_8
    move v9, v2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_20

    .line 1133
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_28

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1134
    :cond_28
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_29

    .line 1137
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z

    move-result v9

    if-eqz v9, :cond_29

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v9, :cond_29

    .line 1138
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1141
    :cond_29
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 1142
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_2c

    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v9, :cond_2c

    .line 1143
    const/4 v9, 0x0

    move-object v6, v9

    .line 1144
    move-object v9, v0

    iget v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v9, :cond_2a

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v9, :cond_2a

    .line 1145
    move-object v9, v0

    move-object v10, v1

    move v11, v3

    const/4 v12, 0x0

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v9

    move-object v6, v9

    .line 1148
    :cond_2a
    move-object v9, v6

    if-eqz v9, :cond_2b

    .line 1149
    move-object v9, v1

    move-object v7, v9

    .line 1150
    move-object v9, v1

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1151
    move-object v9, v1

    move v10, v2

    iput v10, v9, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 1152
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v8, v9

    .line 1153
    move-object v9, v6

    new-instance v10, Landroid/support/v4/app/FragmentManagerImpl$5;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v8

    move-object v14, v6

    move-object v15, v7

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1165
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1167
    :cond_2b
    move-object v9, v1

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1169
    :cond_2c
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1170
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1171
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_7

    .line 1196
    :cond_2d
    sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_2e

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "movefrom CREATED: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1197
    :cond_2e
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v9, :cond_2f

    .line 1198
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->performDestroy()V

    .line 1201
    :cond_2f
    move-object v9, v1

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1202
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1203
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v9, :cond_30

    .line 1204
    new-instance v9, Landroid/support/v4/app/SuperNotCalledException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " did not call through to super.onDetach()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1207
    :cond_30
    move v9, v5

    if-nez v9, :cond_6

    .line 1208
    move-object v9, v1

    iget-boolean v9, v9, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v9, :cond_31

    .line 1209
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_1

    .line 1211
    :cond_31
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1212
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 1213
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1214
    move-object v9, v1

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto/16 :goto_1

    .line 992
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1114
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 3

    .prologue
    .line 2032
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2033
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 18

    .prologue
    .line 2235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v11, "fragment"

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2236
    const/4 v11, 0x0

    move-object v0, v11

    .line 2323
    :goto_0
    return-object v0

    .line 2239
    :cond_0
    move-object v11, v4

    const/4 v12, 0x0

    const-string v13, "class"

    invoke-interface {v11, v12, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 2240
    move-object v11, v3

    move-object v12, v4

    sget-object v13, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v6, v11

    .line 2241
    move-object v11, v5

    if-nez v11, :cond_1

    .line 2242
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 2244
    :cond_1
    move-object v11, v6

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move v7, v11

    .line 2245
    move-object v11, v6

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 2246
    move-object v11, v6

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 2248
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object v12, v5

    invoke-static {v11, v12}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 2251
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 2254
    :cond_2
    move-object v11, v1

    if-eqz v11, :cond_3

    move-object v11, v1

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    :goto_1
    move v9, v11

    .line 2255
    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    move v11, v7

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    move-object v11, v8

    if-nez v11, :cond_4

    .line 2256
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2254
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 2263
    :cond_4
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v11

    :goto_2
    move-object v10, v11

    .line 2264
    move-object v11, v10

    if-nez v11, :cond_5

    move-object v11, v8

    if-eqz v11, :cond_5

    .line 2265
    move-object v11, v0

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 2267
    :cond_5
    move-object v11, v10

    if-nez v11, :cond_6

    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 2268
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 2271
    :cond_6
    sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreateView: id=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " existing="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2274
    :cond_7
    move-object v11, v10

    if-nez v11, :cond_b

    .line 2275
    move-object v11, v3

    move-object v12, v5

    invoke-static {v11, v12}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v11

    move-object v10, v11

    .line 2276
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 2277
    move-object v11, v10

    move v12, v7

    if-eqz v12, :cond_a

    move v12, v7

    :goto_3
    iput v12, v11, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 2278
    move-object v11, v10

    move v12, v9

    iput v12, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 2279
    move-object v11, v10

    move-object v12, v8

    iput-object v12, v11, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 2280
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2281
    move-object v11, v10

    move-object v12, v0

    iput-object v12, v11, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2282
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iput-object v12, v11, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 2283
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v4

    move-object v14, v10

    iget-object v14, v14, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2284
    move-object v11, v0

    move-object v12, v10

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 2307
    :cond_8
    :goto_4
    move-object v11, v0

    iget v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_d

    move-object v11, v10

    iget-boolean v11, v11, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v11, :cond_d

    .line 2308
    move-object v11, v0

    move-object v12, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2313
    :goto_5
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v11, :cond_e

    .line 2314
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fragment "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " did not create a view."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2263
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 2277
    :cond_a
    move v12, v9

    goto :goto_3

    .line 2286
    :cond_b
    move-object v11, v10

    iget-boolean v11, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v11, :cond_c

    .line 2289
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v4

    invoke-interface {v14}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": Duplicate id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", tag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", or parent id 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v9

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with another fragment for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2296
    :cond_c
    move-object v11, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 2300
    move-object v11, v10

    iget-boolean v11, v11, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v11, :cond_8

    .line 2301
    move-object v11, v10

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v13, v4

    move-object v14, v10

    iget-object v14, v14, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 2310
    :cond_d
    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_5

    .line 2317
    :cond_e
    move v11, v7

    if-eqz v11, :cond_f

    .line 2318
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/view/View;->setId(I)V

    .line 2320
    :cond_f
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_10

    .line 2321
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v12, v8

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2323
    :cond_10
    move-object v11, v10

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .locals 8

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v2, :cond_1

    .line 920
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v2, :cond_0

    .line 922
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 928
    :goto_0
    return-void

    .line 925
    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 926
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 928
    :cond_1
    goto :goto_0
.end method

.method public popBackStack()V
    .locals 6

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 580
    return-void
.end method

.method public popBackStack(II)V
    .locals 10

    .prologue
    .line 607
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-gez v3, :cond_0

    .line 608
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_0
    move-object v3, v0

    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$4;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 615
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 596
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 6

    .prologue
    .line 584
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 585
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    move-result v1

    .line 586
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 9

    .prologue
    .line 619
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 620
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    move-result v3

    .line 621
    move v3, v1

    if-gez v3, :cond_0

    .line 622
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    .line 600
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 601
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    move-result v3

    .line 602
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v5, v1

    const/4 v6, -0x1

    move v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 18

    .prologue
    .line 1654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v12, :cond_0

    .line 1655
    const/4 v12, 0x0

    move v0, v12

    .line 1723
    :goto_0
    return v0

    .line 1657
    :cond_0
    move-object v12, v2

    if-nez v12, :cond_2

    move v12, v3

    if-gez v12, :cond_2

    move v12, v4

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_2

    .line 1658
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v5, v12

    .line 1659
    move v12, v5

    if-gez v12, :cond_1

    .line 1660
    const/4 v12, 0x0

    move v0, v12

    goto :goto_0

    .line 1662
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/BackStackRecord;

    move-object v6, v12

    .line 1663
    new-instance v12, Landroid/util/SparseArray;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object v7, v12

    .line 1664
    new-instance v12, Landroid/util/SparseArray;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v12

    .line 1665
    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1666
    move-object v12, v6

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v12 .. v16}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v12

    .line 1667
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1723
    :goto_1
    const/4 v12, 0x1

    move v0, v12

    goto :goto_0

    .line 1669
    :cond_2
    const/4 v12, -0x1

    move v5, v12

    .line 1670
    move-object v12, v2

    if-nez v12, :cond_3

    move v12, v3

    if-ltz v12, :cond_a

    .line 1673
    :cond_3
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v5, v12

    .line 1674
    :goto_2
    move v12, v5

    if-ltz v12, :cond_4

    .line 1675
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/BackStackRecord;

    move-object v6, v12

    .line 1676
    move-object v12, v2

    if-eqz v12, :cond_5

    move-object v12, v2

    move-object v13, v6

    invoke-virtual {v13}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1684
    :cond_4
    :goto_3
    move v12, v5

    if-gez v12, :cond_7

    .line 1685
    const/4 v12, 0x0

    move v0, v12

    goto/16 :goto_0

    .line 1679
    :cond_5
    move v12, v3

    if-ltz v12, :cond_6

    move v12, v3

    move-object v13, v6

    iget v13, v13, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne v12, v13, :cond_6

    .line 1680
    goto :goto_3

    .line 1682
    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 1683
    goto :goto_2

    .line 1687
    :cond_7
    move v12, v4

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_a

    .line 1688
    add-int/lit8 v5, v5, -0x1

    .line 1690
    :goto_4
    move v12, v5

    if-ltz v12, :cond_a

    .line 1691
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/BackStackRecord;

    move-object v6, v12

    .line 1692
    move-object v12, v2

    if-eqz v12, :cond_8

    move-object v12, v2

    move-object v13, v6

    invoke-virtual {v13}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    move v12, v3

    if-ltz v12, :cond_a

    move v12, v3

    move-object v13, v6

    iget v13, v13, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne v12, v13, :cond_a

    .line 1694
    :cond_9
    add-int/lit8 v5, v5, -0x1

    .line 1695
    goto :goto_4

    .line 1701
    :cond_a
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_b

    .line 1702
    const/4 v12, 0x0

    move v0, v12

    goto/16 :goto_0

    .line 1704
    :cond_b
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 1706
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v7, v12

    :goto_5
    move v12, v7

    move v13, v5

    if-le v12, v13, :cond_c

    .line 1707
    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1706
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 1709
    :cond_c
    move-object v12, v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v7, v12

    .line 1710
    new-instance v12, Landroid/util/SparseArray;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object v8, v12

    .line 1711
    new-instance v12, Landroid/util/SparseArray;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object v9, v12

    .line 1712
    const/4 v12, 0x0

    move v10, v12

    :goto_6
    move v12, v10

    move v13, v7

    if-gt v12, v13, :cond_d

    .line 1713
    move-object v12, v6

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/BackStackRecord;

    move-object v13, v8

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/BackStackRecord;->calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1712
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1715
    :cond_d
    const/4 v12, 0x0

    move-object v10, v12

    .line 1716
    const/4 v12, 0x0

    move v11, v12

    :goto_7
    move v12, v11

    move v13, v7

    if-gt v12, v13, :cond_10

    .line 1717
    sget-boolean v12, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_e

    const-string v12, "FragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Popping back stack state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    move v15, v11

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1718
    :cond_e
    move-object v12, v6

    move v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/app/BackStackRecord;

    move v13, v11

    move v14, v7

    if-ne v13, v14, :cond_f

    const/4 v13, 0x1

    :goto_8
    move-object v14, v10

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v12 .. v16}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(ZLandroid/support/v4/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/BackStackRecord$TransitionState;

    move-result-object v12

    move-object v10, v12

    .line 1716
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1718
    :cond_f
    const/4 v13, 0x0

    goto :goto_8

    .line 1721
    :cond_10
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 10

    .prologue
    .line 654
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    iget v4, v4, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v4, :cond_0

    .line 655
    move-object v4, v0

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not currently in the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 658
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 659
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 12

    .prologue
    .line 1334
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nesting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget v7, v7, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1335
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 1336
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v5, :cond_1

    move v5, v4

    if-eqz v5, :cond_4

    .line 1337
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 1338
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1340
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1341
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1343
    :cond_3
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1344
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1345
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_1
    move v8, v2

    move v9, v3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1348
    :cond_4
    return-void

    .line 1335
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1345
    :cond_6
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 648
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 650
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 4

    .prologue
    .line 1637
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1638
    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1639
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1642
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1913
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v1

    if-nez v8, :cond_0

    .line 2021
    :goto_0
    return-void

    .line 1914
    :cond_0
    move-object v8, v1

    check-cast v8, Landroid/support/v4/app/FragmentManagerState;

    move-object v3, v8

    .line 1915
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-nez v8, :cond_1

    goto :goto_0

    .line 1919
    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_4

    .line 1920
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 1921
    move-object v8, v2

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v5, v8

    .line 1922
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1923
    :cond_2
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v8, v8, v9

    move-object v6, v8

    .line 1924
    move-object v8, v6

    move-object v9, v5

    iput-object v9, v8, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1925
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1926
    move-object v8, v5

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1927
    move-object v8, v5

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1928
    move-object v8, v5

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1929
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1930
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 1931
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1932
    move-object v8, v5

    move-object v9, v6

    iget-object v9, v9, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v10, "android:view_state"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1934
    move-object v8, v5

    move-object v9, v6

    iget-object v9, v9, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1920
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1941
    :cond_4
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1942
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 1943
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1945
    :cond_5
    const/4 v8, 0x0

    move v4, v8

    :goto_2
    move v8, v4

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v9, v9

    if-ge v8, v9, :cond_a

    .line 1946
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 1947
    move-object v8, v5

    if-eqz v8, :cond_7

    .line 1948
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    move-object v6, v8

    .line 1949
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: active #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1950
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1954
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1945
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1956
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1957
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v8, :cond_8

    .line 1958
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1960
    :cond_8
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: avail #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1961
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    move v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_3

    .line 1966
    :cond_a
    move-object v8, v2

    if-eqz v8, :cond_d

    .line 1967
    const/4 v8, 0x0

    move v4, v8

    :goto_4
    move v8, v4

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 1968
    move-object v8, v2

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v5, v8

    .line 1969
    move-object v8, v5

    iget v8, v8, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v8, :cond_b

    .line 1970
    move-object v8, v5

    iget v8, v8, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 1971
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1967
    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1973
    :cond_c
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Re-attaching retained fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " target no longer exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1975
    move-object v8, v5

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_5

    .line 1982
    :cond_d
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v8, :cond_14

    .line 1983
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1984
    const/4 v8, 0x0

    move v4, v8

    :goto_6
    move v8, v4

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v9, v9

    if-ge v8, v9, :cond_11

    .line 1985
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    move v10, v4

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v5, v8

    .line 1986
    move-object v8, v5

    if-nez v8, :cond_e

    .line 1987
    move-object v8, v0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No instantiated fragment for index #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    iget-object v12, v12, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    move v13, v4

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1990
    :cond_e
    move-object v8, v5

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1991
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_f

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: added #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1992
    :cond_f
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1993
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "Already added!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1995
    :cond_10
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1984
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 2002
    :cond_11
    :goto_7
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v8, :cond_16

    .line 2003
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2004
    const/4 v8, 0x0

    move v4, v8

    :goto_8
    move v8, v4

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v9, v9

    if-ge v8, v9, :cond_15

    .line 2005
    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    move v9, v4

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v8

    move-object v5, v8

    .line 2006
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_12

    .line 2007
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2009
    new-instance v8, Landroid/support/v4/util/LogWriter;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "FragmentManager"

    invoke-direct {v9, v10}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 2010
    new-instance v8, Ljava/io/PrintWriter;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v7, v8

    .line 2011
    move-object v8, v5

    const-string v9, "  "

    move-object v10, v7

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2013
    :cond_12
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2014
    move-object v8, v5

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v8, :cond_13

    .line 2015
    move-object v8, v0

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 2004
    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1998
    :cond_14
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 2021
    :cond_15
    :goto_9
    goto/16 :goto_0

    .line 2019
    :cond_16
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto :goto_9
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    move-object v0, p0

    const/4 v4, 0x0

    move-object v1, v4

    .line 1728
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1729
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1730
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    move-object v3, v4

    .line 1731
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v4, :cond_1

    .line 1732
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1733
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 1735
    :cond_0
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1736
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1737
    move-object v4, v3

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    iput v5, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 1738
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retainNonConfig: keeping retained "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1729
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1737
    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    .line 1742
    :cond_3
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    .line 1797
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v7

    .line 1799
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v7, :cond_0

    .line 1809
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1812
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_2

    .line 1813
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    .line 1907
    :goto_0
    return-object v0

    .line 1817
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 1818
    move v7, v1

    new-array v7, v7, [Landroid/support/v4/app/FragmentState;

    move-object v2, v7

    .line 1819
    const/4 v7, 0x0

    move v3, v7

    .line 1820
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_9

    .line 1821
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v5, v7

    .line 1822
    move-object v7, v5

    if-eqz v7, :cond_7

    .line 1823
    move-object v7, v5

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v7, :cond_3

    .line 1824
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget v11, v11, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1829
    :cond_3
    const/4 v7, 0x1

    move v3, v7

    .line 1831
    new-instance v7, Landroid/support/v4/app/FragmentState;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    invoke-direct {v8, v9}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    move-object v6, v7

    .line 1832
    move-object v7, v2

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    .line 1834
    move-object v7, v5

    iget v7, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v7, :cond_8

    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_8

    .line 1835
    move-object v7, v6

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1837
    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_6

    .line 1838
    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v7, :cond_4

    .line 1839
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1843
    :cond_4
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v7, :cond_5

    .line 1844
    move-object v7, v6

    new-instance v8, Landroid/os/Bundle;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1846
    :cond_5
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1848
    move-object v7, v5

    iget v7, v7, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v7, :cond_6

    .line 1849
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1859
    :cond_6
    :goto_2
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    iget-object v9, v9, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1820
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1856
    :cond_8
    move-object v7, v6

    move-object v8, v5

    iget-object v8, v8, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 1864
    :cond_9
    move v7, v3

    if-nez v7, :cond_b

    .line 1865
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "FragmentManager"

    const-string v8, "saveAllState: no fragments!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1866
    :cond_a
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0

    .line 1869
    :cond_b
    const/4 v7, 0x0

    move-object v4, v7

    .line 1870
    const/4 v7, 0x0

    move-object v5, v7

    .line 1873
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v7, :cond_e

    .line 1874
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 1875
    move v7, v1

    if-lez v7, :cond_e

    .line 1876
    move v7, v1

    new-array v7, v7, [I

    move-object v4, v7

    .line 1877
    const/4 v7, 0x0

    move v6, v7

    :goto_3
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_e

    .line 1878
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v9, v7, v8

    .line 1879
    move-object v7, v4

    move v8, v6

    aget v7, v7, v8

    if-gez v7, :cond_c

    .line 1880
    move-object v7, v0

    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: active "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1884
    :cond_c
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1877
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1891
    :cond_e
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v7, :cond_10

    .line 1892
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v7

    .line 1893
    move v7, v1

    if-lez v7, :cond_10

    .line 1894
    move v7, v1

    new-array v7, v7, [Landroid/support/v4/app/BackStackState;

    move-object v5, v7

    .line 1895
    const/4 v7, 0x0

    move v6, v7

    :goto_4
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_10

    .line 1896
    move-object v7, v5

    move v8, v6

    new-instance v9, Landroid/support/v4/app/BackStackState;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v10, v11}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V

    aput-object v9, v7, v8

    .line 1897
    sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1895
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1903
    :cond_10
    new-instance v7, Landroid/support/v4/app/FragmentManagerState;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    move-object v6, v7

    .line 1904
    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 1905
    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 1906
    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    .line 1907
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1762
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 1764
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 1765
    move-object v3, v0

    new-instance v4, Landroid/os/Bundle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1767
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1768
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1769
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    move-object v2, v3

    .line 1770
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1773
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1774
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1776
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v3, :cond_4

    .line 1777
    move-object v3, v2

    if-nez v3, :cond_3

    .line 1778
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1780
    :cond_3
    move-object v3, v2

    const-string v4, "android:view_state"

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1783
    :cond_4
    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v3, :cond_6

    .line 1784
    move-object v3, v2

    if-nez v3, :cond_5

    .line 1785
    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 1788
    :cond_5
    move-object v3, v2

    const-string v4, "android:user_visible_hint"

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1791
    :cond_6
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 9

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v3, :cond_0

    .line 687
    move-object v3, v0

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not currently in the FragmentManager"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 690
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v3, :cond_2

    .line 691
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 692
    move-object v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Landroid/support/v4/app/Fragment$SavedState;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v0, v3

    .line 694
    :goto_1
    return-object v0

    .line 692
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 694
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    .line 1746
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1749
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 1750
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1754
    :goto_1
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1755
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1756
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1757
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1759
    :cond_1
    goto :goto_0

    .line 1752
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .locals 10

    .prologue
    .line 1545
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 1546
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 1547
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1549
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 1550
    move v6, v1

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 1551
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1552
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1566
    :goto_0
    move-object v6, v3

    monitor-exit v6

    .line 1567
    return-void

    .line 1554
    :cond_2
    :goto_1
    move v6, v4

    move v7, v1

    if-ge v6, v7, :cond_5

    .line 1555
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1556
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 1557
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1559
    :cond_3
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding available back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1560
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    move v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1561
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1563
    :cond_5
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding back stack index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1564
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto/16 :goto_0

    .line 1566
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .locals 11

    .prologue
    .line 1371
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1372
    :cond_0
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v5, :cond_4

    .line 1373
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1374
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1375
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v5

    move-object v4, v5

    .line 1377
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1378
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1379
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1381
    :cond_1
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    :cond_2
    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_3

    .line 1384
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1386
    :cond_3
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1388
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 5

    .prologue
    .line 1267
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1269
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1270
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    move-object v2, v3

    .line 1271
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 1272
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 1269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1275
    :cond_2
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 704
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 705
    move-object v2, v1

    const-string v3, "FragmentManager{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    move-object v2, v1

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 707
    move-object v2, v1

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 708
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 709
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 713
    :goto_0
    move-object v2, v1

    const-string v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 714
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 711
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
